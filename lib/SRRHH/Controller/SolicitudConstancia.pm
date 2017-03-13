package SRRHH::Controller::SolicitudConstancia;

use Moose;
use namespace::autoclean;
use Data::Dumper;
use Try::Tiny;
use Encode qw/encode decode/;
use DateTime;
use Switch;
use utf8;
use Number::Format;

BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

RecibosPago::Controller::SolicitudConstancia - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 auto

=cut

sub auto :Private {
  my ( $self, $c ) = @_;
  
  if ( $c->user_exists ){
 
    my $user_db = $c->model('DB::Usuario')->find( {usuario => $c->user->usuario });

    if ( $user_db ) {
      $c->stash->{ usuario_ldap } = $user_db;
      return 1;
    } else {
      $c->stash->{template} = 'denied_ldap.tt2';	  
      return 1;
    }
  } else {
    $c->res->redirect( $c->uri_for('/usuario/login') );
    return 0;
  }  
}


=head2 index

=cut
sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
  #enviar a la subrutina de inicio
  $c->res->redirect( $c->uri_for('/solicitudconstancia/inicio') );
}

=head2 inicio

=cut
sub inicio  :Local {
    my ( $self, $c ) = @_;

	#$c->stash->{ template } = '/solicitudconstancia/inicio.tt2';
	#mostrando un mensaje de bienvenida al sistema
}

=head2 codigo_barra

=cut

sub codigo_barra : Private {
  my ( $self, $c ) = @_;

  my $id = $c->request->arguments->[0];
  my $filename = $c->request->arguments->[1];
  
  use Barcode::Code128 'FNC1';
  my $texto = sprintf("%08d", $id);

  my $code = new Barcode::Code128;
  $code->option( 'transparent_text', 1 );
  $code->option( 'border', 0 );
  $code->option( 'show_text', 0 );
  $code->option( 'padding', 2 );
  $code->option( 'height', 35);


  open FH, ">$filename";
  print FH $code->png($texto);

  close FH;
}

=head2 solicitar_constancia

=cut
sub solicitar_constancia :Local :FormConfig {
    my ( $self, $c ) = @_;
	
    my $form = $c->stash->{form};
	#definir un formato de numero para la cedula
	my $formato_cedula = new Number::Format(
								-thousands_sep   => '.',
								-decimal_point   => ',',
								DECIMAL_DIGITS   => 0
                              );
	#obtener datos del usuario en el stash
	my $usuario->{'cedula'} = $c->session->{'cedula'};
	#obtener los registros del usuario en la vista VConstancia  
	my $datos_vista_constancia =  $c->model('DB::VHistConstancia')->search( { cedula => $usuario->{ 'cedula' } }, { order_by => [ 'concepto' ] } );
	my $datos_persona_constancia = $c->model('DB::VHistConstancia')->find( { cedula => $usuario->{ 'cedula' } }, { rows => 1} ); 

	my $datos_firma = $c->model('DB::ZfirmaConstancia')->find( { firma_activa => 'true' }, { rows => 1 } );
	#enviar datos al stash
	$c->stash({ 
	  cedula => $formato_cedula->format_number( $datos_persona_constancia->cedula ),
	  datos_constancia => [ $datos_vista_constancia->all ], 
	  datos_persona_constancia => $datos_persona_constancia, 
	  datos_firma => $datos_firma 
	});	
	unless ( $datos_vista_constancia && $datos_firma && $datos_persona_constancia ) {
	  $c->flash->{error_msg} = "Existen inconsistencias con sus datos, por favor actualizar información en SIGEFIRR. Dirigirse a RRHH";
	  $c->res->redirect('/solicitudconstancia');
	} 
}


sub solicitar_constancia_FORM_VALID {
	my ( $self, $c ) = @_;
	#obtener datos del formulario y del stash 
	my $form = $c->stash->{form};
	my $datos_firma = $c->stash->{ datos_firma };
	my $usuario = $c->stash->{ usuario_ldap };
	my $datos_vista_constancia = $c->stash->{ datos_constancia };
	my $datos_persona_constancia = $c->stash->{ datos_persona_constancia };	
	my $tipo_constancia = $form->param_value('tipo_constancia');	
	my $periodo_constancia = $form->param_value('periodo_constancia');
	my $registro_BD = 'false';
	my $plantilla_pdflatex = 1;
	my $constancia;

	#buscamos la firma del supervisor del gerente
	if ( $datos_persona_constancia->encargaduria eq 'GERENTE' ){
		my $firma_supervisor = $c->model("DB::ZfirmaConstancia")->find({ cargo_firma_constancia => { 'LIKE' => '%President%' }, firma_activa => 1 } );
		$c->stash->{'datos_firma_supervisor'} = $firma_supervisor;
	}

	#definir los datos para registrar la constancia
	my $datos_constancia = {
	  tipo_constancia		=> $form->param_value('tipo_constancia') || \'NULL',
	  periodo_constancia		=> $form->param_value('periodo_constancia') || 3,
	  fecha_constancia		=>  \'now()',
	  cargo				=> $datos_persona_constancia->descripcion_cargo,
	  cedula			=> $datos_persona_constancia->cedula,
	  nb_apll			=> $datos_persona_constancia->primer_apellido.' '.$datos_persona_constancia->segundo_apellido.' '.$datos_persona_constancia->primer_nombre.' '.$datos_persona_constancia->segundo_nombre,
	  tipo_trabajador		=> $datos_persona_constancia->tipopersonal,
	  firma				=> $datos_firma->id_firma_constancia,
	  situacion			=> $datos_persona_constancia->situacion,
	  unidad			=> $datos_persona_constancia->unidad_ejecutora,	  	  
	};

	#si existe encargaduria guardar su valor
	if ( $datos_persona_constancia->situacion == 2 ) {
	  $datos_constancia->{ encargaduria } = $datos_persona_constancia->encargaduria;
	}
	#crear subrutina para registrar informacion en la BD
	my $transaccion = sub {
	  #registrar datos de la constancia 
	  $constancia = $c->model('DB::Zconstancia')->create( $datos_constancia );
	  #obtener valor del campo cod_constancia
	  $constancia->update( { cod_constancia => sprintf("%08d", $constancia->id_constancia) } );
	  #registrar los conceptos si es remunerada
	  if ( $constancia->tipo_constancia->id_tipo_constancia == 1 ) {
		foreach my $dato ( @{$datos_vista_constancia} ) {
		  my $info = {
						cod_concepto	=> $dato->concepto,
						nb_concepto		=> $dato->descripcion,
						monto			=> $dato->monto,
						id_constancia	=> $constancia->id_constancia
					  };
		  #registrar los conceptos
		  $c->model('DB::Zconcepto')->create( $info );
		} 
	  }
	  #registrar datos en bitacora
	  my $bitacora = $c->model('DB::ZbitacoraConstancia')->create({
			uid_usuario		=> $c->user->usuario,
			nb_usuario		=> $datos_constancia->{ nb_apll },
			fecha_accion	=> \'now()',
			id_accion		=> 2, 
			id_constancia	=> $constancia->id_constancia
	  });
	};
	#ejecutar la transaccion en la BD
	try {
	  $c->model('DB')->txn_do( $transaccion );
	  $registro_BD = 'true';
	  $c->stash->{ constancia } = $constancia;
	}
	catch {
	  my $error = $_;
	  my $razon;
	  $razon = $error;
	  $c->flash->{error_msg} = "No se pudo realizar la acción: ".$razon;
	};
	#si se registro exitosamente la solicitud de constancia en la BD
	if ( $registro_BD ) {
	  #procesar constancia según el tipo
	  if ( $tipo_constancia == 1 ) {
		#procesar según el periodo de la constancia
		if ( $periodo_constancia == 1 ) {
		  #constancia mensual remunerada		
		  switch ( $datos_persona_constancia->tipopersonal ) {
			  case 'CONTRATADO' 	{ 
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_mensual_remunerado.tt2';
			  }
			  case 'EMPLEADO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
			  }	
			  case 'OBRERO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/obrfijo_mensual_remunerada.tt2';
			  }
			  case 'CONTRATADO (OBRERO)' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_mensual_remunerado.tt2';
			  }
			  case 'ALTO NIVEL Y DE DIRECCION' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
			  }
			  case 'ALTO NIVEL Y/O CONFIANZA' 	{
				  #cargar la plantilla correspondiente al caso 
				  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
			  }
			  case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/comision_mensual_remunerada.tt2';
			  }
			  case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/comision_mensual_remunerada.tt2';
			  }
			  case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
			  }
			  case 'JUBILADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_mensual_remunerada.tt2';
			  }
			  case 'PENSIONADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_mensual_remunerada.tt2';
			  }

			  else { 
				$plantilla_pdflatex = 0;
				$c->stash->{ template } = 'solicitudconstancia/solicitar_constancia.tt2';
				$c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH"; 
			  }
		  };
		} elsif ( $periodo_constancia == 2 ) {
		  #constancia anual remunerada		  
		  switch ( $datos_persona_constancia->tipopersonal ) { #
			  case 'CONTRATADO' { 
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
			  }
			  case 'EMPLEADO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
			  }	
			  case 'OBRERO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/obrfijo_anual_remunerada.tt2';
			  }
			  case 'CONTRATADO (OBRERO)' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
			  }
			  case 'ALTO NIVEL Y DE DIRECCION' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
			  }
			  case 'ALTO NIVEL Y/O CONFIANZA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
			  }
			  case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/comision_anual_remunerada.tt2';
			  }
			  case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
			  }
			  case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
			  }
			  case 'JUBILADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_anual_remunerada.tt2';
			  }
			  case 'PENSIONADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_anual_remunerada.tt2';
			  }

			  else { 
				$plantilla_pdflatex = 0;
				$c->stash->{ template } = 'solicitudconstancia/solicitar_constancia.tt2';
				$c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH"; 
			  }
		  };
		} else {
		  $c->flash->{error_msg} = "No se tiene un período válido para la constancia. Por favor, verifique los datos del formulario e intente de nuevo ";
		}
	  } elsif ( $tipo_constancia == 2 ) {	
		$plantilla_pdflatex =  'true';
		#no remunerada	  
		switch ( $datos_persona_constancia->tipopersonal ) {
			  case 'CONTRATADO' 	{ 
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
			  }
			  case 'EMPLEADO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
			  }	
			  case 'OBRERO FIJO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/obrfijo_no_remunerada.tt2';
			  }
			  case 'CONTRATADO (OBRERO)' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
			  }
			  case 'ALTO NIVEL Y/O CONFIANZA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
			  }
			  case 'ALTO NIVEL Y DE DIRECCION' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
			  }
			  case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/comision_no_remunerada.tt2';
			  }
			  case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/comision_no_remunerada.tt2';
			  }
			  case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2'; 
			  }
			  case 'JUBILADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_no_remunerada.tt2';
			  }
			  case 'PENSIONADO'{
				#cargar la plantilla correspondiente al caso 
				$c->stash->{ template } = 'solicitudconstancia/pension_no_remunerada.tt2';
			  }

			  else { 
				$plantilla_pdflatex = 0;
				$c->stash->{ template } = 'solicitudconstancia/solicitar_constancia.tt2';
				$c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH";
			  }			  
		  };
	  } else {
		$c->flash->{error_msg} = "No se tiene un tipo de constancia válido. Por favor, verifique los datos del formulario e intente de nuevo ";
	  }
	  if ( $plantilla_pdflatex ) {
		use File::Temp ();
		my   $fh = File::Temp->new();
		$fh->unlink_on_destroy( 0 );
		my $archivo = $fh->filename . '.png';
		
		$c->forward( 'codigo_barra', [ $constancia->cod_constancia, $archivo ] );
		$c->stash->{ imagen_codigo } = $archivo;

		#enviar a la vista PDFLatex
		$c->stash->{ wrapper } = 'pdf';
		$c->stash->{ current_view } = 'PDFLatex';
#$c->stash->{ wrapper } = 'layout_simple';
		$c->response->content_type('application/pdf');
		$c->response->header('Content-Disposition', "attachment;filename=ConstanciaTrabajo.pdf");
	  } else {
		$c->stash->{ template } = 'solicitudconstancia/solicitar_constancia.tt2';
		$c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH";
	  }
	} else {
	 $c->flash->{error_msg} = "No se pudo registrar en la base de datos la solicitud de constancia de trabajo";
	}	 
}

sub solicitar_constancia_FORM_NOT_VALID {
  my ( $self, $c ) = @_;

  $c->flash->{error_msg} = "No se pudo realizar la acción por existir datos inválidos. Por favor, verifique los datos del formulario e intente de nuevo";
}


=head2 lista_constancia

=cut
sub lista_constancia :Local :FormConfig {
    my ( $self, $c ) = @_;

    #control del acceso a los usuarios
    #if ( ! $c->check_any_user_role( qw/Constancias Administradores/ ) ) {
	if ( ! $c->session->{'administrador'} eq 'N' ) { 
	  $c->detach( '/access_denied' );
    }
    
	my $form = $c->stash->{form};
	#definir un formato de numero para la cedula
	my $formato_cedula = new Number::Format(
								-thousands_sep   => '.',
								-decimal_point   => ',',
								DECIMAL_DIGITS   => 0
                              );
	#obtener datos del usuario en el stash
	my $usuario->{'cedula'} = $c->session->{'cedula'};
	#obtener los registros del usuario en la vista VConstancia  
	my $datos_vista_constancia =  $c->model('DB::VHistConstancia')->search( { cedula => $usuario->{ 'cedula' } }, { order_by => [ 'concepto' ] } );
	my $datos_persona_constancia = $c->model('DB::VHistConstancia')->find( { cedula => $usuario->{ 'cedula' } }, { rows => 1} ); 
	my $datos_firma = $c->model('DB::ZfirmaConstancia')->find( { firma_activa => 'true' }, { rows => 1 } );
	my $constancia->{ cod_constancia }  = '00000058962';
	#definir variables 
	my $plantilla_pdflatex = 'true';
	#enviar datos al stash
	$c->stash({
	  cedula => $formato_cedula->format_number( $datos_persona_constancia->cedula ),
	  constancia => $constancia,
	  datos_constancia => [ $datos_vista_constancia->all ], 
	  datos_persona_constancia => $datos_persona_constancia, 
	  datos_firma => $datos_firma 
	});	
	if ( $form->submitted_and_valid ) {
	  my $tipo_formato = $form->param_value('formato_constancia');
	#constancia mensual remunerada		
	  switch ( $tipo_formato ) { 
		case 11 	{ 
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_mensual_remunerado.tt2';#contratado_mensual_remunerado.tt2';		  
		}
		case 12 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';		  
		}	
		case 9 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/obrfijo_mensual_remunerada.tt2';		  
		}
		case 10 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_mensual_remunerado.tt2';		  
		}
		case 14	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
		}
		case 13 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
		}
		case 16	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
		}
		case 15 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
		}			  
		case 19  { 
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
		}
		case 20 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
		}	
		case 17 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/obrfijo_anual_remunerada.tt2';
		}
		case 18  	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
		}
		case 22 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
		}
		case 21 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
		}
		case 24 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
		}
		case 23  	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
		}			  
		case 3 { 
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
		}
		case 4 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
		}	
		case 1 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/obrfijo_no_remunerada.tt2';
		}
		case 2 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
		}
		case 6 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
		}
		case 5 	{
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
		}
		case 8 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
		}
		case 7 {
		  #cargar la plantilla correspondiente al caso 
		  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2'; 
		}
		else { 
		  $plantilla_pdflatex = 'false';
		  $c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH"; 
		}
	  };
	  if ( $plantilla_pdflatex ) {
		use File::Temp ();
		my   $fh = File::Temp->new();
		$fh->unlink_on_destroy( 0 );
		my $archivo = $fh->filename . '.png';
		$c->forward( 'codigo_barra', [ $constancia, $archivo ] );
		$c->stash->{ imagen_codigo } = $archivo;

		#enviar a la vista PDFLatex
		$c->stash->{ wrapper } = 'pdf';
		$c->stash->{ current_view } = 'PDFLatex';
		$c->response->content_type('application/pdf');
		$c->response->header('Content-Disposition', "attachment;filename=ConstanciaTrabajo.pdf");
	  }	   
	}
}

=head2 crear_constancia

=cut
sub crear_constancia :Local :FormConfig {
    my ( $self, $c ) = @_;
    
	#control del acceso a los usuarios
    #if ( ! $c->check_any_user_role( qw/Constancias Administradores/ ) ) {
	if ( ! $c->session->{'administrador'} eq 'N' ) { 
	  $c->detach( '/access_denied' );
    }
	my $form = $c->stash->{form};		
}

sub crear_constancia_FORM_NOT_VALID {
  my ( $self, $c ) = @_;

  $c->flash->{error_msg} = "No se pudo realizar la acción por existir datos inválidos. Por favor, verifique los datos del formulario e intente de nuevo";
}

sub crear_constancia_FORM_VALID :Local  {
    my ( $self, $c ) = @_;
    
	#control del acceso a los usuarios	
    #if ( ! $c->check_any_user_role( qw/Constancias Administradores/ ) ) {
	if ( ! $c->session->{'administrador'} eq 'N' ) { 
	  $c->detach( '/access_denied' );
    }
	my $form = $c->stash->{form};		
	#definir un formato de numero para la cedula
	my $formato_cedula = new Number::Format(
								-thousands_sep   => '.',
								-decimal_point   => ',',
								DECIMAL_DIGITS   => 0
                              );
	my $cedula = $form->param_value('cedula_solicitud');
	my $tipo_constancia = $form->param_value('tipo_constancia');
	my $periodo_constancia = $form->param_value('periodo_constancia');
        my $usuario = $c->stash->{ usuario_ldap };

	#obtener los registros del usuario en la vista VConstancia  
	my $datos_usuario = $c->model('DB::VHistConstancia')->find( { cedula => $usuario->{ 'cedula' } }, { rows => 1} ); 
	my $datos_vista_constancia =  $c->model('DB::VHistConstancia')->search( { cedula => $cedula }, { order_by => [ 'concepto' ] } );
	my $datos_persona_constancia = $c->model('DB::VHistConstancia')->find( { cedula => $cedula }, { rows => 1} ); 
	my $datos_firma = $c->model('DB::ZfirmaConstancia')->find( { firma_activa => 'true' }, { rows => 1 } );

	if ( $datos_persona_constancia ) {
	$c->stash({ 
	  cedula => $formato_cedula->format_number( $datos_persona_constancia->cedula ),
	  datos_constancia => [ $datos_vista_constancia->all ], 
	  datos_persona_constancia => $datos_persona_constancia, 
	  datos_firma => $datos_firma 
	});	
	#definir variables
	my $constancia;
	my $registro_BD = 'false';
	my $plantilla_pdflatex = 1;
		if ( $datos_persona_constancia ) {		  
		  #definir los datos para registrar la constancia
		  my $datos_constancia = {
			tipo_constancia		=> $form->param_value('tipo_constancia') || \'NULL',
			periodo_constancia	=> $form->param_value('periodo_constancia') || 3,
			fecha_constancia	=>  \'now()',
			cargo				=> $datos_persona_constancia->descripcion_cargo,
			cedula				=> $cedula,
			nb_apll				=> $datos_persona_constancia->primer_apellido.' '.$datos_persona_constancia->segundo_apellido.' '.$datos_persona_constancia->primer_nombre.' '.$datos_persona_constancia->segundo_nombre,
			tipo_trabajador		=> $datos_persona_constancia->tipopersonal,
			firma				=> $datos_firma->id_firma_constancia,
			situacion			=> $datos_persona_constancia->situacion,
			unidad				=> $datos_persona_constancia->unidad_ejecutora,	
		  };	
		  #si existe encargaduria guardar su valor
		  if ( $datos_persona_constancia->situacion == 2 ) {
			$datos_constancia->{ encargaduria } = $datos_persona_constancia->encargaduria;
		  }
		  #crear subrutina para registrar informacion en la BD
		  my $transaccion = sub {
			#registrar datos de la constancia 
			$constancia = $c->model('DB::Zconstancia')->create( $datos_constancia );
			#obtener valor del campo cod_constancia
			$constancia->update( { cod_constancia => sprintf("%08d", $constancia->id_constancia) } );
			#registrar los conceptos si es remunerada
			if ( $constancia->tipo_constancia->id_tipo_constancia == 1 ) {
			  foreach my $dato ( $datos_vista_constancia->all ) {
				my $info = {
							  cod_concepto	=> $dato->concepto,
							  nb_concepto		=> $dato->descripcion,
							  monto			=> $dato->monto,
							  id_constancia	=> $constancia->id_constancia
							};
				#registrar los conceptos
				$c->model('DB::Zconcepto')->create( $info );
			  } 
			}
			#registrar datos en bitacora

			my $bitacora = $c->model('DB::ZbitacoraConstancia')->create({
				uid_usuario		=> $c->user->usuario,
				nb_usuario		=> $datos_constancia->{ nb_apll },
				fecha_accion		=> \'now()',
				id_accion		=> 1, 
				id_constancia	=> $constancia->id_constancia
			});
		  };
		  #ejecutar la transaccion en la BD
		  try {
			$c->model('DB')->txn_do( $transaccion );
			$registro_BD = 'true';
			$c->stash->{ constancia } = $constancia;
		  }
		  catch {
			my $error = $_;
			my $razon;
			$razon = $error;
			$c->flash->{error_msg} = "No se pudo realizar la acción: ".$razon;
		  };
		  #si se registro exitosamente la solicitud de constancia en la BD
		  if ( $registro_BD ) {
			#procesar constancia según el tipo
			if ( $tipo_constancia == 1 ) {
			  #procesar según el periodo de la constancia
			  if ( $periodo_constancia == 1 ) {
				#constancia mensual remunerada		
				switch ( $datos_persona_constancia->tipopersonal ) { 
					case 'CONTRATADO' 	{ 
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/contratado_mensual_remunerado.tt2';#contratado_mensual_remunerado.tt2';
					}
					case 'EMPLEADO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 				  
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
					}	
					case 'OBRERO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/obrfijo_mensual_remunerada.tt2';
					}
					case 'CONTRATADO (OBRERO)' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/obrcontr_mensual_remunerada.tt2';
					}
					case 'ALTO NIVEL Y DE DIRECCION' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
					}
					case 'ALTO NIVEL Y/O CONFIANZA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
					}
					case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_mensual_remunerada.tt2';
					}
					case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_mensual_remunerada.tt2';
					}
					case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_mensual_remunerada.tt2';
					}										
					case 'JUBILADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_mensual_remunerada.tt2';
					}
					case 'PENSIONADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_mensual_remunerada.tt2';
					}
					else { 
					  $plantilla_pdflatex = 0;
					  $c->stash->{ template } = 'solicitudconstancia/crear_constancia.tt2';				
					  $c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH  ";
					}
				};				
			  } elsif ( $periodo_constancia == 2 ) {
				#constancia anual remunerada		  
				switch ( $datos_persona_constancia->tipopersonal ) { #
					case 'CONTRATADO' { 
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
					}
					case 'EMPLEADO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 			  
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';						  
					}
					case 'OBRERO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/obrfijo_anual_remunerada.tt2';
					}
					case 'CONTRATADO (OBRERO)' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/contratado_anual_remunerado.tt2';
					}
					case 'ALTO NIVEL Y/O CONFIANZA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
					}
					case 'ALTO NIVEL Y DE DIRECCION' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
					}
					case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_anual_remunerada.tt2';
					}
					case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_anual_remunerada.tt2';
					}
					case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_anual_remunerada.tt2';
					}
					case 'JUBILADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_anual_remunerada.tt2';
					}
					case 'PENSIONADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_anual_remunerada.tt2';
					}

					else { 
					  $plantilla_pdflatex = 0;
					  $c->stash->{ template } = 'solicitudconstancia/crear_constancia.tt2';		
					  $c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH ";
					}
				};				
			  } else {			
				$c->flash->{error_msg} = "No se tiene un período válido para la constancia. Por favor, verifique los datos del formulario e intente de nuevo ";
			  }
			} elsif ( $tipo_constancia == 2 ) {	
			  #no remunerada	  
			  switch ( $datos_persona_constancia->tipopersonal ) {
					case 'CONTRATADO' 	{ 
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
					}
					case 'EMPLEADO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
					}	
					case 'OBRERO FIJO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/obrfijo_no_remunerada.tt2';
					}
					case 'CONTRATADO (OBRERO)' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/contratado_no_remunerado.tt2';
					}
					case 'ALTO NIVEL Y/O CONFIANZA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';
					}
					case 'ALTO NIVEL Y DE DIRECCION' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2';;
					}
					case 'COMISION DE SERVICIOS Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_no_remunerada.tt2';
					}
					case '(ALTO NIVEL) COMISION DE SERVICIO Y/O ENCARGADURIA' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/comision_no_remunerada.tt2';
					}
					case 'ALTOS FUNCIONARIOS DEL PODER PUBLICO' 	{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/emplfijo_no_remunerada.tt2'; 
					}
					case 'JUBILADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_no_remunerada.tt2';
					}
					case 'PENSIONADO'{
					  #cargar la plantilla correspondiente al caso 
					  $c->stash->{ template } = 'solicitudconstancia/pension_no_remunerada.tt2';
					}

					else { 
					  $plantilla_pdflatex = 0;
					  $c->stash->{ template } = 'solicitudconstancia/crear_constancia.tt2';		
					  $c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH ";
					}
				};				
			} else {
			  $c->flash->{error_msg} = "No se tiene un tipo de constancia válido. Por favor, verifique los datos del formulario e intente de nuevo";
			}
			if ( $plantilla_pdflatex ) {
			  use File::Temp ();
			  my   $fh = File::Temp->new();
			  $fh->unlink_on_destroy( 0 );
			  my $archivo = $fh->filename . '.png';
			  $c->forward( 'codigo_barra', [ $constancia->cod_constancia, $archivo ] );
			  $c->stash->{ imagen_codigo } = $archivo;
			  
			  #enviar a la vista PDFLatex
			  $c->stash->{ wrapper } = 'pdf';
			  $c->stash->{ current_view } = 'PDFLatex';
			  $c->response->content_type('application/pdf');
			  $c->response->header('Content-Disposition', "attachment;filename=ConstanciaTrabajo.pdf");
			} else {
			  $c->stash->{ template } = 'solicitudconstancia/crear_constancia.tt2';		
			  $c->flash->{error_msg} = "Existen problemas con el tipo de personal que le corresponde en SIGEFIRRHH. Actualizar en RRHH";
			}
		  } else {
			$c->flash->{error_msg} = "No se pudo registrar en la base de datos la solicitud de constancia de trabajo";
		  } 		  
		} else {		
		  $c->flash->{error_msg} = "Existen problemas con el numero de cédula introducido";
		}
	} else {		
	  $c->flash->{error_msg} = "Número de Cédula no registrado";
	}
}


=head2 buscar_constancia

=cut
sub buscar_constancia  :Local :FormConfig {
    my ( $self, $c ) = @_;
	
	#control del acceso a los usuarios	
    #if ( ! $c->check_any_user_role( qw/Constancias Administradores/ ) ) {
	if ( ! $c->session->{'administrador'} eq 'N' ) { 
	  $c->detach( '/access_denied' );
    }
    
	#obtener el formulario desde del stash
    my $form = $c->stash->{form};	    
    
    if ( $form->submitted_and_valid ) {
	  #obtener el codigo desde el formulario
	  my $codigo = $form->param_value('codigo_constancia');
	  #ajustar el codigo al formato definido
	  my $codigo_ajustado = sprintf("%08d", $codigo);
	  #obtener la constancia para el código 
	  my $constancia = $c->model('DB::Zconstancia')->find({ cod_constancia => $codigo_ajustado });

	  if ( $constancia ) {
		#obtener datos de la constancia desde SIGEFIRRHH
		my $datos_vista_constancia =  $c->model('DB::VHistConstancia')->search( { cedula => $constancia->cedula }, { order_by => [ 'concepto' ] } );
		my $datos_persona_constancia = $c->model('DB::VHistConstancia')->find( { cedula => $constancia->cedula }, { rows => 1} ); 
		#enviar datos de la constancia al stash
		$c->stash->{ constancia } = $constancia;
		$c->stash->{ datos_constancia } = [ $datos_vista_constancia->all];
		$c->stash->{ persona } = $datos_persona_constancia;
		#enviar a la accion de validación
		$c->res->redirect('/solicitudconstancia/validar_constancia/'.$constancia->id_constancia);
	  } else {
		$c->flash->{error_msg} = "No existe ninguna solicitud de constancia con el código ingresado.";
	  }	  
    } else {
	  if ( $form->submitted ) {
		$c->flash->{error_msg} = "Existen problemas con los datos del formulario";
	  }
    }
}


=head2 validar_constancia

=cut
sub validar_constancia  :Local :FormConfig {
    my ( $self, $c, $id_constancia ) = @_;
    
    #control del acceso a los usuarios	
    #if ( ! $c->check_any_user_role( qw/Constancias Administradores/ ) ) {
	if ( ! $c->session->{'administrador'} eq 'N' ) { 
	  $c->detach( '/access_denied' );
    }
    
	#obtener el formulario desde del stash
    my $form = $c->stash->{form};
    #obtener datos del usuario del sistema 
    my $usuario = $c->stash->{ usuario_ldap };
    #obtener la constancia 
	my $constancia = $c->model('DB::Zconstancia')->find({ id_constancia => $id_constancia });	
	#comprobar que existe la constancia
	if ( $constancia ) {
	  #obtener datos de la constancia desde SIGEFIRRHH
	  my $datos_vista_constancia =  $c->model('DB::VHistConstancia')->search( { cedula => $constancia->cedula }, { order_by => [ 'concepto' ] } );
	  my $datos_persona_constancia = $c->model('DB::VHistConstancia')->find( { cedula => $constancia->cedula }, { rows => 1} ); 
	  #enviar datos de la constancia al stash
	  $c->stash->{ constancia } = $constancia;
	  $c->stash->{ datos_constancia } = [ $datos_vista_constancia->all];
	  $c->stash->{ persona } = $datos_persona_constancia;
	  if ( $form->submitted_and_valid ) {
		#crear la transaccion de la BD
		my $transaccion = sub {
		  #registrar la fecha de validacion 
		  $constancia->update({ fecha_validacion =>  \'now()' });
		  #registrar la acción en la bitacora
		  $c->model('DB::ZbitacoraConstancia')->create ({
			  uid_usuario 		=> $usuario->{ uid },
			  nb_usuario 		=> $usuario->{ nombre }.' '.$usuario->{ apellido },
			  fecha_accion 		=>  \'now()',
			  id_accion 		=> 3,
			  id_constancia 	=> $constancia->id_constancia
		  });
		};
		#ejecutar la transaccion en la BD
		try {
		  $c->model('DB')->txn_do( $transaccion );  
		  $c->res->redirect('/solicitudconstancia/buscar_constancia');
		  $c->flash->{ status_msg } = "Se ha guardado la validación de la constancia con el código ".$constancia->cod_constancia;
		}
		catch {
		  my $error = $_;
		  my $razon;
		  $razon = $error;
		  $c->flash->{error_msg} = "No se pudo realizar la acción: ".$razon;
		};
		
	  }
	} else {
	  $c->res->redirect('/solicitudconstancia/buscar_constancia');
	  $c->flash->{error_msg} = "No existe ninguna solicitud de constancia con el código ingresado.";	
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
