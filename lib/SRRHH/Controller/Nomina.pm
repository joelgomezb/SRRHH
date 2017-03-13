package SRRHH::Controller::Nomina;

use Moose;
use namespace::autoclean;
use utf8;
use Data::Dumper;
use Number::Format;
use Text::Unidecode;

BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

reportessigefirrhh::Controller::Nomina - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

sub begin : Private {
	my ( $self, $c ) = @_;

    if ( $c->user->administrador eq 'N' ) { 
       $c->detach( '/access_denied' );
    }
}

=head2 index

=cut
sub index :Path :Args(0) {
  my ( $self, $c) = @_;
      
  if ( $c->user->administrador eq 'N' ) { 
    $c->detach( '/access_denied' );
  }      
}

=head2 seleccionar_nomina

=cut
sub seleccionar_nomina_tercer  :Local : FormConfig {
  my ( $self, $c) = @_;
      
  my $form  = $c->stash->{form};  
}

=head2 seleccionar_nomina

=cut
sub seleccionar_nomina_mppee  :Local :FormConfig {
  my ( $self, $c) = @_;
      
  #obtener el formulario desde el stash
  my $form  = $c->stash->{form};  
  #condicional para el envío de los datos del formulario
  if ( $form->submitted_and_valid ) {
	#obtener los datos del formulario
	my $anio = $form->param_value('anio');
	my $mes = $form->param_value('mes');
	my $cuenta = $form->param_value('nro_cuenta');
	my $fecha = $form->param_value('fecha_pago');
	my $tipo_nomina = $form->param_value('tipo_n');
	my $periodo;
	#condicional para el caso de las nomina ordinaria
	if ( $tipo_nomina == 2 ) { 
	  $periodo = $form->param_value('periodo'); 
	}
	#redirigir según los valores del formulario
	if ( $tipo_nomina == 1 ) {
	  #no hay periodo de pago
	  $c->res->redirect( $c->uri_for('/nomina/listado_principal/'.$anio.'/'.$mes.'/SP/'.$tipo_nomina.'/'.$cuenta.'/'.$fecha) );
	} else {
	  #no hay periodo de pago
	  $c->res->redirect(  $c->uri_for('/nomina/listado_principal/'.$anio.'/'.$mes.'/'.$periodo.'/'.$tipo_nomina.'/'.$cuenta.'/'.$fecha) );
	}
  }   
}

=head2 listado_principal
se obtiene el listado de nóminas según los parámetros seleccionados en el index 
=cut
sub listado_principal :Local :FormConfig {
  my ( $self, $c, $anio, $mes, $periodo, $tipo, $cuenta, $fecha ) = @_;

  my $numfor = new Number::Format(THOUSANDS_SEP => '.', DECIMAL_POINT => ',' , DECIMAL_DIGITS => 2, DECIMAL_FILL => 1);

  my $form  = $c->stash->{form};
  $form->auto_constraint_class( 'constraint_%t' );
   
  $c->stash->{ 'tipo' } = $tipo;
  my $resultado = 1;
  my $nominas;  
  #condicional para el tipo de nomina (ESPECIAL u ORDINARIA)
  if ( $tipo == 1 ) {
	#condicional para el tipo de personal según la cuenta del banco 
	if ( $cuenta eq '01020762210000024206' ) {
	  # obtener las nominas especiales que tengan numero_nomina != 0  y no sean jubilados  
	  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
                                          {
                                            anio => $anio,
                                            mes => $mes,                                            
                                            numero_nomina => { '>' => 0 },  
                                            id_grupo_nomina => { '!=' => 13 },
                                          },
                                          {
                                            select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
                                            as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
                                            group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
                                            order_by => [qw/gruponomina/],
                                            #distinct => 1
                                          }
                                          ); 	
	} elsif ( $cuenta eq '01020762250000015972' ) {
	  # obtener las nominas especiales que tengan numero_nomina != 0  y sean jubilados y pensionados
	  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
						  {
							anio => $anio,
							mes => $mes,                                            
							numero_nomina => { '>' => 0 },
							id_grupo_nomina => { '!=' => 13 },
						  },
						  {
							select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
							as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
							group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
							order_by => [qw/gruponomina/],
							#distinct => 1
						  }
						  ); 
	} elsif ( $cuenta eq '01020762210000024196' ) {
	  # obtener las nominas especiales que tengan numero_nomina != 0  y sean jubilados y pensionados
	  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
						  {
							anio => $anio,
							mes => $mes,                                            
							numero_nomina => { '>' => 0 },
							id_grupo_nomina => 13,
						  },
						  {
							select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
							as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
							group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
							order_by => [qw/gruponomina/],
							#distinct => 1
						  }
						  ); 
	} 
	
	elsif ( $cuenta eq '01020762290000007058' ) {
	  # obtener las nominas especiales que tengan numero_nomina != 0  y sean jubilados y pensionados
	  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
						  {
							anio => $anio,
							mes => $mes,                                            
							numero_nomina => { '>' => 0 },
							id_grupo_nomina => 13,
						  },
						  {
							select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
							as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
							group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
							order_by => [qw/gruponomina/],
							#distinct => 1
						  }
						  ); 
	} else {
	  $resultado = 0;
	}
	
  }
  else {
	#condicional para las quincenas de un tipo de nomina ordinaria
	#1ra quincena
    if ( $periodo == 1 ){
	  #condicional para los jubilados y no jubilados
	  #NO JUBILADOS
	  if ( $cuenta eq '01020762210000024206' ) {
		  # seleccionar las nominas ordinarias (numero_nomina = 0) de la 1ra quincena y de los NO JUBILADOS
		  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
												{
												  anio => $anio,
												  mes => $mes,  
												  semana_quincena => $periodo,
												  numero_nomina => 0,
												  id_grupo_nomina => { '!=' => 13 },
												},
												{
												  select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												  as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												  group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												  order_by => [qw/gruponomina/],
												  #distinct => 1
												}
												);
	  } elsif ( $cuenta eq '01020762250000015972' ) {
		# seleccionar las nominas ordinarias (numero_nomina = 0) de la 1ra quincena y de los JUBILADOS Y PENSIONADOS
		$nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
											  {
												anio => $anio,
												mes => $mes,  
												semana_quincena => $periodo,
												numero_nomina => 0,
												id_grupo_nomina => { '!=' => 13 },
											  },
											  {
												select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												order_by => [qw/gruponomina/],
												#distinct => 1
											  }
											  );	  
	  } elsif ( $cuenta eq '01020762210000024196' ) {
		# seleccionar las nominas ordinarias (numero_nomina = 0) de la 1ra quincena y de los JUBILADOS Y PENSIONADOS
		$nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
											  {
												anio => $anio,
												mes => $mes,  
												semana_quincena => $periodo,
												numero_nomina => 0,
												id_grupo_nomina => 13,
											  },
											  {
												select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												order_by => [qw/gruponomina/],
												#distinct => 1
											  }
											  );	  
	  }
	  
	  #JUBILADOS
	  elsif ( $cuenta eq '01020762290000007058' ) {
		# seleccionar las nominas ordinarias (numero_nomina = 0) de la 1ra quincena y de los JUBILADOS Y PENSIONADOS
		$nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
											  {
												anio => $anio,
												mes => $mes,  
												semana_quincena => $periodo,
												numero_nomina => 0,
												id_grupo_nomina => 13,
											  },
											  {
												select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												order_by => [qw/gruponomina/],
												#distinct => 1
											  }
											  );	  
	  }
	  else {
		$resultado = 0;
	  }
      
	 
    }
    #segunda quincena
    elsif ( $periodo == 2 ) {
	  #NO JUBILADOS
	  if ( $cuenta eq '01020762210000024206' ) {
		# seleccionar las nominas ordinarias (numero_nomina = 0) de la 2da quincena y NO JUBILADOS
		$nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
											  {
												anio => $anio,
												mes => $mes,
												semana_quincena => $periodo,
												numero_nomina => 0,
												id_grupo_nomina => { '!=' => 13 },
											  },
											  {
												select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												order_by => [qw/gruponomina/],
												#distinct => 1
											  }
											  );
	  } elsif ( $cuenta eq '01020762250000015972' ) {
		  # seleccionar las nominas ordinarias (numero_nomina = 0) de la 2da quincena y JUBILADOS-PENSIONADOS
		  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
												{
												  anio => $anio,
												  mes => $mes,
												  semana_quincena => $periodo,
												  numero_nomina => 0,
												  id_grupo_nomina => { '!=' => 13 },
												},
												{
												  select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												  as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												  group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												  order_by => [qw/gruponomina/],
												  #distinct => 1
												}
												);
	  } elsif ( $cuenta eq '01020762210000024196' ) {
		  # seleccionar las nominas ordinarias (numero_nomina = 0) de la 2da quincena y JUBILADOS-PENSIONADOS
		  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
												{
												  anio => $anio,
												  mes => $mes,
												  semana_quincena => $periodo,
												  numero_nomina => 0,
												  id_grupo_nomina =>  13,
												},
												{
												  select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												  as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												  group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												  order_by => [qw/gruponomina/],
												  #distinct => 1
												}
												);
	  }
	  elsif ( $cuenta eq '01020762290000007058' ) {
		  # seleccionar las nominas ordinarias (numero_nomina = 0) de la 2da quincena y JUBILADOS-PENSIONADOS
		  $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
												{
												  anio => $anio,
												  mes => $mes,
												  semana_quincena => $periodo,
												  numero_nomina => 0,
												  id_grupo_nomina =>  13,
												},
												{
												  select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
												  as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
												  group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
												  order_by => [qw/gruponomina/],
												  #distinct => 1
												}
												);
	  }
	  else {
		$resultado = 0;
	  }
    }
    #ni idea
    else {
	  $resultado = 0;
#       $nominas = $c->model('DB::VArchivoPlanoVzlaEne2014')->search(
#                                             {
#                                               anio => $anio,
#                                               mes => $mes,
#                                               numero_nomina => { '>' => 0 }, 
#                                             },
#                                             {
#                                               select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
#                                               as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
#                                               group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
#                                               order_by => [qw/gruponomina/],
#                                               #distinct => 1
#                                             }
#                                             );
    }
  }
  
  if ( $resultado ) {
	my $tabla_nominas = $form->get_all_element({ type => 'SimpleTable', name => 'tabla_nominas'});
	my @filas_nominas;
	my $total_monto;
	$c->stash->{ resultado } = $resultado;
	#agregar las filas al arreglo
	while ( my $nomina = $nominas->next ) {
	  my $fila;
	  $fila = [
		{
		  type => 'Label', name => 'tipo_persona', label => $nomina->gruponomina,            
		},
		{
		  type => 'Label', name => 'grupo_nomina', label => $nomina->nomina_especial,            
		},
		{ 
		  type => 'Label', name => 'monto', value => $numfor->format_number($nomina->get_column('total')),
		  attributes => { class => 'sololectura', disabled => 'disabled' }, container_attributes => { align => 'right' } 
		},      
		{
		  type => 'Checkbox', name => 'check_'.$nomina->numero_nomina.'_'.$nomina->id_grupo_nomina, container_attributes => { align => 'center' }
		}
	  ];
	  my $total_monto += $nomina->get_column('total');
	  push @filas_nominas, $fila;
	} 
	my $fila_final = [
	  {
		type => 'Label', label => ''            
	  },
	  {
		type => 'Label', label => 'TOTAL SELECCIONADO' , container_attributes => { align => 'center' }           
	  },
	  {
		type => 'Label', name => 'total_seleccionado', value => '0,00', 
		attributes => { class => 'sololectura' }, container_attributes => { align => 'right' }                  
	  },
	  {
		type => 'Label', label => ''
	  }
	];
	push @filas_nominas, $fila_final;
	#agregar el arreglo a la simple table
	$tabla_nominas->rows(\@filas_nominas);
	
	$c->stash({ anio => $anio, mes => $mes, nominas => [$nominas->all] });
	$c->stash->{ fecha } = $fecha; 
	$c->stash->{ cuenta } = $cuenta;
	
	if ( $periodo eq 1 ) {
	  $c->stash->{ periodo } = $periodo;
	  $c->stash->{ periodo_txt } = '1RA QUINCENA';
	}
	elsif ( $periodo eq 2 ){
	  $c->stash->{ periodo } = $periodo;
	  $c->stash->{ periodo_txt } = '2DA QUINCENA';
	}
	else {
	  $c->stash->{ periodo } = 0;
	}    
  }
  else {
	$c->stash->{ resultado } = $resultado;
  }
  
  
  
}

=head2 listado_principal_FORM_VALID

=cut
sub listado_principal_FORM_VALID :Local :FormConfig {
  my ( $self, $c ) = @_;
  
  my $form = $c->stash->{form};
  my $periodo = $c->stash->{periodo};
  my $mes = $c->stash->{mes};
  my $anio = $c->stash->{anio};
  my $tipo = $c->stash->{tipo};
  my $fecha = $c->stash->{ fecha }; 
  my $cuenta = $c->stash->{ cuenta };
  #obtener y configurar el monto total
  my $monto_total = $form->param_value('total_selec');
  #     $fecha =~ s/-/\//; 
  $monto_total =~ s/\.//g;
  $monto_total =~ s/,//g;
  #obtener el elemento simple table de nombre tabla_nominas	
  my $tabla_nominas = $form->get_all_element({ type => 'SimpleTable', name => 'tabla_nominas'});
  #obtener todos los nombres de los checkbox seleccionados
  my @seleccionados = grep ( /^check_/, keys( %{$c->req->params} ) );
  #arreglo del texto plano para el archivo del baco
  my @plano;  
  #obtener en arreglos separados los id_nomina y id_grupo_nomina 
  my @valores_nomina;  
  my @valores_grupo;
  #obtener un arreglo de hashes con id_nomina id_grupo_nomina
  my @valores;
  foreach my $valor( @seleccionados ){
    my $val_sin_check = substr $valor, 6;
    my @dato = split /_/,$val_sin_check;
    my $datos = {
      nomina => $dato[0], 
      grupo => $dato[1],
    };
    push @valores, $datos;
    push @valores_nomina, $dato[0];
    push @valores_grupo, $dato[1];
  }
  #pasar a strings los datos de nomina y grupo en arrays
  my $valores_nomina = join ('-', @valores_nomina);
  my $valores_grupo = join ('-', @valores_grupo);  

  if ( $mes && $anio && length $valores_grupo > 0  && length $valores_nomina > 0  ) {    
    #enviar datos a accion que genera el archivo al banco 
      $c->res->redirect(  $c->uri_for('/nomina/generar_fichero/'.$anio.'/'.$mes.'/'.$periodo.'/'.$valores_grupo.'/'.$valores_nomina.'/'.$tipo.'/'.$cuenta.'/'.$fecha.'/'.$monto_total) );    
  }
  else {   
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado';
  }
}


=head2 generar_fichero
genera el fichero para el banco con datos de sigefirrhh-mppee
=cut
sub generar_fichero :Local {
  my ( $self, $c, $anio, $mes, $periodo, $valores_grupo, $valores_nomina, $tipo, $cuenta, $fecha, $monto_total) = @_;
 
  if ( length $valores_grupo > 0  && length $valores_nomina > 0  && $anio && $mes && length $tipo > 0 && length $periodo > 0) {
    #pasar a un arreglo los valores de id_grupo_nomina y de grupo_nomina
    my @valores_grupo = split /-/,$valores_grupo;
    my @valores_nomina = split /-/,$valores_nomina;
    #definir arreglo para los valores plano del archivo
    my @plano;
    #procesando la fecha
#     $fecha =~ s/-/\//; 
    my @fecha = split /-/, $fecha;
    my $dia_fecha = $fecha[2];
    my $mes_fecha = $fecha[1];
    my $anio_fecha = substr $fecha[0], 2;    
    my $fecha_encabezado = $dia_fecha .'/'. $mes_fecha .'/'. $anio_fecha; 

    my $cabecera = 'H'. sprintf("%-40s", "MINISTERIO  DE ENERGIA ELECTRICA") . $cuenta . '01'. $fecha_encabezado . sprintf("%013d", $monto_total) . '03291 '  ;
    push @plano, $cabecera;
    my $contador = 0;    
    foreach my $valor_nomina ( @valores_nomina ){
      #definir la variable que recibira el resulset para la nomina y grupo correspondientes
      my $consulta;  
      if ( $periodo eq '1' || $periodo eq '2' ) {  

        $consulta = $c->model('DB::VArchivoPlanoVzlaEne2014')->search({
                        mes => $mes,
                        anio => $anio,
                        id_grupo_nomina => $valores_grupo[$contador],
                        numero_nomina => $valor_nomina,
                        semana_quincena => $periodo,                      
                    });
        #incrementar el contador para manejar el arreglo de grupo_nomina
        $contador++;
      }
      else {  
        $consulta = $c->model('DB::VArchivoPlanoVzlaEne2014')->search({
                        mes => $mes,
                        anio => $anio,
                        id_grupo_nomina => $valores_grupo[$contador],
                        numero_nomina => $valor_nomina,                        
                    });
        #incrementar el contador para manejar el arreglo de grupo_nomina
        $contador++;
      }   
      #agregar el valor de la columna "plano" para crear el archivo
      while ( my $dato = $consulta->next){
		#validación de Ñ
		my $cadena = $dato->archivo; 
		#agregar el campo al arreglo
        push @plano, $cadena;        
      }
    }
    #limpiar de caracteres extraños
    my @plano_clean = unidecode( @plano );
    #enviar al stash    
    $c->stash->{ datos } = \@plano_clean;
    $c->stash->{ wrapper } = 'layouttexto';
    $c->response->content_type('text/plain; charset=utf-8');
    $c->res->header( 'Content-Disposition' => "attachment;filename=Nomina_MPPEE_".$anio."_".$cuenta."_".$monto_total.".txt" );
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado desde obtener fichero';
    $c->res->redirect('/nomina/listado_principal/'.$anio.'/'.$mes.'/'.$periodo.'/'.$tipo);
  }  
  
#   Nomina_MPPEE_1raEne2014_01020762290000007058_812102-40
}





=head2 generar_fichero_tercer
genera el fichero para el banco con datos de sigefirrhh-tercerizados
=cut
sub generar_fichero_tercer :Local {
  my ( $self, $c, $anio, $mes, $periodo, $valores_grupo, $valores_nomina, $tipo ) = @_;
 
  if ( length $valores_grupo > 0  && length $valores_nomina > 0  && $anio && $mes && length $tipo > 0 && length $periodo > 0) {
    #pasar a un arreglo los valores de id_grupo_nomina y de grupo_nomina
    my @valores_grupo = split /-/,$valores_grupo;
    my @valores_nomina = split /-/,$valores_nomina;
    #definir arreglo para los valores plano del archivo
    my @plano;    
    my $contador = 0;
    foreach my $valor_nomina ( @valores_nomina ){
      #definir la variable que recibira el resulset para la nomina y grupo correspondientes
      my $consulta;  
      if ( $periodo eq '1' || $periodo eq '2' ) {  

        $consulta = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search({
                        mes => $mes,
                        anio => $anio,
                        id_grupo_nomina => $valores_grupo[$contador],
                        numero_nomina => $valor_nomina,
                        semana_quincena => $periodo,                      
                    });
        #incrementar el contador para manejar el arreglo de grupo_nomina
        $contador++;
      }
      else {  
        $consulta = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search({
                        mes => $mes,
                        anio => $anio,
                        id_grupo_nomina => $valores_grupo[$contador],
                        numero_nomina => $valor_nomina,                        
                    });
        #incrementar el contador para manejar el arreglo de grupo_nomina
        $contador++;
      }   
      #agregar el valor de la columna "plano" para crear el archivo
      while ( my $dato = $consulta->next){
        push @plano, $dato->plano;
      }
    }
    $c->stash->{ 'datos' } = \@plano;
    $c->stash->{ wrapper } = 'layouttexto';
    $c->response->content_type('text/plain; charset=utf-8');
    $c->res->header( 'Content-Disposition' => "attachment;filename=archivo_banco_".$mes."_".$anio.".txt" );
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado desde obtener fichero';
    $c->res->redirect('/nomina/listado_principal/'.$anio.'/'.$mes.'/'.$periodo.'/'.$tipo);
  }  
}

=head2 listado_principal_tercer
se obtiene el listado de nóminas según los parámetros seleccionados en el index 
=cut
sub listado_principal_tercer :Local :FormConfig {
  my ( $self, $c, $anio, $mes, $periodo, $tipo) = @_;

  my $numfor = new Number::Format(THOUSANDS_SEP => '.', DECIMAL_POINT => ',' , DECIMAL_DIGITS => 2, DECIMAL_FILL => 1);

  my $form  = $c->stash->{form};
  $form->auto_constraint_class( 'constraint_%t' );
  $c->stash->{ 'tipo' } = $tipo;
  my $nominas;
  if ( $tipo == 1) {
    # obtener las nominas especiales que tengan numero_nomina != 0    
    $nominas = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search(
                                          {
                                            anio => $anio,
                                            mes => $mes,                                            
                                            numero_nomina => { '>' => 0 },                                            
                                          },
                                          {
                                            select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
                                            as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
                                            group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
                                            order_by => [qw/gruponomina/],
                                            #distinct => 1
                                          }
                                          ); 
  }
  else {
    if ( $periodo == 1 ){
      # seleccionar las nominas ordinarias (numero_nomina = 0)de la 1ra quincena
      $nominas = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search(
                                            {
                                              anio => $anio,
                                              mes => $mes,  
                                              semana_quincena => $periodo,
                                              numero_nomina => 0 
                                            },
                                            {
                                              select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
                                              as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
                                              group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
                                              order_by => [qw/gruponomina/],
                                              #distinct => 1
                                            }
                                            );
    }
    elsif ( $periodo == 2 ) {
      # seleccionar las nominas ordinarias (numero_nomina = 0) de la 2da quincena
      $nominas = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search(
                                            {
                                              anio => $anio,
                                              mes => $mes,
                                              semana_quincena => $periodo                                              
                                            },
                                            {
                                              select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
                                              as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
                                              group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
                                              order_by => [qw/gruponomina/],
                                              #distinct => 1
                                            }
                                            );
    }
    else {
      $nominas = $c->model('SIGEFIRRHH_TERCER::VArchivoPlanoBiv')->search(
                                            {
                                              anio => $anio,
                                              mes => $mes,
                                              numero_nomina => { '>' => 0 }, 
                                            },
                                            {
                                              select => [  'numero_nomina','nomina_especial', 'id_grupo_nomina', 'gruponomina', 'mes', 'anio', { sum => 'monto' }],
                                              as =>  [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio total/],
                                              group_by => [qw/numero_nomina nomina_especial id_grupo_nomina gruponomina mes anio/],
                                              order_by => [qw/gruponomina/],
                                              #distinct => 1
                                            }
                                            );
    }
  }
  
  my $tabla_nominas = $form->get_all_element({ type => 'SimpleTable', name => 'tabla_nominas'});
  my @filas_nominas;
  my $total_monto;
  #agregar las filas al arreglo
  while ( my $nomina = $nominas->next ) {
    my $fila;
    $fila = [
      {
        type => 'Label', name => 'tipo_persona', label => $nomina->gruponomina,            
      },
      {
        type => 'Label', name => 'grupo_nomina', label => $nomina->nomina_especial,            
      },
      { 
        type => 'Label', name => 'monto', value => $numfor->format_number($nomina->get_column('total')),
        attributes => { class => 'sololectura', disabled => 'disabled' }, container_attributes => { align => 'right' } 
      },      
      {
        type => 'Checkbox', name => 'check_'.$nomina->numero_nomina.'_'.$nomina->id_grupo_nomina, container_attributes => { align => 'center' }
      }
    ];
    my $total_monto += $nomina->get_column('total');
    push @filas_nominas, $fila;
  } 
  my $fila_final = [
    {
      type => 'Label', label => ''            
    },
    {
      type => 'Label', label => 'TOTAL SELECCIONADO' , container_attributes => { align => 'center' }           
    },
    {
      type => 'Label', name => 'total_seleccionado', value => '0,00', 
      attributes => { class => 'sololectura' }, container_attributes => { align => 'right' }                  
    },
    {
      type => 'Label', label => ''
    }
  ];
  push @filas_nominas, $fila_final;
  #agregar el arreglo a la simple table
  $tabla_nominas->rows(\@filas_nominas);
  
  $c->stash({ anio => $anio, mes => $mes, nominas => [$nominas->all] });
  if ( $periodo eq 1 ) {
    $c->stash->{ periodo } = $periodo;
    $c->stash->{ periodo_txt } = '1RA QUINCENA';
  }
  elsif ( $periodo eq 2 ){
    $c->stash->{ periodo } = $periodo;
    $c->stash->{ periodo_txt } = '2DA QUINCENA';
  }
  else {
    $c->stash->{ periodo } = 0;
  }  
}

=head2 listado_principal_FORM_VALID

=cut
sub listado_principal_tercer_FORM_VALID :Local :FormConfig {
  my ( $self, $c ) = @_;
  
  my $form = $c->stash->{form};
  my $periodo = $c->stash->{periodo};
  my $mes = $c->stash->{mes};
  my $anio = $c->stash->{anio};
  my $tipo = $c->stash->{tipo};
  my $tabla_nominas = $form->get_all_element({ type => 'SimpleTable', name => 'tabla_nominas'});
  #obtener todos los nombres de los checkbox seleccionados
  my @seleccionados = grep ( /^check_/, keys( %{$c->req->params} ) );
  #arreglo del texto plano para el archivo del baco
  my @plano;  
  #obtener en arreglos separados los id_nomina y id_grupo_nomina 
  my @valores_nomina;  
  my @valores_grupo;
  #obtener un arreglo de hashes con id_nomina id_grupo_nomina
  my @valores;
  foreach my $valor( @seleccionados ){
    my $val_sin_check = substr $valor, 6;
    my @dato = split /_/,$val_sin_check;
    my $datos = {
      nomina => $dato[0], 
      grupo => $dato[1],
    };
    push @valores, $datos;
    push @valores_nomina, $dato[0];
    push @valores_grupo, $dato[1];
  }
  #pasar a strings los datos de nomina y grupo en arrays
  my $valores_nomina = join ('-', @valores_nomina);
  my $valores_grupo = join ('-', @valores_grupo);  

  if ( $mes && $anio && length $valores_grupo > 0  && length $valores_nomina > 0  ) {    
    #enviar datos a accion que genera el archivo al banco 
    $c->res->redirect('/nomina/generar_fichero_tercer/'.$anio.'/'.$mes.'/'.$periodo.'/'.$valores_grupo.'/'.$valores_nomina.'/'.$tipo);    
  }
  else {
    $c->res->redirect('/nomina/listado_principal_tercer/'.$anio.'/'.$mes.'/'.$periodo.'/'.$tipo);
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado';
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
