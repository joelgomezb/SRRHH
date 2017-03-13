package SRRHH::Controller::Quincenas;

use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }
use utf8;

=head1 NAME

RecibosPago::Controller::Quincenas - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
  my ( $self, $c ) = @_;

  $c->res->redirect( $c->uri_for('/quincenas/listar') );
}


=head2 listar

=cut

sub listar :Local {
  my ( $self, $c, $cedula ) = @_;

  # verificar roles de acceso
  use Data::Dumper;
  $c->log->info( Dumper( $c->session->{'cedula'}));

  if ( $cedula ){
	  if ( $c->user->administrador eq 'N' &&  $cedula != $c->session->{'cedula'}) {
	    $c->detach( '/access_denied' );
	  }
  }

  if ( ! $cedula ) {
    $cedula = $c->session->{'cedula'};
  }


  my $page = $c->request->param('page');
  $page = 1 if (!$page || $page !~ /^\d+$/);

  my $modelo = $c->forward("/buscar_modelo/$cedula");
  if ( $modelo ) {
    my ( $recibos, $pager ) = $c->model("DB::Personal")->consultar_ultimas_quincenas( $cedula, $page );
    $c->stash->{ recibos } = $recibos;
    $c->stash->{ pager } = $pager;

    my $datos_personales = $c->model("DB::Personal")->find( { cedula => $cedula }, { key => 'personal_cod' } );
    $c->stash->{ datos_personales } = $datos_personales;
    $c->stash->{ modelo } = $modelo;
  }
  else {
    $c->stash->{ error_msg } = 'No se pudo encontrar la cédula dada';
  }
}

=head2 detalle

=cut

sub detalle : Local  {
  my ( $self, $c, @args ) = @_;

  my ( $cedula, $anio, $mes, $quincena, $modelo ) = @args;

  # verificar roles de acceso
  #if ( ! $c->check_any_user_role( qw/Administradores/ ) &&  $cedula != $c->user->pager) {
  if ( ! $c->session->{'administrador'} eq 'N' &&  $cedula != $c->session->{'cedula'}) {
    $c->detach( '/access_denied' );
  }

  unless ( $modelo ) {
    $modelo = $c->forward("/buscar_modelo/$cedula");
  }
  if ( $modelo ) {
    my $detalle = $c->model($modelo."::Personal")->consultar_nomina_quincena( $cedula, $anio, $mes, $quincena );

    if ( $detalle ) {
      #if ( ! $c->check_any_user_role( qw/Administradores/ ) ) {
  	  if ( ! $c->session->{'administrador'} eq 'N' &&  $cedula != $c->session->{'cedula'}) {
        # validar fecha final para las quincenas
        my $fecha_fin = $detalle->{ fin };
        my ( $dia_fin, $mes_fin, $anio_fin ) = split('/', $fecha_fin );
        my $fecha_fin_ymd = $anio_fin . '/' . $mes_fin . '/' . $dia_fin;

        use DateTime;
        my $dt_hoy = DateTime->now;
        my $hoy_ymd = $dt_hoy->ymd('/');

        if ( $hoy_ymd lt $fecha_fin_ymd ) {
          $c->detach( '/access_denied' );
        }
      }

      $c->stash->{ recibo } = $detalle;
      $c->stash->{ wrapper } = 'layoutformato';
      $c->stash->{ detalle_quincena } = 'detalle_quincena';
    }
    else {
      $c->flash->{ error_msg } = 'Recibo no encontrado';
      $c->res->redirect( $c->uri_for('/quincenas/listar') );
    }
  }
  else {
    $c->stash->{ error_msg } = 'No se pudo encontrar la cédula dada';
  }
}

=head1 AUTHOR

Juan Paredes

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
