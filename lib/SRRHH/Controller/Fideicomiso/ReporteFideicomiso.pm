package SRRHH::Controller::Fideicomiso::ReporteFideicomiso;

use Moose;
use namespace::autoclean;
use utf8;
use Data::Dumper;
use Number::Format;
use Text::Unidecode;
use DateTime;
use Encode qw/encode decode encode_utf8 decode_utf8/;
use LaTeX::Encode;

BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }
=head1 NAME

reportessigefirrhh::Controller::Fideicomiso::ReporteFideicomiso - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub begin : Private {
	my ( $self, $c ) = @_;

    if ( $c->user->administrador eq 'N' ) { 
       $c->detach( '/access_denied' );
    }
}

sub index :Path :Args(0) {
  my ( $self, $c) = @_;  
    
  if ( ! $c->session->{'administrador'} eq 'S' ) { 
    $c->detach( '/access_denied' );
  }  
}

=head2 seleccionar_reporte_mppee

=cut


sub seleccionar_reporte_mppee :Local : FormConfig {
  my ( $self, $c) = @_;  
    
  my $form  = $c->stash->{form};  
  
  my $tipos_personal = $c->model('DB::Tipopersonal')->search( {},); 
  my @tipos_personal;
  while ( my $tipopers = $tipos_personal->next ) {
      push @tipos_personal, { value => $tipopers->id_tipo_personal, label => $tipopers->nombre };
  }
  if ( scalar(@tipos_personal) > 0 ) {
    my $lista_tiposper = $form->get_field({ type => 'Select', name => 'tipopersonal' });
    $lista_tiposper->options( \@tipos_personal );

    if ( $form->submitted_and_valid ) {
      my $anio = $form->param_value('anio');
      my $mes = $form->param_value('mes');
      my $id_tipopersonal = $form->param_value( 'tipopersonal' );
      my $tipo_reporte = $form->param_value('tipo_reporte');
      
      if ( $tipo_reporte == 1) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_detallado/'.$anio.'/'.$mes.'/'.$id_tipopersonal);
      }
      elsif ( $tipo_reporte == 2 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_resumen/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 3 ){
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_nomina/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 4 ){
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_egresados_mensual/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 5 ){
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_incorporados_mensual/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 6 ){
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_fideicomiso_mensual/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      else {
		$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_reporte_mppee/');
		$c->flash->{'error_msg'} = 'Selección de tipo de reporte inválido';    
      }
    } 
  }
  else {
    $c->flash->{'error_msg'} = 'No existen tipos de personal disponibles';    
  }
}

=head2 resumen_fideicomiso_mensual
 resumen del fideicomiso de un tipo de personal activo en un mes determinado 
=cut
sub resumen_fideicomiso_mensual :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;    

  #condicional para los parametros de la subrutina
  if ( $anio && $mes && $id_tipopersonal ) {
	#obtener los id_personal de los trabajadores egresados en el mes y con id_tipo_personal seleccionado
	my @egresados = split( "-", $c->forward( 'egresados_mensual_tipopersonal', [ $anio, $mes, $id_tipopersonal ] ) );
	#obtener los id_personal de los trabajadores incorporados en el mes seleccionado
	my @incorporados = split( "-", $c->forward( 'incorporados_fideicomiso_mensual', [ $anio, $mes ] ) );
	#obtener los trabajadores activos en el mes del tipopersonal seleccionado 
	my $registro_fideicomiso = $c->model('DB::Prestacionesmensuale')->search(
	  { 
		'me.anio' => $anio, 
		'me.mes' => $mes, 
		'me.id_tipo_personal' => $id_tipopersonal,
		'-and' => [
		  'me.id_personal' => { 'NOT IN' => \@egresados }, 
		  'me.id_personal' => { 'NOT IN' => \@incorporados }, 
		]
	  },
	  {
		join => [ 'id_personal' ],
		order_by => [ 'id_personal.cedula' ]
	  }
	  );
	#definir los meses y el tipo de personal  
	my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de resultados
    if ( $registro_fideicomiso  ) {
	  #enviar datos al stash
	  $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'mes' } = $mes;      
      $c->stash->{ 'detalle_fideicomiso' } = [ $registro_fideicomiso->all ];
    }
    else {
	  #enviar datos al stash
	  $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;                 
    }   
  }
  else {
	$c->res->redirect('/fideicomiso/seleccionar_reporte_mppee');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 resumen_incorporados_mensual
 resumen del personal incorporado al fideicomiso en un mes determinado
=cut
sub resumen_incorporados_mensual :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;    

  #condicional para los parametros de la subrutina
  if ( $anio && $mes && $id_tipopersonal ) {
	#definir mes y año anterior
	my $registros_incorporados;
	my $mes_anterior;
	my $anio_anterior;
	if ( $mes == 1 ) {
	  $anio_anterior = $anio - 1;
	  #obtener todos los registros de fideicomisos de fecha anterior
	  my $registros_anteriores = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' => $anio_anterior },
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{
		  'me.id_tipo_personal' => $id_tipopersonal, 
		  'me.anio' => $anio,
		  'me.mes' => $mes, 
		  'me.id_personal' => { 'NOT IN' => $registros_anteriores->get_column('id_personal')->as_query }
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	else {
	  $mes_anterior = $mes - 1;
	  $anio_anterior = $anio -1;
	  #obtener todos los registros de fideicomisos en años anteriores
	  my $registros_anteriores_1 = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' =>  $anio_anterior },
		}
	  );
	  #obtener todos los registros de fideicomisos en años actual y meses anteriores
	  my $registros_anteriores_2 = $c->model('DB::Prestacionesmensuale')->search(
		{		
			'anio' => { '=' =>  $anio },
			'mes' => { '<=' => $mes_anterior }
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{
		  'me.id_tipo_personal' => $id_tipopersonal, 
		  'me.anio' => $anio,
		  'me.mes' => $mes,
		  '-and' => [
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_1->get_column('id_personal')->as_query },
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_2->get_column('id_personal')->as_query }
		  ]
		  
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	#obtener los meses y el tipo de personal
	my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de resultados
    if ( $registros_incorporados ) {
	  $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'mes' } = $mes;      
      $c->stash->{ 'detalle_fideicomiso' } = [ $registros_incorporados->all ];    
    }
    else {
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;       
    }
  }
  else {
    $c->res->redirect('/fideicomiso/seleccionar_reporte_mppee');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}
 
 
 


=head2 seleccionar_reporte_tercer

=cut
sub seleccionar_reporte_tercer :Local : FormConfig {
  my ( $self, $c) = @_;  
    
  my $form  = $c->stash->{form};  
  
  my $tipos_personal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->search( {},); 
  my @tipos_personal;
  while ( my $tipopers = $tipos_personal->next ) {
      push @tipos_personal, { value => $tipopers->id_tipo_personal, label => $tipopers->nombre };
  }
  if ( scalar(@tipos_personal) > 0 ) {
    my $lista_tiposper = $form->get_field({ type => 'Select', name => 'tipopersonal' });
    $lista_tiposper->options( \@tipos_personal );

    if ( $form->submitted_and_valid ) {
      my $anio = $form->param_value('anio');
      my $mes = $form->param_value('mes');
      my $id_tipopersonal = $form->param_value( 'tipopersonal' );
      my $tipo_reporte = $form->param_value('tipo_reporte');
      
      if ( $tipo_reporte == 1) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_detallado_tercer/'.$anio.'/'.$mes.'/'.$id_tipopersonal);
      }
      elsif ( $tipo_reporte == 2 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_resumen_tercer/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
      else {
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_nomina_tercer/'.$anio.'/'.$mes.'/'.$id_tipopersonal);      
      }
    } 
  }
  else {
    $c->flash->{'error_msg'} = 'No existen tipos de personal disponibles';    
  }
}

=head2 reporte_detallado
reporte detallado para mppee
=cut
sub reporte_detallado :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('DB::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      {
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $detalle_fideicomiso = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },  
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'tipopersonal', 'cedula','primer_nombre', 'segundo_nombre', 'primer_apellido', 'segundo_apellido', 'ingresoorganismo', 'fecha_prestaciones', 
                    'fecha_vacaciones', 'fecha_antiguedad', 'fecha_ingreso_apn' ],
#         as => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fechaprestaciones fechavacaciones
#                 fechaantiguedad fechaingresoapn/],
        group_by => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fecha_prestaciones fecha_vacaciones
                    fecha_antiguedad fecha_ingreso_apn/],
        order_by => [qw/cedula /]
      }      
    );
  
    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 

    if ( $detalle_fideicomiso->count == 0 ) {
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;      
    }
    else {
      $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'mes' } = $mes;      
      $c->stash->{ 'detalle_fideicomiso' } = [ $detalle_fideicomiso->all ];      
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 egresados_mensual_tipopersonal
 devuelve en una cadena unida por - el los registros de los egresados de un tipo de personal con fideicomiso en un mes dado
=cut
sub egresados_mensual_tipopersonal :Private {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;  
  #condicional para la existencia de los parametros del procedimiento
  if ( $anio && $mes && $id_tipopersonal ) {
	#definir día inicial y final del mes para la consulta
	my $dia_inicial_mes = DateTime->new(
						  year       => $anio,
						  month      => $mes,
						  day        => 1,
					  );
	my $dia_final_mes = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => $mes
					  );
	#obtener los trabajadores egresados en el mes y con aportes a fideicomiso      
	my $trabajadores_egresados = $c->model('DB::Prestacionesmensuale')->search(
		  { 
			'id_trabajador.fecha_egreso' => {'>=' => $dia_inicial_mes->strftime('%Y-%m-%d') }, 
			'id_trabajador.fecha_egreso' => {'<=' => $dia_final_mes->strftime('%Y-%m-%d') }, 
			'me.anio' => $anio, 
			'me.mes' => $mes, 
			'me.id_tipo_personal' => $id_tipopersonal
		  },
		  {
			join => [qw/ id_trabajador /]   
		  });    
	#condicional para la existencia de los datos
    if ( $trabajadores_egresados ) {
	  my $resultados = join( "-", $trabajadores_egresados->get_column('id_personal')->all );
	  return $resultados;
    }
    else {
	  return 0;
    }   
  }
  else {
    return 0;
  }
}


=head2 resumen_egresados_mensual
reporte detallado del personal egresado y considerado en el calculo de las prestaciones para mppee
=cut
sub resumen_egresados_mensual :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;

  #condicional para la existencia de los parametros del procedimiento
  if ( $anio && $mes && $id_tipopersonal ) {
	#definir día inicial y final del mes para la consulta
	my $dia_inicial_mes = DateTime->new(
						  year       => $anio,
						  month      => $mes,
						  day        => 1,
					  );
	my $dia_final_mes = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => $mes
					  );
	#obtener los trabajadores egresados en el mes y con aportes a fideicomiso
	my $trabajadores_egresados = $c->model('DB::Trabajador')->search(
		  {
			'-and' => [
				'me.fecha_egreso' => {'>=' => $dia_inicial_mes->strftime('%Y-%m-%d') }, 
				'me.fecha_egreso' => {'<=' => $dia_final_mes->strftime('%Y-%m-%d') }, 
			  ],
# 			'trabajadoresprestacionesmensuales.anio' => $anio, 
# 			'trabajadoresprestacionesmensuales.mes' => $mes, 
# 			'trabajadoresprestacionesmensuales.id_tipo_personal' => $id_tipopersonal
			'me.id_tipo_personal' => $id_tipopersonal
		  },
		  {
# 			join => [qw/ trabajadoresprestacionesmensuales /],   
# 			select => [ 'me.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido',  { sum => 'trabajadoresprestacionesmensuales.monto_prestaciones' }, { sum => 'trabajadoresprestacionesmensuales.monto_adicional' } ],
# 			as => [ 'cedula', 'nombre', 'apellido', 'prestaciones', 'adicional' ],
# 			group_by => [ 'me.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido' ],
# 			group_by => [ 'me.id_trabajador' ],
			order_by => [ 'me.cedula' ]
		  });
	#definir los meses y el tipo de personal
    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de los datos
    if ( $trabajadores_egresados ) {
	  $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'mes' } = $mes;      
      $c->stash->{ 'detalle_fideicomiso' } = [ $trabajadores_egresados->all ];
    }
    else {
	  $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;      
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_reporte_mppee');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 resumen_egresados_trimestral
reporte detallado del personal egresado y considerado en el calculo de las prestaciones para mppee en un período trimestral
=cut
sub resumen_egresados_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para la existencia de los parametros
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#declarar las variables de fecha
	my $dia_inicial_mes;
	my $dia_final_mes;
	my $txt_trimestre;
	#manejar las fechas según el trimestre
	if ( $trimestre == 1 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 1,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 3
						);
	  $txt_trimestre = '1er Trimestre'; 
	}
	elsif ( $trimestre == 2 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 4,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 6
						);
	  $txt_trimestre = '2do Trimestre';  
	}
	elsif ( $trimestre == 3 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 7,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 9
						);
	  $txt_trimestre = '3er Trimestre';  
	}
	else {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 10,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 12
						);
	  $txt_trimestre = '4to Trimestre';  
	}
	#obtener los trabajadores egresados en el trimestre
	my $trabajadores_egresados = $c->model('DB::Trabajador')->search(
      { 
		'me.id_tipo_personal' => $id_tipopersonal,
		'-and' => [
		  'me.fecha_egreso' => { '>=' => $dia_inicial_mes->strftime('%Y-%m-%d') }, 
		  'me.fecha_egreso' => { '<=' => $dia_final_mes->strftime('%Y-%m-%d') }, 
		  ],  
      },
    );
	#definir los trimestre  y el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de los datos
    if ( $trabajadores_egresados ) {
	  #llenar los datos en un arreglo y enviarlo al stash	 
	  $c->stash->{ 'anio' } = $anio;
	  $c->stash->{ 'trimestre' } = $txt_trimestre;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'detalle_fideicomiso' } = [ $trabajadores_egresados->all ];
    }
    else {
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'trimestre' } = $txt_trimestre;
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 reporte_detallado_tercer
reporte detallado en pdf para tercerizados
=cut
sub reporte_detallado_tercer :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('SIGEFIRRHH_TERCER::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      {
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );
        
    my $detalle_fideicomiso = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },  
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'tipopersonal', 'cedula','primer_nombre', 'segundo_nombre', 'primer_apellido', 'segundo_apellido', 'ingresoorganismo', 'fecha_prestaciones', 
                    'fecha_vacaciones', 'fecha_antiguedad', 'fecha_ingreso_apn' ],
#         as => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fechaprestaciones fechavacaciones
#                 fechaantiguedad fechaingresoapn/],
        group_by => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fecha_prestaciones fecha_vacaciones
                    fecha_antiguedad fecha_ingreso_apn/],
        order_by => [qw/cedula /]
      }      
    );
  
    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 

    if ( $detalle_fideicomiso->count == 0 ) {
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;      
    }
    else {
      $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'mesesp' } = $meses[( $mes-1 )];
      $c->stash->{ 'mes' } = $mes;      
      $c->stash->{ 'detalle_fideicomiso' } = [ $detalle_fideicomiso->all ];      
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 reporte_detallado_pdf
reporte detallado en pdf para mppee
=cut
sub reporte_detallado_pdf :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('DB::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      {
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $detalle_fideicomiso = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },  
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'tipopersonal', 'cedula','primer_nombre', 'segundo_nombre', 'primer_apellido', 'segundo_apellido', 'ingresoorganismo', 'fecha_prestaciones', 
                    'fecha_vacaciones', 'fecha_antiguedad', 'fecha_ingreso_apn' ],
        as => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fechaprestaciones fechavacaciones
                fechaantiguedad fechaingresoapn/],
        group_by => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fecha_prestaciones fecha_vacaciones
                    fecha_antiguedad fecha_ingreso_apn/],
        order_by => [qw/cedula /]
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $detalle_fideicomiso->count > 0 ) {
      $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'mes' } = $meses[( $mes-1 )];
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'detalle_fideicomiso' } = [ $detalle_fideicomiso->all ];

      my $filename = "Personal_".$tipopersonal."-NOCONSIDERADOS-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ font_size } = 8;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 reporte_detallado_tercer_pdf 
reporte detallado en pdf para los tercerizados 
=cut
sub reporte_detallado_tercer_pdf :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('SIGEFIRRHH_TERCER::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      {
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $detalle_fideicomiso = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },  
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'tipopersonal', 'cedula','primer_nombre', 'segundo_nombre', 'primer_apellido', 'segundo_apellido', 'ingresoorganismo', 'fecha_prestaciones', 
                    'fecha_vacaciones', 'fecha_antiguedad', 'fecha_ingreso_apn' ],
        as => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fechaprestaciones fechavacaciones
                fechaantiguedad fechaingresoapn/],
        group_by => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fecha_prestaciones fecha_vacaciones
                    fecha_antiguedad fecha_ingreso_apn/],
        order_by => [qw/cedula /]
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $detalle_fideicomiso->count > 0 ) {
      $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'mes' } = $meses[( $mes-1 )];
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'detalle_fideicomiso' } = [ $detalle_fideicomiso->all ];

      my $filename = "Personal_".$tipopersonal."-NOCONSIDERADOS-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ font_size } = 8;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 reporte_resumen
reporte resumen para mppee
=cut

sub reporte_resumen :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('DB::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      { 
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],
      } 
    );
#     $c->log->info("Estoy en... " . Dumper( $cedulas_registrados )); 

    my $resumen_fideicomiso = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_fideicomiso->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'mes' } = $mes;
      $c->stash->{ 'tipopersonal' } = $tipopersonal; 
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'resumen_fideicomiso' } = [ $resumen_fideicomiso->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 reporte_resumen_tercer
reporte resumen para los tercerizados 
=cut

sub reporte_resumen_tercer :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('SIGEFIRRHH_TERCER::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      { 
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $resumen_fideicomiso = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_fideicomiso->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'mes' } = $mes;
      $c->stash->{ 'tipopersonal' } = $tipopersonal; 
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'resumen_fideicomiso' } = [ $resumen_fideicomiso->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 reporte_resumen_pdf
reporte resumen en pdf para mppee
=cut
sub reporte_resumen_pdf :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('DB::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      { 
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $resumen_fideicomiso = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_fideicomiso->count > 0 ) {
      $c->stash->{ 'mes' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'tipopersonal' } = $tipopersonal;     
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'resumen_fideicomiso' } = [ $resumen_fideicomiso->all ];

      my $filename = "Conceptos_".$tipopersonal."-NOCONSIDERADOS-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 reporte_resumen_tercer_pdf
reporte resumen en pdf para tercerizados
=cut
sub reporte_resumen_tercer_pdf :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $cedulas_registrados = $c->model('SIGEFIRRHH_TERCER::Trabajador')->search(
      { 
        'me.id_tipo_personal' => $id_tipopersonal, 
        'trabajadoresprestacionesmensuales.anio' => $anio, 
        'trabajadoresprestacionesmensuales.mes' => $mes, 
      }, 
      { 
        join => [qw/id_personal trabajadoresprestacionesmensuales id_tipo_personal/],       
      } 
    );

    my $resumen_fideicomiso = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {
        'cedula' => { 'NOT IN' => $cedulas_registrados->get_column('cedula')->as_query },
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_fideicomiso->count > 0 ) {
      $c->stash->{ 'mes' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'tipopersonal' } = $tipopersonal;     
      $c->stash->{ 'cedulas' } = [ $cedulas_registrados->all ];
      $c->stash->{ 'resumen_fideicomiso' } = [ $resumen_fideicomiso->all ];

      my $filename = "Conceptos_".$tipopersonal."-NOCONSIDERADOS-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 resumen_nomina
resumen de nomina para mppee
=cut
sub resumen_nomina :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $resumen_nomina = $c->model('DB::VRecibosConjunto')->search(
      {        
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_nomina->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;     
      $c->stash->{ 'mes' } = $mes; 
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 resumen_nomina_tercer
resumen de nomina para tercerizados
=cut
sub resumen_nomina_tercer:Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $resumen_nomina = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {        
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_nomina->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'anio' } = $anio;     
      $c->stash->{ 'mes' } = $mes; 
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 resumen_nomina_pdf
resumen nomina en pdf para mppee
=cut
sub resumen_nomina_pdf :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $resumen_nomina = $c->model('DB::VRecibosConjunto')->search(
      {        
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_nomina->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'mes' } = $mes;
      $c->stash->{ 'anio' } = $anio;      
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];

      my $filename = "Nomina_".$tipopersonal."-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 resumen_nomina_tercer_pdf
resumen nomina en pdf para tercerizados
=cut
sub resumen_nomina_tercer_pdf:Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio && $mes && $id_tipopersonal ) {

    my $resumen_nomina = $c->model('SIGEFIRRHH_TERCER::VRecibosConjunto')->search(
      {        
        'mes' => $mes,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );

    my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('SIGEFIRRHH_TERCER::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');

    if ( $resumen_nomina->count > 0 ) {
      $c->stash->{ 'mesesp' } = $meses[($mes-1)];
      $c->stash->{ 'mes' } = $mes;
      $c->stash->{ 'anio' } = $anio;      
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];

      my $filename = "Nomina_".$tipopersonal."-".$meses[($mes-1)]."-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 seleccionar_reporte_mppee_trimestral
seleccionar los parametros para obtener reporte trimestral 
=cut
sub seleccionar_reporte_mppee_trimestral :Local :FormConfig {
  my ( $self, $c) = @_;  

  #obtener el formulario del stash
  my $form  = $c->stash->{form}; 
  #cargar los tipos de personal en el formulario
  my $tipos_personal = $c->model('DB::Tipopersonal')->search( {},); 
  my @tipos_personal;
  while ( my $tipopers = $tipos_personal->next ) {
      push @tipos_personal, { value => $tipopers->id_tipo_personal, label => $tipopers->nombre };
  }
  my $lista_tiposper = $form->get_field({ type => 'Select', name => 'tipopersonal' });
  $lista_tiposper->options( \@tipos_personal );     
  #condicional para el envio de datos del formulario
  if ( $form->submitted_and_valid ) {
	  #obtener los datos del formulario
      my $anio = $form->param_value('anio');
      my $trimestre = $form->param_value('trimestre');
      my $id_tipopersonal = $form->param_value( 'tipopersonal' );
      my $tipo_reporte = $form->param_value('tipo_reporte');
      #condicional para obtener reportes según parametros seleccionados
      if ( $tipo_reporte == 1) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_detallado_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);
      }
      elsif ( $tipo_reporte == 2 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/reporte_resumen_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 3 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_nomina_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 4 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/resumen_egresados_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 5 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/resumen_incorporados_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);      
      }
      elsif ( $tipo_reporte == 6 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/resumen_fideicomiso_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);      
      }
      else {
		$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_reporte_mppee_trimestral/');      
		$c->flash->{error_msg} = "Selección del tipo de reporte inválida.";
      }
  }
}

=head2 resumen_fideicomiso_trimestral
resumen de prestaciones trimestrales por tipo de personal
=cut
sub resumen_fideicomiso_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#enviar datos al stash
	$c->stash->{ 'anio' } = $anio;
	$c->stash->{ 'nro_trimestre' } = $trimestre;      
	$c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
	#obtener el texto del trimestre
	my $txt_trimestre = $c->forward( 'texto_trimestre', [ $trimestre ] );
	#obtener los meses por trimestre
	my @meses = split( "-", $c->forward( 'meses_por_trimestre', [ $trimestre ] )  );
	#obtener los egresados en el trimestre y del tipopersonal seleccionado  egresados_trimestral_tipopersonal
	my @egresados_trimestre = split( "-", $c->forward( 'egresados_trimestral_tipopersonal', [ $anio, $trimestre, $id_tipopersonal] ) );
	#obtener en un arreglo los id_personal de los trabajadores incorporados al fideicomiso en el trimestre
	my @incorporados_trimestre = split( "-", $c->forward( 'incorporados_fideicomiso_trimestral', [ $anio, $trimestre ] ) );
	#obtener los registros del fideicomiso 
	my $prestaciones_trimestre = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.anio' => $anio,         
		'me.id_tipo_personal' => $id_tipopersonal, 
		'me.mes' => { 'IN' => \@meses }, 
		'-and' => [
		  'me.id_personal' => { 'NOT IN' => \@egresados_trimestre },
		  'me.id_personal' => { 'NOT IN' => \@incorporados_trimestre },
		]
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal nacionalidad cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);
	#definir los trimestre  y el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de los datos
    if ( $prestaciones_trimestre ) {
	  #llenar los datos en un arreglo y enviarlo al stash	 
	  $c->stash->{ 'anio' } = $anio;
	  $c->stash->{ 'trimestre' } = $txt_trimestre;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'detalle_fideicomiso' } = [ $prestaciones_trimestre->all ];
    }
    else {
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'trimestre' } = $txt_trimestre;
    } 
  }
  else {
	$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_reporte_mppee_trimestral');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }  
}

=head2 resumen_fideicomiso_trimestral_pdf
resumen de prestaciones trimestrales por tipo de personal en formato pdf
=cut
sub resumen_fideicomiso_trimestral_pdf :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#obtener el texto del trimestre
	my $txt_trimestre = $c->forward( 'texto_trimestre', [ $trimestre ] );
	#obtener los meses por trimestre
	my @meses = split( "-", $c->forward( 'meses_por_trimestre', [ $trimestre ] )  );
	#obtener los egresados en el trimestre y del tipopersonal seleccionado  egresados_trimestral_tipopersonal
	my @egresados_trimestre = split( "-", $c->forward( 'egresados_trimestral_tipopersonal', [ $anio, $trimestre, $id_tipopersonal] ) );
	#obtener los registros del fideicomiso 
	my $prestaciones_trimestre = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.id_personal' => { 'NOT IN' => \@egresados_trimestre },
		'me.anio' => $anio,         
		'me.id_tipo_personal' => $id_tipopersonal, 
		'me.mes' => { 'IN' => \@meses } 
	  },
	  {
		join => [ 'id_personal' ],
# 		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.nombre_completo',{ sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
# 		as => [qw/ personal nacionalidad cedula nombre prestaciones adicional /],
		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal nacionalidad cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);
	#definir los trimestre  y el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');     
	#condicional para la existencia de los datos
    if ( $prestaciones_trimestre ) {
	  #llenar los datos en un arreglo y enviarlo al stash	 
	  my @datos;
	  while ( my $registro = $prestaciones_trimestre->next ){
		#obtener el nombre
		my $nombre_completo = $registro->get_column('primer_nombre').' '.$registro->get_column('segundo_nombre').' '.$registro->get_column('primer_apellido').' '.$registro->get_column('segundo_apellido');
		#asignar los datos a un hash
		my $info = {  
		  'nombre' =>  latex_encode( decode("utf8", $nombre_completo ) ),
		  'cedula' => $registro->get_column('cedula'),
		  'prestaciones' => $registro->get_column('prestaciones'),
		  'adicional' =>   $registro->get_column('adicional'),
		};
		#agregarlo al arreglo
		push @datos, $info;
	  }
	  #enviar datos al stash
	  $c->stash->{ 'datos' } = \@datos;	  
	  $c->stash->{ 'anio' } = $anio;
	  $c->stash->{ 'trimestre' } = $txt_trimestre;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      #llamar a la vista de PDFLatex y configurar para que se descargue
	  my $file = "Fideicomiso-".$txt_trimestre."-".$anio;
	  if ( $c->forward('reportessigefirrhh::View::PDFLatex') ) {
		$c->response->content_type('application/pdf');
		$c->response->header('Content-Disposition', "attachment;filename=$file");
	  }
	  else {
		$c->res->redirect('/fideicomiso/reportefideicomiso/resumen_fideicomiso_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);
		$c->flash->{error_msg} = "No se pudo generar el reporte en formato pdf";
	  }     
    }
    else {
      $c->res->redirect('/fideicomiso/reportefideicomiso/resumen_fideicomiso_trimestral/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal);
	  $c->flash->{error_msg} = "Faltó información para generar el reporte en formato pdf";
    } 
  }
  else {
	$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_reporte_mppee_trimestral');
    $c->flash->{error_msg} = "Faltó información para generar el reporte en formato pdf";
  }  
}

=head2 meses_por_trimestre
devuelve un cadena con los valores de los meses correspondientes al trimestre seleccionado
=cut
sub meses_por_trimestre :Private {
  my ( $self, $c, $trimestre) = @_;
  #manejar las fechas según el trimestre
  my @meses; 
  my $resultado;
  #condicional para el valor del trimestre
  if ( $trimestre == 1 ) {
	#definir día inicial y final del mes para la consulta	
	@meses = ( 1,2,3 );
	$resultado = join ("-", @meses );
	return $resultado;
  }
  elsif ( $trimestre == 2 ) {
	#definir día inicial y final del mes para la consulta	
	@meses = ( 4,5,6 );
	$resultado = join ("-", @meses );
	return $resultado;
  }
  elsif ( $trimestre == 3 ) {
	#definir día inicial y final del mes para la consulta	
	@meses = ( 7,8,9 );
	$resultado = join ("-", @meses );
	return $resultado;
  }
  elsif ( $trimestre == 4 ) {
	#definir día inicial y final del mes para la consulta
	@meses = ( 10,11,12 );
	$resultado = join ("-", @meses );
	return $resultado;
  }
  else {
	return 0;
  }  
}

=head2 texto_trimestre
devuelve un cadena con el nombre del trimestre
=cut
sub texto_trimestre :Private {
  my ( $self, $c, $trimestre) = @_;
  #condicional para el valor del trimestre
  if ( $trimestre == 1 ) {
		
	return '1er Trimestre';
  }
  elsif ( $trimestre == 2 ) {
		
	return '2do Trimestre';
  }
  elsif ( $trimestre == 3 ) {
		
	return '3er Trimestre';
  }
  elsif ( $trimestre == 4 ) {
		
	return '4to Trimestre';
  }
  else {
	return 0;
  }  
}
=head2 egresados_trimestral_tipopersonal
resumen de egresados en el trimestre de un tipo de personal determinado
=cut
sub egresados_trimestral_tipopersonal :Private {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;   
  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#declarar las variables de fecha
	my $dia_inicial_mes;
	my $dia_final_mes;
	my $txt_trimestre;
	my @meses;
	#manejar las fechas según el trimestre
	if ( $trimestre == 1 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 1,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 3
						);  
	  @meses = ( 1,2,3 );
	}
	elsif ( $trimestre == 2 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 4,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 6
						);  
	  @meses = ( 4,5,6 );
	}
	elsif ( $trimestre == 3 ) {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 7,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 9
						);	  
	  @meses = ( 7,8,9 );
	}
	else {
	  #definir día inicial y final del mes para la consulta
	  $dia_inicial_mes = DateTime->new(
							year       => $anio,
							month      => 10,
							day        => 1,
						);
	  $dia_final_mes = DateTime->last_day_of_month(
							year       => $anio,
							month      => 12
						);	  
	  @meses = ( 10,11,12 );
	}
	#obtener los trabajadores egresados en el trimestre
	my $trabajadores_egresados = $c->model('DB::Prestacionesmensuale')->search(
	  { 
		'id_trabajador.fecha_egreso' => { '>=' => $dia_inicial_mes->strftime('%Y-%m-%d') }, 
		'id_trabajador.fecha_egreso' => { '<=' => $dia_final_mes->strftime('%Y-%m-%d') }, 
		'me.anio' => $anio,         
		'me.id_tipo_personal' => $id_tipopersonal, 
		'me.mes' => { 'IN' => \@meses } 
	  },
	  {
		select => [ 'me.id_personal' ],
		join => [qw/ id_trabajador /],
		group_by => [ 'me.id_personal'],        
	  }      
	);
	#condicional para existencia de resultados
	if ( $trabajadores_egresados ) {
	  my $resultados = join( "-", $trabajadores_egresados->get_column('id_personal')->all );
	  return $resultados;
	}
	else {
	  return 0;
	}
  }
  else {
	return 0;
  }  
}


=head2 resumen_incorporados_trimestral
resumen de personal incorporado en el trimestre
=cut
sub resumen_incorporados_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#definir variables
	my $txt_trimestre;
	my @meses_trimestre;
	my $mes_anterior;
	my $anio_anterior;
	#definir los meses de los trimestres
	if ( $trimestre ==  1 ) {
	  $txt_trimestre = '1er Trimestre';  
	  @meses_trimestre = (1,2,3);
	  $mes_anterior = 12;
	  $anio_anterior = $anio - 1;
	}
	elsif ( $trimestre ==  2 ) {
	  $txt_trimestre = '2do Trimestre';  
	  @meses_trimestre = (4,5,6);
	  $mes_anterior = 3;
	  $anio_anterior = $anio;
	}
	elsif ( $trimestre ==  3 ) {
	  $txt_trimestre = '3er Trimestre';  
	  @meses_trimestre = (7,8,9);
	  $mes_anterior = 6;
	  $anio_anterior = $anio;
	}
	else {
	  $txt_trimestre = '4to Trimestre';  
	  @meses_trimestre = (10,11,12);
	  $mes_anterior = 9;
	  $anio_anterior = $anio;
	}
	#obtener todo el personal que existe en fideicomiso antes del trimestre actual
	my $registros_anteriores = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'mes' => { '<=' => $mes_anterior },
		'anio' => { '<=' => $anio_anterior },
	  }
	);
	#obtener los incorporados del trimestre
	my $incorporados_trimestre = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.id_personal' => { 'NOT IN' => $registros_anteriores->get_column('id_personal')->as_query },
		'me.mes' => { 'IN' => \@meses_trimestre },
		'me.id_tipo_personal' => $id_tipopersonal,
		'me.anio' => $anio,
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);  
	#definir los trimestre  y el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de los datos
    if ( $incorporados_trimestre ) {
	  #llenar los datos en un arreglo y enviarlo al stash	 
	  $c->stash->{ 'anio' } = $anio;
	  $c->stash->{ 'trimestre' } = $txt_trimestre;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'detalle_fideicomiso' } = [ $incorporados_trimestre->all ];
    }
    else {
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'trimestre' } = $txt_trimestre;
    } 
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }   
}


=head2 incorporados_fideicomiso
listado de id_personal en forma de string concatenado con guion del personal incorporado al fideicomiso en un mes 
=cut
sub incorporados_fideicomiso :Private {
  my ( $self, $c, $anio, $mes, $id_tipopersonal) = @_;
  
  if ( $anio && $mes && $id_tipopersonal ) {
	#definir mes y año anterior
	my $registros_incorporados;
	my $mes_anterior;
	my $anio_anterior;
	if ( $mes == 1 ) {
	  $anio_anterior = $anio - 1;
	  #obtener todos los registros de fideicomisos de fecha anterior
	  my $registros_anteriores = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' => $anio_anterior },
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{
		  'me.id_tipo_personal' => $id_tipopersonal, 
		  'me.anio' => $anio,
		  'me.mes' => $mes, 
		  'me.id_personal' => { 'NOT IN' => $registros_anteriores->get_column('id_personal')->as_query }
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	else {
	  $mes_anterior = $mes - 1;
	  $anio_anterior = $anio -1;
	  #obtener todos los registros de fideicomisos en años anteriores
	  my $registros_anteriores_1 = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' =>  $anio_anterior },
		}
	  );
	  #obtener todos los registros de fideicomisos en años actual y meses anteriores
	  my $registros_anteriores_2 = $c->model('DB::Prestacionesmensuale')->search(
		{		
			'anio' => { '=' =>  $anio },
			'mes' => { '<=' => $mes_anterior }
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{
		  'me.id_tipo_personal' => $id_tipopersonal, 
		  'me.anio' => $anio,
		  'me.mes' => $mes,
		  '-and' => [
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_1->get_column('id_personal')->as_query },
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_2->get_column('id_personal')->as_query }
		  ]
		  
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	#asignar los id_personal a un arreglo
	my @incorporados = $registros_incorporados->get_column('id_personal')->all;
	#enviar el resultado
	my $resultado = join ("-", @incorporados );
	return $resultado; 
  }	
  else {
	return 0;
  }  
}

=head2 reporte_detallado_trimestral
reporte detallado trimestral para mppee
=cut
sub reporte_detallado_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#obtener las cedulas de los trabajadores no considerados en el fideicomiso (sin calculo de prestaciones)
    my $trabajadores_no_considerados_fideicomiso = $c->model('DB::VPersonalNoConsideradoFideicomiso')->search(
      { 
        'id_tipo_personal' => $id_tipopersonal, 
        'anio' => $anio, 
        'trimestre' => $trimestre, 
      }       
    );
	#obtener los datos de los no considerados en la vista de recibos conjuntos
    my $datos_no_considerados = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'IN' => $trabajadores_no_considerados_fideicomiso->get_column('cedula')->as_query },  
        'trimestre' => $trimestre,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'tipopersonal', 'cedula','primer_nombre', 'segundo_nombre', 'primer_apellido', 'segundo_apellido', 'trimestre', 'ingresoorganismo', 'fecha_prestaciones', 
                    'fecha_vacaciones', 'fecha_antiguedad', 'fecha_ingreso_apn' ],
#         as => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido ingresoorganismo fechaprestaciones fechavacaciones
#                 fechaantiguedad fechaingresoapn/],
        group_by => [qw/tipopersonal cedula primer_nombre segundo_nombre primer_apellido segundo_apellido trimestre ingresoorganismo fecha_prestaciones fecha_vacaciones
                    fecha_antiguedad fecha_ingreso_apn/],
        order_by => [qw/cedula /]
      }      
    );
    #definir el texto del trimestre
    my $tx_trimestre;
    if ( $trimestre == 1 ) {
	  $tx_trimestre = "1ro";
    }
    elsif ( $trimestre == 2 ) {
	  $tx_trimestre = "2do";
    }
    elsif ( $trimestre == 3 ) {
	  $tx_trimestre = "3ro";
    }
    else {
	  $tx_trimestre = "4to";
    }
    #obtener el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#concidiconal según los resultados de las consultas
    if ( $datos_no_considerados->count == 0 ) {
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'anio' } = $anio;      
      $c->stash->{ 'trimestre' } = $tx_trimestre;           
    }
    else {
      $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;  
	  $c->stash->{ 'trimestre' } = $tx_trimestre;
      $c->stash->{ 'detalle_fideicomiso' } = [ $datos_no_considerados->all ];      
    }   
  }
  
}


=head2 reporte_resumen_trimestral_pdf
reporte resumen trimestral en pdf para mppee
=cut
sub reporte_resumen_trimestral_pdf :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para la existencia de los parámetros
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#obtener los registros de los trabajadores no considerados en el trimestre
    my $trabajadores_no_considerados_fideicomiso = $c->model('DB::VPersonalNoConsideradoFideicomiso')->search(
      { 
        'id_tipo_personal' => $id_tipopersonal, 
        'anio' => $anio, 
        'trimestre' => $trimestre, 
      }       
    );
	#obtener el resumen de conceptos de los no considerados
    my $resultados = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'IN' => $trabajadores_no_considerados_fideicomiso->get_column('cedula')->as_query },
        'trimestre' => $trimestre,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );
	#definir el texto del trimestre
    my $tx_trimestre;
    if ( $trimestre == 1 ) {
	  $tx_trimestre = "1ro";
    }
    elsif ( $trimestre == 2 ) {
	  $tx_trimestre = "2do";
    }
    elsif ( $trimestre == 3 ) {
	  $tx_trimestre = "3ro";
    }
    else {
	  $tx_trimestre = "4to";
    }
    #obtener el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');
	#concidiconal para la existencia de resultados
    if ( $resultados ) {    
	  $c->stash->{ 'anio' } = $anio;
      $c->stash->{ 'trimestre' } = $tx_trimestre;    
      $c->stash->{ 'tipopersonal' } = $tipopersonal;           
      $c->stash->{ 'resumen_fideicomiso' } = [ $resultados->all ];

      my $filename = "Conceptos-".$tipopersonal."-NO_CONSIDERADO_FIDEICOMISO-".$tx_trimestre."-Trimestre-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 reporte_resumen_trimestral
reporte resumen trimestral para mppee
=cut
sub reporte_resumen_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para la existencia de los parametros del procedimiento
  if ( $anio && $trimestre && $id_tipopersonal ) {
    #obtener las cedulas de los trabajadores no considerados en el fideicomiso (sin calculo de prestaciones)
    my $trabajadores_no_considerados_fideicomiso = $c->model('DB::VPersonalNoConsideradoFideicomiso')->search(
      { 
        'id_tipo_personal' => $id_tipopersonal, 
        'anio' => $anio, 
        'trimestre' => $trimestre, 
      }       
    );
	#obtener los datos para el reporte
    my $resultados = $c->model('DB::VRecibosConjunto')->search(
      {
        'cedula' => { 'IN' => $trabajadores_no_considerados_fideicomiso->get_column('cedula')->as_query },
        'trimestre' => $trimestre,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => ['tipopersonal', 'codcon', 'descon', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ tipopersonal codcon descon cantidad deduccion asignacion/],                
        group_by => [qw/tipopersonal codcon descon /],
        order_by => [qw/codcon /],
      }      
    );
	#definir el texto del trimestre
    my $tx_trimestre;
    if ( $trimestre == 1 ) {
	  $tx_trimestre = "1ro";
    }
    elsif ( $trimestre == 2 ) {
	  $tx_trimestre = "2do";
    }
    elsif ( $trimestre == 3 ) {
	  $tx_trimestre = "3ro";
    }
    else {
	  $tx_trimestre = "4to";
    }
    #obtener el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');
	#condicional para la existencia de resultados
    if ( $resultados ) {      
      $c->stash->{ 'anio' } = $anio;    
      $c->stash->{ 'trimestre' } = $tx_trimestre;
      $c->stash->{ 'nro_trimestre' } = $trimestre;
      $c->stash->{ 'tipopersonal' } = $tipopersonal; 
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;      
      $c->stash->{ 'resumen_fideicomiso' } = [ $resultados->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 resumen_nomina_trimestral_pdf
resumen nomina en pdf para mppee
=cut
sub resumen_nomina_trimestral_pdf :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;
  
  #condicional para la existencia de datos
  if ( $anio && $trimestre && $id_tipopersonal ) {
    #obtener el resumen de nomina por tipo de personal en un trimestre
    my $resumen_nomina = $c->model('DB::VRecibosConjunto')->search(
      {        
        'trimestre' => $trimestre,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );
	#definir el texto del trimestre
    my $tx_trimestre;
    if ( $trimestre == 1 ) {
	  $tx_trimestre = "1ro";
    }
    elsif ( $trimestre == 2 ) {
	  $tx_trimestre = "2do";
    }
    elsif ( $trimestre == 3 ) {
	  $tx_trimestre = "3ro";
    }
    else {
	  $tx_trimestre = "4to";
    }
    #obtener el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');
	#condicional para la existencia de resultados
    if ( $resumen_nomina ) {      
      $c->stash->{ 'trimestre' } = $tx_trimestre; 
      $c->stash->{ 'nro_trimestre' } = $trimestre;
      $c->stash->{ 'anio' } = $anio;      
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];
      my $filename = "Nomina_".$tipopersonal."-".$tx_trimestre." Trimestre-".$anio;
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {      
      $c->res->redirect('/fideicomiso/reportefideicomiso/');
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}

=head2 resumen_nomina_trimestral
resumen de nomina trimestral para un tipo de personal del  mppee
=cut
sub resumen_nomina_trimestral :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal) = @_;

  #condicional para la existencia de los parametros
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#obtener el resumen de nomina por tipo de personal en un trimestre
    my $resumen_nomina = $c->model('DB::VRecibosConjunto')->search(
      {        
        'trimestre' => $trimestre,
        'anio' => $anio,
        'id_tipo_personal'=> $id_tipopersonal,
      },
      {
        select => [ 'codcon', 'descon', 'tipopersonal', { count => 'cedula' }, { sum => 'deduce'}, { sum => 'asigna'} ], 
        as => [qw/ codcon descon tipopersonal cantidad deduccion asignacion/],                
        group_by => [qw/codcon descon tipopersonal/],
        order_by => [qw/codcon /],
      }      
    );
	#definir el texto del trimestre
    my $tx_trimestre;
    if ( $trimestre == 1 ) {
	  $tx_trimestre = "1ro";
    }
    elsif ( $trimestre == 2 ) {
	  $tx_trimestre = "2do";
    }
    elsif ( $trimestre == 3 ) {
	  $tx_trimestre = "3ro";
    }
    else {
	  $tx_trimestre = "4to";
    }
    #obtener el tipo de personal
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre');
	#condicional para la existencia del resumen de nomina
    if ( $resumen_nomina ) {      
      $c->stash->{ 'anio' } = $anio;     
      $c->stash->{ 'trimestre' } = $tx_trimestre; 
      $c->stash->{ 'nro_trimestre' } = $trimestre;
      $c->stash->{ 'id_tipopersonal' } = $id_tipopersonal;
      $c->stash->{ 'tipopersonal' } = $tipopersonal;      
      $c->stash->{ 'resumen_nomina' } = [ $resumen_nomina->all ];
    }
    else {
      $c->flash->{error_msg} = "No se ha encontrado la información para el reporte, llamar al 0145";
    }   
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
}


=head2 seleccionar_datos_archivo
seleccionar los parametros para obtener un archivo txt con la información
=cut
sub seleccionar_datos_archivo :Local :FormConfig {
  my ( $self, $c) = @_;  

  #obtener el formulario del stash
  my $form  = $c->stash->{form};    
  #condicional para el envio de datos del formulario
  if ( $form->submitted_and_valid ) {
	  #obtener los datos del formulario
      my $anio = $form->param_value('anio');
      my $mes = $form->param_value('mes');
      my $periodo = $form->param_value('periodo');
      my $trimestre = $form->param_value('trimestre');      
      my $tipo_reporte = $form->param_value('tipo_reporte');     
      #condicional para generar el archivo según los parametros
      if ( $tipo_reporte == 1 && $periodo == 1 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/archivo_mensual_aportes/'.$anio.'/'.$mes );
      }
      elsif ( $tipo_reporte == 1 && $periodo == 2 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/archivo_trimestral_aportes/'.$anio.'/'.$trimestre );      
      }
      elsif ( $tipo_reporte == 2 && $periodo == 1 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/archivo_mensual_incorporaciones/'.$anio.'/'.$mes );      
      }
      elsif ( $tipo_reporte == 2 && $periodo == 2 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/archivo_trimestral_incorporaciones/'.$anio.'/'.$trimestre );      
      }
      else {
        $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');      
        $c->flash->{error_msg} = "No se pudo determinar el tipo de archivo txt para generar";
      }
  }
}


=head2 seleccionar_datos_archivo_tipopersonal
seleccionar los parametros para obtener un archivo txt con la información por tipo de personal
=cut
sub seleccionar_datos_archivo_tipopersonal :Local :FormConfig {
  my ( $self, $c) = @_;  

  #obtener el formulario del stash
  my $form  = $c->stash->{form}; 
  #obtener los tipos de personal para el formulario
  my $tipos_personal = $c->model('DB::Tipopersonal')->search( {},); 
  my @tipos_personal;
  while ( my $tipopers = $tipos_personal->next ) {
      push @tipos_personal, { value => $tipopers->id_tipo_personal, label => $tipopers->nombre };
  }
  my $lista_tiposper = $form->get_field({ type => 'Select', name => 'tipopersonal' });
  $lista_tiposper->options( \@tipos_personal );
  #condicional para el envio de datos del formulario
  if ( $form->submitted_and_valid ) {
	  #obtener los datos del formulario
      my $anio = $form->param_value('anio');
      my $mes = $form->param_value('mes');
      my $periodo = $form->param_value('periodo');
      my $trimestre = $form->param_value('trimestre');      
      my $tipo_reporte = $form->param_value('tipo_reporte');
       my $id_tipopersonal = $form->param_value( 'tipopersonal' );
      #condicional para generar el archivo según los parametros
      if ( $tipo_reporte == 1 && $periodo == 1 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/archivo_mensual_aportes_tp/'.$anio.'/'.$mes.'/'.$id_tipopersonal);
      }
      elsif ( $tipo_reporte == 1 && $periodo == 2 ) {
        $c->res->redirect('/fideicomiso/reportefideicomiso/archivo_trimestral_aportes_tp/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal );      
      }
      elsif ( $tipo_reporte == 2 && $periodo == 1 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/archivo_mensual_incorporaciones_tp/'.$anio.'/'.$mes.'/'.$id_tipopersonal );      
      }
      elsif ( $tipo_reporte == 2 && $periodo == 2 ) {
		$c->res->redirect('/fideicomiso/reportefideicomiso/archivo_trimestral_incorporaciones_tp/'.$anio.'/'.$trimestre.'/'.$id_tipopersonal );      
      }
      else {
        $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');      
        $c->flash->{error_msg} = "No se pudo determinar el tipo de archivo txt para generar";
      }
  }
}

=head2 archivo_mensual_aportes_tp
generar un archivo txt con los aportes de los trabajadores en un mes por tipo de personal
=cut
sub archivo_mensual_aportes_tp :Local {
  my ( $self, $c, $anio, $mes, $id_tipopersonal ) = @_;  
  

  #condicional para los parametros de la subrutina
  if ( $anio && $mes && $id_tipopersonal ) {
	#obtener los id_personal de los trabajadores egresados en el mes y con id_tipo_personal seleccionado
	my @egresados = split( "-", $c->forward( 'egresados_mensual_tipopersonal', [ $anio, $mes, $id_tipopersonal ] ) );
	#obtener los id_personal de los trabajadores incorporados en el mes seleccionado
	my @incorporados = split( "-", $c->forward( 'incorporados_fideicomiso_mensual', [ $anio, $mes ] ) );
	#obtener los trabajadores activos en el mes del tipopersonal seleccionado 
	my $aportes = $c->model('DB::Prestacionesmensuale')->search(
	  { 
		'me.anio' => $anio, 
		'me.mes' => $mes, 
		'me.id_tipo_personal' => $id_tipopersonal,
		'-and' => [
		  'me.id_personal' => { 'NOT IN' => \@egresados }, 
		  'me.id_personal' => { 'NOT IN' => \@incorporados }, 
		]
	  },
	  {
		join => [ 'id_personal' ],
		order_by => [ 'id_personal.cedula' ]
	  }
	  );
	#definir los meses y el tipo de personal  
	my @meses = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto','Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
    my $tipopersonal = $c->model('DB::Tipopersonal')->find( { id_tipo_personal => $id_tipopersonal } )->get_column('nombre'); 
	#condicional para la existencia de aportantes
	if ( $aportes ) {
	  #definir arreglo para el archivo txt
	  my @plano;
	  my $nro_fideicomiso = '30593';
	  my $tipo_operacion = 'A';
	  my $codigo_transaccion = '100';
	  my $monto_total;
	  #definir un formato para los montos del archivo
	  my $formato_monto = new Number::Format( 
		  THOUSANDS_SEP => '.', 
		  DECIMAL_POINT => ',', 
		  DECIMAL_DIGITS => 2, 
		  DECIMAL_FILL => 1
	  );
	  #llenar el arreglo con las cadenas
	  while( my $aporte = $aportes->next ){
		my $nacionalidad = $aporte->id_personal->nacionalidad;
		my $cedula = $aporte->id_personal->cedula;
		#darle formato al valor númerico de las sumas de los montos de aportes y adicional
		my $monto_formateado = $formato_monto->format_number($aporte->monto_prestaciones + $aporte->monto_adicional);
		$monto_formateado =~ s/\.//g;
		$monto_formateado =~ s/,//g;
		my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).$codigo_transaccion.$tipo_operacion.sprintf("%13s", $monto_formateado);
		push @plano, $fila;
	  }
	  push @plano, $monto_total;
	  #enviar al stash    
	  $c->stash->{ datos } = \@plano;
	  $c->stash->{ wrapper } = 'layouttexto';
	  $c->response->content_type('text/plain; charset=utf-8');
	  $c->res->header( 'Content-Disposition' => "attachment;filename=Aportes-".$mes."-".$anio.".txt" );
	}
	else {
	  $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo/seleccionar_datos_archivo_tipopersonal');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
	}  
  }
  else {
	$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo_tipopersonal');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }
  
}

=head2 archivo_mensual_aportes
generar un archivo txt con los aportes de los trabajadores en un mes
=cut

sub archivo_mensual_aportes :Local {
  my ( $self, $c, $anio, $mes ) = @_;  

  #condicional para la existencia de los parametros
  if ( $mes && $anio ) {
	#definir día inicial y final del mes para la consulta
	my $dia_inicial_mes = DateTime->new(
						  year       => $anio,
						  month      => $mes,
						  day        => 1,
					  );
	my $dia_final_mes = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => $mes
					  );
	#obtener el mes anterior
	my $mes_anterior;
	my $anio_anterior;
	if ( $mes == 1 ) {
	  $mes_anterior = 12;
	  $anio_anterior = $anio - 1;
	}
	else {
	  $mes_anterior = $mes - 1;
	  $anio_anterior = $anio;
	}
	#trabajadores egresados en el mes con prestaciones calculadas
	my $trabajadores_egresados = $c->model('DB::Prestacionesmensuale')->search(
      { 
        'id_trabajador.fecha_egreso' => {'>=' => $dia_inicial_mes->strftime('%Y-%m-%d') }, 
        'id_trabajador.fecha_egreso' => {'<=' => $dia_final_mes->strftime('%Y-%m-%d') }, 
        'me.anio' => $anio, 
        'me.mes' => $mes, 
      },
      {
		join => [ 'id_trabajador' ],   
		order_by => [ 'id_trabajador.cedula' ]
      }      
    );    
    #obtener los id_personal incorporados en el mes 
	my @incorporados_mes = split( "-", $c->forward( 'incorporados_fideicomiso_mensual', [ $anio, $mes ] ) );
	#obtener todos los registros de trabajadores del mes anterior y buscar los que coincidan en el mes solicitado
	my $aportantes_mes_anterior = $c->model('DB::Prestacionesmensuale')->search({
																	mes => $mes_anterior,
																	anio => $anio_anterior,
											});
	#obtener todos los registros de trabajadores del mes anterior y buscar los que coincidan en el mes solicitado
	my $aportes = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'-and' => [
			'id_personal' => { 'NOT IN' => \@incorporados_mes },
			'id_personal' => { 'IN' => $aportantes_mes_anterior->get_column('id_personal')->as_query },
			'id_personal' => { 'NOT IN' => $trabajadores_egresados->get_column('id_personal')->as_query },
		  ],
		'mes' 			=> $mes,
		'anio' 			=> $anio,
	  });
	#condicional para la existencia de aportantes
	if ( $aportes ) {
	  #definir arreglo para el archivo txt
	  my @plano;
	  my $nro_fideicomiso = '30593';
	  my $tipo_operacion = 'A';
	  my $codigo_transaccion = '100';
	  my $monto_total;
	  #definir un formato para los montos del archivo
	  my $formato_monto = new Number::Format( 
		  THOUSANDS_SEP => '.', 
		  DECIMAL_POINT => ',', 
		  DECIMAL_DIGITS => 2, 
		  DECIMAL_FILL => 1
	  );
	  #llenar el arreglo con las cadenas
	  while( my $aporte = $aportes->next ){
		my $nacionalidad = $aporte->id_personal->nacionalidad;
		my $cedula = $aporte->id_personal->cedula;
		#darle formato al valor númerico de las sumas de los montos de aportes y adicional
		my $monto_formateado = $formato_monto->format_number($aporte->monto_prestaciones + $aporte->monto_adicional);
		$monto_formateado =~ s/\.//g;
		$monto_formateado =~ s/,//g;
		my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).$codigo_transaccion.$tipo_operacion.sprintf("%13s", $monto_formateado);
		push @plano, $fila;
	  }
	  push @plano, $monto_total;
	  #enviar al stash    
	  $c->stash->{ datos } = \@plano;
	  $c->stash->{ wrapper } = 'layouttexto';
	  $c->response->content_type('text/plain; charset=utf-8');
	  $c->res->header( 'Content-Disposition' => "attachment;filename=Aportes-".$mes."-".$anio.".txt" );
	}
	else {
	  $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
	}
  }
  else {
	$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	$c->flash->{error_msg} = "No se obtuvo información con los parámetros ingresados.";
  }
}

=head2 archivo_trimestral_aportes_tp
generar un archivo txt con los aportes de los trabajadores en un trimestre por tipo de personal
=cut

sub archivo_trimestral_aportes_tp :Local {
  my ( $self, $c, $anio, $trimestre, $id_tipopersonal ) = @_;  
  
  #condicional para los datos recibidos
  if ( $anio && $trimestre && $id_tipopersonal ) {
	#obtener el texto del trimestre
	my $txt_trimestre = $c->forward( 'texto_trimestre', [ $trimestre ] );
	#obtener los meses por trimestre
	my @meses = split( "-", $c->forward( 'meses_por_trimestre', [ $trimestre ] )  );
	#obtener los egresados en el trimestre y del tipopersonal seleccionado  egresados_trimestral_tipopersonal
	my @egresados_trimestre = split( "-", $c->forward( 'egresados_trimestral_tipopersonal', [ $anio, $trimestre, $id_tipopersonal] ) );
	#obtener en un arreglo los id_personal de los trabajadores incorporados al fideicomiso en el trimestre
	my @incorporados_trimestre = split( "-", $c->forward( 'incorporados_fideicomiso_trimestral', [ $anio, $trimestre ] ) );
	#obtener los registros del fideicomiso 
	my $aportantes_trimestral = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.anio' => $anio,         
		'me.id_tipo_personal' => $id_tipopersonal, 
		'me.mes' => { 'IN' => \@meses }, 
		'-and' => [
		  'me.id_personal' => { 'NOT IN' => \@egresados_trimestre },
		  'me.id_personal' => { 'NOT IN' => \@incorporados_trimestre },
		]
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal nacionalidad cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);
	#condicional para la existencia de aportantes
	if ( $aportantes_trimestral ) {
	  #definir arreglo para el archivo txt
		my @plano;
		my $nro_fideicomiso = '30593';
		my $tipo_operacion = 'A';
		my $codigo_transaccion = '100';
		my $monto_total;
		#definir un formato para los montos del archivo
		my $formato_monto = new Number::Format( 
			THOUSANDS_SEP => '.', 
			DECIMAL_POINT => ',', 
			DECIMAL_DIGITS => 2, 
			DECIMAL_FILL => 1
		);
		#llenar el arreglo con las cadenas
		while( my $aporte = $aportantes_trimestral->next ){
		  my $nacionalidad = $aporte->get_column( 'nacionalidad' );
		  my $cedula = $aporte->get_column( 'cedula' );
		  #darle formato al valor númerico de las sumas de los montos de aportes y adicional
		  my $monto_formateado = $formato_monto->format_number( $aporte->get_column( 'prestaciones' ) + $aporte->get_column( 'adicional' ) );		
		  $monto_formateado =~ s/\.//g;
		  $monto_formateado =~ s/,//g;
		  my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).$codigo_transaccion.$tipo_operacion.sprintf("%13s", $monto_formateado);
		  push @plano, $fila;
		}
		push @plano, $monto_total;
		#enviar al stash    
		$c->stash->{ datos } = \@plano;
		$c->stash->{ wrapper } = 'layouttexto';
		$c->response->content_type('text/plain; charset=utf-8');
		$c->res->header( 'Content-Disposition' => "attachment;filename=Aportes-Trimestre-".$trimestre."-".$anio.".txt" );
	}
	else{
	  $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo_tipopersonal');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
	}
  }
  else {
	$c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo_tipopersonal');      
    $c->flash->{error_msg} = "No se pudo determinar el tipo de archivo txt para generar";
  }
}

=head2 archivo_trimestral_aportes
generar un archivo txt con los aportes de los trabajadores en un trimestre
=cut
sub archivo_trimestral_aportes :Local {
  my ( $self, $c, $anio, $trimestre ) = @_;  

  #condicional para la existencia de los parametros
  if ( $trimestre && $anio ) {
	#obtener el mes y año anterior para determinar personal con prestaciones
	my $mes_anterior;
	my $anio_anterior;	
	#definir los meses para el trimestre
	my @meses;
	my $cedulas_primer_mes;
	my $cedulas_segundo_mes;
	my $cedulas_tercer_mes;
	my $dia_inicial_trimestre;
	my $dia_final_trimestre;
	if ( $trimestre ==  1 ) {
	  $dia_inicial_trimestre = DateTime->new(
								  year       => $anio,
								  month      => 1,
								  day        => 1,
							  );
	  $dia_final_trimestre = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => 3
					  );
	  $mes_anterior = 12;
	  $anio_anterior = $anio - 1;
	  @meses = (1,2,3);
	  $cedulas_primer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 1,
																	anio => $anio,
											});
	  $cedulas_segundo_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 2,
																	anio => $anio,
											});
	  $cedulas_tercer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 3,
																	anio => $anio,
											});  
	}
	elsif ( $trimestre ==  2 ) {
	  $dia_inicial_trimestre = DateTime->new(
								  year       => $anio,
								  month      => 4,
								  day        => 1,
							  );
	  $dia_final_trimestre = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => 6
					  );
	  $mes_anterior = 3;
	  $anio_anterior = $anio;
	  @meses = (4,5,6);
	  $cedulas_primer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 4,
																	anio => $anio,
											});
	  $cedulas_segundo_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 5,
																	anio => $anio,
											});
	  $cedulas_tercer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 6,
																	anio => $anio,
											});
	}
	elsif ( $trimestre ==  3 ) {
	  $dia_inicial_trimestre = DateTime->new(
								  year       => $anio,
								  month      => 7,
								  day        => 1,
							  );
	  $dia_final_trimestre = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => 9
					  );
	  $mes_anterior = 6;
	  $anio_anterior = $anio;
	  @meses = (7,8,9);
	  $cedulas_primer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 7,
																	anio => $anio,
											});
	  $cedulas_segundo_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 8,
																	anio => $anio,
											});
	  $cedulas_tercer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 9,
																	anio => $anio,
											});
	}
	else {
	  $dia_inicial_trimestre = DateTime->new(
								  year       => $anio,
								  month      => 10,
								  day        => 1,
							  );
	  $dia_final_trimestre = DateTime->last_day_of_month(
						  year       => $anio,
						  month      => 12
					  );
	  $mes_anterior = 9;
	  $anio_anterior = $anio;
	  @meses = (10,11,12);
	  $cedulas_primer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 10,
																	anio => $anio,
											});
	  $cedulas_segundo_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 11,
																	anio => $anio,
											});
	  $cedulas_tercer_mes = $c->model('DB::Prestacionesmensuale')->search({
																	mes => 12,
																	anio => $anio,
											});
	}
	#obtener todos los registros de trabajadores del mes anterior y buscar los que coincidan en el mes solicitado
	my $aportantes_mes_anterior = $c->model('DB::Prestacionesmensuale')->search({
																	mes => $mes_anterior,
																	anio => $anio_anterior,
											});
	#obtener todos los registros de los egresados en el trimestre que tienen calculadas prestaciones
	my $trabajadores_egresados = $c->model('DB::Prestacionesmensuale')->search(
      { 
        'id_trabajador.fecha_egreso' => { '>=' => $dia_inicial_trimestre->strftime('%Y-%m-%d') }, 
        'id_trabajador.fecha_egreso' => { '<=' => $dia_final_trimestre->strftime('%Y-%m-%d') }, 
        'me.anio' => $anio,                 
        'me.mes' => { 'IN' => \@meses } 
      },
      { 
		select => [ 'me.id_personal' ],
		join => [ 'id_trabajador'], 
		group_by => [ 'me.id_personal' ]
      });      
    #obtener todos los id_personal de los trabajadores incorporados en el trimestres
    my @incorporados_trimestre = split( "-", $c->forward( 'incorporados_fideicomiso_trimestral', [ $anio, $trimestre ] )  );    
	#obtener todos los registros de los trabajadores con aportes en el trimestre y sumar los montos
	my $aportantes_trimestral = $c->model('DB::Prestacionesmensuale')->search({
		mes => { 'IN' => \@meses },
		anio => $anio,
		'-and' => [ 
		  { 'me.id_personal' => { 'NOT IN' => $trabajadores_egresados->get_column('id_personal')->as_query } },
		  { 'me.id_personal' => { 'NOT IN' => \@incorporados_trimestre } },
		]
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.cedula', 'id_personal.nacionalidad' , { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal cedula nacionalidad prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.cedula', 'id_personal.nacionalidad'  ],
		order_by => [ 'id_personal.cedula' ]
	  });
	#condicional para la existencia de aportantes
	if ( $aportantes_trimestral ) {
	  #definir arreglo para el archivo txt
	  my @plano;
	  my $nro_fideicomiso = '30593';
	  my $tipo_operacion = 'A';
	  my $codigo_transaccion = '100';
	  my $monto_total;
	  #definir un formato para los montos del archivo
	  my $formato_monto = new Number::Format( 
		  THOUSANDS_SEP => '.', 
		  DECIMAL_POINT => ',', 
		  DECIMAL_DIGITS => 2, 
		  DECIMAL_FILL => 1
	  );
	  #llenar el arreglo con las cadenas
	  while( my $aporte = $aportantes_trimestral->next ){
		my $nacionalidad = $aporte->get_column( 'nacionalidad' );
		my $cedula = $aporte->get_column( 'cedula' );
		#darle formato al valor númerico de las sumas de los montos de aportes y adicional
		my $monto_formateado = $formato_monto->format_number( $aporte->get_column( 'prestaciones' ) + $aporte->get_column( 'adicional' ) );		
		$monto_formateado =~ s/\.//g;
		$monto_formateado =~ s/,//g;
		my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).$codigo_transaccion.$tipo_operacion.sprintf("%13s", $monto_formateado);
		push @plano, $fila;
	  }
	  push @plano, $monto_total;
	  #enviar al stash    
	  $c->stash->{ datos } = \@plano;
	  $c->stash->{ wrapper } = 'layouttexto';
	  $c->response->content_type('text/plain; charset=utf-8');
	  $c->res->header( 'Content-Disposition' => "attachment;filename=Aportes-Trimestre-".$trimestre."-".$anio.".txt" );
	}
	else {
	  $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
	}
  }
  else {
	 $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	 $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
  }
	
}    

=head2 archivo_mensual_incorporaciones
generar un archivo txt con los trabajadores incorporados en un mes
=cut
sub archivo_mensual_incorporaciones :Local {
  my ( $self, $c, $anio, $mes ) = @_;  

  #condicional para la existencia de los parametros
  if ( $mes && $anio ) {
	#obtener los id_personal incorporados en el mes 
	my @incorporados_mes = split( "-", $c->forward( 'incorporados_fideicomiso_mensual', [ $anio, $mes ] )  );
	#obtener los incorporados del mes
	my $incorporados_mes = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.id_personal' => { 'IN' => \@incorporados_mes },
		'me.mes' => $mes,
		'me.anio' => $anio
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal nacionalidad cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);
	#condicional para la existencia de los datos
    if ( $incorporados_mes ) {    
	  #definir arreglo para el archivo txt
	  my @plano;
	  my $nro_fideicomiso = '30593';
	  my $estado_civil = 'S';  
	  my $monto_total;
	  #definir un formato para los montos del archivo
	  my $formato_monto = new Number::Format( 
		  THOUSANDS_SEP => '.', 
		  DECIMAL_POINT => ',', 
		  DECIMAL_DIGITS => 2, 
		  DECIMAL_FILL => 1
	  );
	  #llenar el arreglo con las cadenas
	  while( my $incorporado = $incorporados_mes->next ){
		my $nacionalidad = $incorporado->get_column( 'nacionalidad' );
		my $cedula = $incorporado->get_column( 'cedula' );
		#darle formato al valor númerico de las sumas de los montos de aportes y adicional
		my $monto_formateado = $formato_monto->format_number( $incorporado->get_column( 'prestaciones' ) + $incorporado->get_column( 'adicional' ));
		$monto_formateado =~ s/\.//g;
		$monto_formateado =~ s/,//g;
		my $primer_nombre = decode("utf8", $incorporado->get_column('primer_nombre'));#decode_utf8( encode_utf8($incorporado->get_column('primer_nombre')) ); 
		my $segundo_nombre = decode("utf8", $incorporado->get_column('segundo_nombre'));#decode_utf8( encode_utf8($incorporado->get_column('segundo_nombre')) ) ;
		my $segundo_apellido = decode("utf8", $incorporado->get_column('segundo_apellido'));#decode_utf8( encode_utf8($incorporado->get_column('segundo_apellido')) ) ;
		my $primer_apellido = decode("utf8", $incorporado->get_column('primer_apellido'));#decode_utf8( encode_utf8($incorporado->get_column('primer_apellido')) ) ;
		my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).sprintf("%-15s", $primer_nombre ).sprintf("%-15s", $segundo_nombre ).sprintf("%-15s", $primer_apellido).sprintf("%-15s", $segundo_apellido ).$estado_civil.sprintf("%39s", $monto_formateado);
		push @plano, $fila;
	  }
	  push @plano, $monto_total;
	  #limpiar de caracteres extraños
	  my @plano_clean = unidecode( @plano );
	  #enviar al stash    
	  $c->stash->{ datos } = \@plano_clean;
	  $c->stash->{ wrapper } = 'layouttexto';
	  $c->response->content_type('text/plain; charset=utf-8');
	  $c->res->header( 'Content-Disposition' => "attachment;filename=Incorporados-Fideicomiso-Mes-".$mes."-".$anio.".txt" );
	}
    else {
      $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
    } 
  }
}

=head2 archivo_trimestral_incorporaciones
generar un archivo txt con los trabajadores incorporados en un trimestre 
=cut
sub archivo_trimestral_incorporaciones :Local {
  my ( $self, $c, $anio, $trimestre ) = @_;

  #condicional para los datos recibidos
  if ( $anio && $trimestre ) {
	#definir variables
	my $txt_trimestre;
	my @meses_trimestre;
	my $mes_anterior;
	my $anio_anterior;
	my @incorporados_trimestre;
	#definir los meses de los trimestres
	if ( $trimestre ==  1 ) {
	  $txt_trimestre = '1er Trimestre';  
	  @meses_trimestre = (1,2,3);
	  $mes_anterior = 12;
	  $anio_anterior = $anio - 1;
	}
	elsif ( $trimestre ==  2 ) {
	  $txt_trimestre = '2do Trimestre';  
	  @meses_trimestre = (4,5,6);
	  $mes_anterior = 3;
	  $anio_anterior = $anio;
	}
	elsif ( $trimestre ==  3 ) {
	  $txt_trimestre = '3er Trimestre';  
	  @meses_trimestre = (7,8,9);
	  $mes_anterior = 6;
	  $anio_anterior = $anio;
	}
	else {
	  $txt_trimestre = '4to Trimestre';  
	  @meses_trimestre = (10,11,12);
	  $mes_anterior = 9;
	  $anio_anterior = $anio;
	}
	#obtener en un arreglo los id_personal de los incorporados en el trimestre correspondiente
	@incorporados_trimestre = split( "-", $c->forward( 'incorporados_fideicomiso_trimestral', [ $anio, $trimestre ] ) );
	#obtener los incorporados del trimestre
	my $incorporados_trimestre = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.anio' => $anio,
		'me.mes' => { 'IN' => \@meses_trimestre },
		'me.id_personal' => { 'IN' => \@incorporados_trimestre }
	  },
	  {
		join => [ 'id_personal' ],
		select => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido', { sum => 'monto_prestaciones' }, { sum => 'monto_adicional'} ],
		as => [qw/ personal nacionalidad cedula primer_nombre primer_apellido segundo_nombre segundo_apellido prestaciones adicional /],
		group_by => [ 'me.id_personal', 'id_personal.nacionalidad', 'id_personal.cedula', 'id_personal.primer_nombre', 'id_personal.primer_apellido', 'id_personal.segundo_nombre', 'id_personal.segundo_apellido' ],
		order_by => [ 'id_personal.cedula' ]
	  }  
	);
	#condicional para la existencia de los datos
    if ( $incorporados_trimestre ) {    
	  #definir arreglo para el archivo txt
	  my @plano;
	  my $nro_fideicomiso = '30593';
	  my $estado_civil = 'S';  
	  my $monto_total;
	  #definir un formato para los montos del archivo
	  my $formato_monto = new Number::Format( 
		  THOUSANDS_SEP => '.', 
		  DECIMAL_POINT => ',', 
		  DECIMAL_DIGITS => 2, 
		  DECIMAL_FILL => 1
	  );
	  #llenar el arreglo con las cadenas
	  while( my $incorporado = $incorporados_trimestre->next ){
		my $nacionalidad = $incorporado->get_column( 'nacionalidad' );
		my $cedula = $incorporado->get_column( 'cedula' );
		#darle formato al valor númerico de las sumas de los montos de aportes y adicional
		my $monto_formateado = $formato_monto->format_number( $incorporado->get_column( 'prestaciones' ) + $incorporado->get_column( 'adicional' ));
		$monto_formateado =~ s/\.//g;
		$monto_formateado =~ s/,//g;
		my $primer_nombre = decode("utf8", $incorporado->get_column('primer_nombre'));#decode_utf8( encode_utf8($incorporado->get_column('primer_nombre')) ); 
		my $segundo_nombre = decode("utf8", $incorporado->get_column('segundo_nombre'));#decode_utf8( encode_utf8($incorporado->get_column('segundo_nombre')) ) ;
		my $segundo_apellido = decode("utf8", $incorporado->get_column('segundo_apellido'));#decode_utf8( encode_utf8($incorporado->get_column('segundo_apellido')) ) ;
		my $primer_apellido = decode("utf8", $incorporado->get_column('primer_apellido'));#decode_utf8( encode_utf8($incorporado->get_column('primer_apellido')) ) ;
		my $fila = $nro_fideicomiso.$nacionalidad.sprintf("%9s", $cedula).sprintf("%-15s", $primer_nombre ).sprintf("%-15s", $segundo_nombre ).sprintf("%-15s", $primer_apellido).sprintf("%-15s", $segundo_apellido ).$estado_civil.sprintf("%39s", $monto_formateado);
		push @plano, $fila;
	  }
	  push @plano, $monto_total;
	  #limpiar de caracteres extraños
	  my @plano_clean = unidecode( @plano );
	  #enviar al stash    
	  $c->stash->{ datos } = \@plano_clean;
	  $c->stash->{ wrapper } = 'layouttexto';
	  $c->response->content_type('text/plain; charset=utf-8');
	  $c->res->header( 'Content-Disposition' => "attachment;filename=Incorporados-Fideicomiso-Trimestre-".$trimestre."-".$anio.".txt" );
	}
    else {
      $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
	  $c->flash->{error_msg} = "No se recibieron los parámetros para generar el archivo txt.";
    } 
  }
  else {
    $c->res->redirect('/fideicomiso/reportefideicomiso/seleccionar_datos_archivo');
    $c->flash->{error_msg} = "Vuelva a seleccionar los datos para el reporte";
  }   
}

=head2 incorporados_fideicomiso_mensual
listado de id_personal en forma de string concatenado con guion del personal incorporado al fideicomiso en un mes 
=cut
sub incorporados_fideicomiso_mensual :Private {
  my ( $self, $c, $anio, $mes ) = @_;
  
  if ( $anio && $mes ) {
	#definir mes y año anterior
	my $registros_incorporados;
	my $mes_anterior;
	my $anio_anterior;
	if ( $mes == 1 ) {
	  $anio_anterior = $anio - 1;
	  #obtener todos los registros de fideicomisos de fecha anterior
	  my $registros_anteriores = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' => $anio_anterior },
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{ 
		  'me.anio' => $anio,
		  'me.mes' => $mes, 
		  'me.id_personal' => { 'NOT IN' => $registros_anteriores->get_column('id_personal')->as_query }
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	else {
	  $mes_anterior = $mes - 1;
	  $anio_anterior = $anio -1;
	  #obtener todos los registros de fideicomisos en años anteriores
	  my $registros_anteriores_1 = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'anio' => { '<=' =>  $anio_anterior },
		}
	  );
	  #obtener todos los registros de fideicomisos en años actual y meses anteriores
	  my $registros_anteriores_2 = $c->model('DB::Prestacionesmensuale')->search(
		{
			'anio' => { '=' =>  $anio },
			'mes' => { '<=' => $mes_anterior }
		}
	  );
	  #obtener los registros de los incorporados en el mes actual 
	  $registros_incorporados = $c->model('DB::Prestacionesmensuale')->search(
		{  
		  'me.anio' => $anio,
		  'me.mes' => $mes,
		  '-and' => [
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_1->get_column('id_personal')->as_query },
			'me.id_personal' => { 'NOT IN' => $registros_anteriores_2->get_column('id_personal')->as_query }
		  ]  
		},
		{
		  join => [ 'id_personal' ],
		  order_by => [ 'id_personal.cedula' ]
		}
	  );
	}
	#asignar los id_personal a un arreglo
	my @incorporados = $registros_incorporados->get_column('id_personal')->all;
	#enviar el resultado
	my $resultado = join ("-", @incorporados );
	return $resultado; 
  }	
  else {
	return 0;
  }  
}


=head2 incorporados_fideicomiso_trimestral
listado de id_personal en forma de string concatenado con guion del personal incorporado al fideicomiso en un trimestre 
=cut
sub incorporados_fideicomiso_trimestral :Private {
  my ( $self, $c, $anio, $trimestre ) = @_;
  
  #condicional para los datos recibidos
  if ( $anio && $trimestre ) {
	#definir variables
	my $txt_trimestre;
	my @meses_trimestre;
	my $mes_anterior;
	my $anio_anterior;
	#definir los meses de los trimestres
	if ( $trimestre ==  1 ) {
	  $txt_trimestre = '1er Trimestre';  
	  @meses_trimestre = (1,2,3);
	  $mes_anterior = 12;
	  $anio_anterior = $anio - 1;
	}
	elsif ( $trimestre ==  2 ) {
	  $txt_trimestre = '2do Trimestre';  
	  @meses_trimestre = (4,5,6);
	  $mes_anterior = 3;
	  $anio_anterior = $anio;
	}
	elsif ( $trimestre ==  3 ) {
	  $txt_trimestre = '3er Trimestre';  
	  @meses_trimestre = (7,8,9);
	  $mes_anterior = 6;
	  $anio_anterior = $anio;
	}
	else {
	  $txt_trimestre = '4to Trimestre';  
	  @meses_trimestre = (10,11,12);
	  $mes_anterior = 9;
	  $anio_anterior = $anio;
	}
	#obtener todo el personal que existe en fideicomiso antes del trimestre actual
	my $registros_anteriores = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'mes' => { '<=' => $mes_anterior },
		'anio' => { '<=' => $anio_anterior },
	  }
	);
	#obtener los incorporados del trimestre
	my $incorporados_trimestre = $c->model('DB::Prestacionesmensuale')->search(
	  {
		'me.id_personal' => { 'NOT IN' => $registros_anteriores->get_column('id_personal')->as_query },
		'me.mes' => { 'IN' => \@meses_trimestre },
		'me.anio' => $anio,
	  } 
	);
	#condicional para la existencia de los datos
    if ( $incorporados_trimestre ) {
	  #obtener en un arreglo todos los valores del campo id_personal
	  my @incorporados = $incorporados_trimestre->get_column('id_personal')->all;
	  #enviar el resultado
	  my $resultado = join ("-", @incorporados );
	  return $resultado;  
	}
    else {
	  return 0; 
    } 
  }
  else {
	return 0; 
  }   
}


=head1 AUTHOR

Elvio Ramon Chavez Gonzalez

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
