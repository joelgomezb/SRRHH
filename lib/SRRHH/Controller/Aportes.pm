package SRRHH::Controller::Aportes;

use Moose;
use namespace::autoclean;
use utf8;
use Data::Dumper;
use Number::Format;
use Encode qw(decode encode);

BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

reportessigefirrhh::Controller::Aportes - Catalyst Controller

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
    my ( $self, $c ) = @_;

	$c->res->redirect( $c->uri_for('/aportes/seleccionar_criterio/') );
}

=head2 seleccionar_criterio

=cut
sub seleccionar_criterio :Local :FormConfig {
  my ( $self, $c) = @_;
      
  my $form = $c->stash->{ form };
  
  if ( $form->submitted_and_valid ){
	#obtener los datos del formulario
	my $tipo_aporte = $form->param_value('aporte');
	my $anio	= $form->param_value('anio');
	my $mes = $form->param_value('mes');
	#según el tipo de aporte
	if ( $tipo_aporte == 1 ) {	  
	  #enviar a la acción archivo_faov
	  $c->res->redirect( '/aportes/archivo_faov/'.$anio.'/'.$mes );
	} elsif ( $tipo_aporte == 2 ) {	  
	  my $tipo_personal = $form->param_value('tipo_personal');
	  # enviar a la acción archivo_faov
	  $c->res->redirect( '/aportes/archivo_fju/'.$anio.'/'.$mes.'/'.$tipo_personal );
	} else {
	  $c->flash->{'error_msg'} = 'Error en el tipo de aporte seleccionado, intente de nuevo.';	
	}	
  } else {
	if ( $form->submitted ) {
	  $c->flash->{'error_msg'} = 'Faltan datos para generar el archivo solicitado.';	
	}	
  }
}


=head2 archivo_faov
genera el fichero con los aportes faov
=cut
sub archivo_faov :Local {
 my ( $self, $c, $anio, $mes )= @_;
  
  #obtener los registros correspondientes de FAOV
  my $registros = $c->model('DB::VFaov')->search({ anio => $anio, mes => $mes });
  #pasar el contenido a un arreglo
  my @plano;
  while ( my $dato = $registros->next ) {
	push @plano, decode( "utf8", $dato->faov );
  }    
  #enviar datos al stash
  $c->stash({ 			  
			  datos 	=> \@plano,
			  wrapper	=> 'layouttexto',
			});
  $c->response->content_type('text/plain; charset=utf-8');
  $c->res->header( 'Content-Disposition' => "attachment;filename=archivo_faov_".$mes."_".$anio.".txt" );
}

=head2 archivo_fju
genera el fichero con los aportes fju
=cut
sub archivo_fju :Local {
 my ( $self, $c, $anio, $mes, $tipo_personal )= @_;
 
  my $registros;
  
	#si es empleado fijo (12, 22, 82, 111, 121)
	if ( $tipo_personal == 1 ) {	  
	  # obtener los registros correspondientes de FJU	  
	$registros = $c->model('DB::VFju')->search({ 	anio 	=> $anio,
																mes 	=> $mes, 
																id_tipo_personal	=> { 'IN' => [ '12', '22', '82', '111', '121' ] }	
															});  
	} elsif ( $tipo_personal == 2 ) {	  
	#si es obrero ( 13, 93)
	# obtener los registros correspondientes de FJU	  
	$registros = $c->model('DB::VFju')->search({ 	anio 	=> $anio,
																mes 	=> $mes, 
																id_tipo_personal	=> { 'IN' => [ '13', '93' ] }	
															});
	
	} else {
	  $registros = $c->model('DB::VFju')->search({ 	anio 	=> $anio,
																mes 	=> $mes, 
																id_tipo_personal	=> { 'IN' => [ '28' ] }	
															});
	}	

  #pasar los datos de texto a un arreglo 
  my @plano;
  while ( my $dato = $registros->next ){
	my $texto = decode( "utf8", $dato->fju );
	
	my $pos = CORE::index( $texto, '.');
	while ( $pos > -1 ) {
	  substr( $texto, $pos, length( '.' ), ',' );
	  $pos = CORE::index( $texto, '.', $pos + length( ',' ));
	}
		
	push @plano, $texto;
  }
  #enviar datos al stash
  $c->stash({ 
			  datos => \@plano, 			 
			  wrapper => 'layouttexto',			  
			});	  
  $c->response->content_type('text/plain; charset=utf-8');
  $c->res->header( 'Content-Disposition' => "attachment;filename=archivo_fju_".$mes."_".$anio.".txt" );
}


=head1 AUTHOR

Elvio Chavez,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
