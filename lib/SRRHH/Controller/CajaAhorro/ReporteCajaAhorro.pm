package SRRHH::Controller::CajaAhorro::ReporteCajaAhorro;

use Moose;
use namespace::autoclean;
use utf8;


BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

reportessigefirrhh::Controller::CajaAhorro::ReporteCajaAhorro - Catalyst Controller

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

sub index :Path :Args(0) : FormConfig {
  my ( $self, $c) = @_;
      
  my $form  = $c->stash->{form};  
}

=head2 listado_anio

=cut

sub listado_anio :Local {
  my ( $self, $c, $anio) = @_;
  
  my $form  = $c->stash->{form};
  if ( $anio > 0 ) {
    my $registros = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio }, 
      {         
        select => [ 'anio','mes', 'semana_quincena', { count => 'cedula', -as => 'cantidad' }, { sum => 'deduce', -as => 'total' } ], 
        as => [qw/anio mes semana_quincena cantidad total/],
        group_by => [qw/anio mes semana_quincena/],
        order_by => { -desc => [qw/anio mes semana_quincena/] },
      } 
    );    
    if ( $registros ) {     
        $c->stash->{ 'anio' } = $anio;
        $c->stash->{ 'registros' } = [ $registros->all ];
    }
    else {
        $c->flash->{error_msg} = "No se ha encontrado la información para los reportes, llamar al 0145";
    }   
  }
}

=head2 listado_anio_mes

=cut

sub listado_anio_mes :Local {
  my ( $self, $c, $anio, $mes ) = @_;
  #condicional para la existencia de los parametros del procedimiento
  if ( $anio && $mes ) {
	#obtener un consolidado de los aportes 
    my $registros = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes }, 
      {         
        select => [ 'anio','mes', 'semana_quincena', { count => 'cedula', -as => 'cantidad' }, { sum => 'deduce', -as => 'total' } ], 
        as => [qw/anio mes semana_quincena cantidad total/],
        group_by => [qw/anio mes semana_quincena/],
        order_by => { -desc => [qw/anio mes semana_quincena/] },
      } 
    );    
    if ( $registros ) {     
        $c->stash({ anio => $anio, registros => [ $registros->all ], mes => $mes});       
    }
    else {
        $c->flash->{error_msg} = "No se ha encontrado la información para los reportes, llamar al 0145";
    }   
  }
}

=head2 resumen_cajaahorro 

=cut
sub resumen_cajaahorro :Local {
  my ( $self, $c, $anio, $mes, $quincena) = @_;
  #condicional para la existencia de los parametros del procedimiento  
  if ( $mes && $anio && $quincena ) {
    #obtener el resumen de 
    my $resumen = $c->model('DB::VCajaAhorro')->search(
      { 
		anio => $anio, 
        mes => $mes, 
        semana_quincena => $quincena,
      }, 
      {         
        select => [ 'id_concepto', 'codcon', 'descon', 'id_tipo_personal', 'tipopersonal', 'fecha_fin', { count => 'cedula', -as => 'cantidad' }, { sum => 'deduce', -as => 'total_deduce' }, { sum => 'asigna', -as => 'total_asigna' } ], 
        as => [qw/id_concepto codcon descon id_tipo_personal tipopersonal fecha_fin cantidad total_deduce total_asigna/],
        group_by => [qw/id_tipo_personal tipopersonal id_concepto codcon descon fecha_fin/],
        order_by => [qw/id_tipo_personal tipopersonal id_concepto codcon descon/] ,
      } 
    );
    my $fecha_fin = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'fecha_fin' ],
        distinct => 1,
        rows => 1,      
      } 
    )->single->fecha_fin;
   
    my $datos = {
      anio => $anio,
      mes => $mes,  
      quincena => $quincena,
      fecha => $fecha_fin
    };

    if ( $resumen->count > 0 ) {
      $c->stash->{ 'resumen' } = [ $resumen->all ];
      $c->stash->{ 'datos' } = $datos;
    }
    else {
      $c->flash->{'error_msg'} = 'No hay registros para el detalle solicitado';
    }
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el detalle solicitado';
    $c->res->redirect('/cajaahorro/reportecajaahorro/');
  } 
}

=head2 resumen_cajaahorro_pdf

=cut
sub resumen_cajaahorro_pdf :Local {
  my ( $self, $c, $anio, $mes, $quincena) = @_;
  
  my $form = $c->stash->{form};
  
  if ( $mes && $anio && $quincena ) {
   
    my $resumen = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, 
        mes => $mes, 
        semana_quincena => $quincena,
      }, 
      {         
        select => [ 'id_concepto', 'codcon', 'descon', 'id_tipo_personal', 'tipopersonal', 'fecha_fin', { count => 'cedula', -as => 'cantidad' }, { sum => 'deduce', -as => 'total_deduce' }, { sum => 'asigna', -as => 'total_asigna' } ], 
        as => [qw/id_concepto codcon descon id_tipo_personal tipopersonal fecha_fin cantidad total_deduce total_asigna/],
        group_by => [qw/id_tipo_personal tipopersonal id_concepto codcon descon fecha_fin/],
        order_by => [qw/id_tipo_personal tipopersonal id_concepto codcon descon/] ,
      } 
    );
    my $fecha_fin = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'fecha_fin' ],
        distinct => 1,
        rows => 1,      
      } 
    )->single->fecha_fin;
   
    my $datos = {
      anio => $anio,
      mes => $mes,  
      quincena => $quincena,
      fecha => $fecha_fin
    };

    if ( $resumen->count > 0 ) {
      $c->stash->{ 'resumen' } = [ $resumen->all ];
      $c->stash->{ 'datos' } = $datos;

      my $filename = "Resumen_Retenciones_CATMENEL_Quincena-".$quincena."(".$mes."-".$anio.")";
      $c->stash->{ pdf_filename } = "$filename.pdf";
      $c->stash->{ no_title } = 1;
      $c->stash->{ footer } = ['.', 'D', '1'];
      $c->stash->{ left_margin } = [ '1', 'cm' ];
      $c->stash->{ top_margin } = [ '1', 'cm' ];
      $c->stash->{'current_view'} = 'HTMLDoc::PDF';
    }
    else {
      $c->flash->{'error_msg'} = 'No hay registros para el detalle solicitado';
    }
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el detalle solicitado';
    $c->res->redirect('/cajaahorro/reportecajaahorro/');
  } 
}

=head2 listado_resumen

=cut
sub listado_detalle :Local {
  my ( $self, $c, $anio, $mes, $quincena, $codcon, $idtipopersonal, $idconcepto) = @_;

  my $form = $c->stash->{form};

  if ( $mes && $anio && $quincena && $codcon && $idtipopersonal ) {       
    my $lista = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena, codcon => $codcon, id_tipo_personal => $idtipopersonal }, 
      {         
        select => [ 'id_concepto', 'codcon', 'id_tipo_personal', 'descon', 'cedula', 'trabajador', 'tipopersonal', 'deduce', 'fecha_fin'], 
        order_by => [qw/cedula trabajador/] ,
      }   
    );
    
    my $datos = {
      anio => $anio,
      mes => $mes,  
      quincena => $quincena,
      codcon => $codcon,
      tipopersonal => $lista->single->tipopersonal,
      descon => $lista->single->descon
    };
    if ( $lista->count > 0 ) {
      $c->stash->{ 'lista' } = [ $lista->all ];
      $c->stash->{ 'datos' } = $datos;
    }
    else {
      $c->flash->{'error_msg'} = 'No hay registros en el listado solicitado';
    }
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el listado solicitado';
    $c->res->redirect('/cajaahorro/reportecajaahorro/');
  }   
}

=head2 listado_general

=cut
sub listado_general :Local {
  my ( $self, $c, $anio, $mes, $quincena) = @_;

  my $form = $c->stash->{form};  

  if ( $mes && $anio && $quincena ) {       
    my $lista = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'codcon', 'descon', 'cedula', 'trabajador', 'tipopersonal', 'deduce', 'fecha_fin'], 
        order_by => [qw/cedula trabajador/] ,
      }   
    );
    
    my $tipos_personal = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'tipopersonal' ],
        distinct => 1,             
      } 
    );

    my $codcons = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'codcon' ],
        distinct => 1,            
      } 
    );
    
    my $fecha_fin = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'fecha_fin' ],
        distinct => 1,
        rows => 1,      
      } 
    )->single->fecha_fin;

    my @codcon_list;
    while (my $registro = $codcons->next) {
      push ( @codcon_list, $registro->get_column('codcon') );
    }

    my @tipos_personal_list;
    while (my $registro = $tipos_personal->next) {
      push ( @tipos_personal_list, $registro->get_column('tipopersonal') );
    }   
   
    my $datos = {
      anio => $anio,
      mes => $mes,  
      quincena => $quincena,
      fecha => $fecha_fin
    };

    if ( $lista->count > 0 ) {
      $c->stash->{ 'lista' } = [ $lista->all ];
      $c->stash->{ 'datos' } = $datos;
      $c->stash->{ 'tipos_personal_list' } = \@tipos_personal_list;
      $c->stash->{ 'codcon_list' } = \@codcon_list;
    }
    else {
      $c->flash->{'error_msg'} = 'No hay registros en el listado solicitado';
    }
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el listado solicitado';
    $c->res->redirect('/cajaahorro/reportecajaahorro/');
  }   
}

=head2 generar_archivo

=cut
sub generar_archivo :Local {
  my ( $self, $c, $anio, $mes, $quincena) = @_;

  my $form = $c->stash->{form};
  
  if ( $mes && $anio && $quincena ) {
   
    my $resumen = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'codcon', 'cedula', 'trabajador', 'tipopersonal' ,'asigna', 'deduce', 'fecha_fin'],        
      } 
    );

    my $fecha_fin = $c->model('DB::VCajaAhorro')->search(
      { anio => $anio, mes => $mes, semana_quincena => $quincena }, 
      {         
        select => [ 'fecha_fin' ],
        distinct => 1,
        rows => 1,      
      } 
    )->single->fecha_fin;
   
    my $datos = {
      anio => $anio,
      mes => $mes,  
      quincena => $quincena,
      fecha => $fecha_fin
    };

    if ( $resumen->count > 0 ) {
      $c->stash->{ 'resumen' } = [ $resumen->all ];
      $c->stash->{ 'datos' } = $datos;
      $c->stash->{ wrapper } = 'layouttexto';
      $c->response->content_type('text/plain; charset=utf-8');
      $c->res->header( 'Content-Disposition' => 'attachment;filename=reporte_caja_ahorros.txt' );
    }
    else {
      $c->flash->{'error_msg'} = 'No hay registros para el detalle solicitado';
    }
  }
  else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el detalle solicitado';
    $c->res->redirect('/cajaahorro/reportecajaahorro/');
  } 
}

# sub generar_archivo_FORM_VALID{
#   my ( $self, $c ) = @_;
# }
# 
# sub generar_archivo_FORM_NOT_VALID{
#   my ( $self, $c ) = @_;
# }
=head1 AUTHOR

Elvio Ramon Chavez Gonzalez

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
