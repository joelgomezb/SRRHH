package SRRHH::Controller::ARC;

use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

RecibosPago::Controller::ARC - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path {
  my ( $self, $c, $cedula ) = @_;

  if ( ! $cedula ) {
    $cedula = $c->session->{'cedula'};
  }

  # verificar roles de acceso
  if ( ! $c->user->administrador eq 'N' &&  $cedula != $c->session->{'cedula'}) {
    $c->detach( '/access_denied' );
  }

  my $modelo = $c->forward("/buscar_modelo/$cedula");
  if ( $modelo ) {
    my $personal = $c->model('DB::Personal')->find( { cedula => $cedula }, { key => 'personal_cod' } );
    my $anios = $personal->anios_arc;
    $c->stash->{ datos_personales } = $personal;
    $c->stash->{ anios_arc } = $anios;    
  }
  else {
    $c->stash->{ error_msg } = 'No se pudo encontrar la cédula dada';
  }

}

=head2 comprobante

Generar comprobante en formato PDF

=cut

sub comprobante :Local {
  my ( $self, $c, @args ) = @_;

  my ( $cedula, $anio, $modelo ) = @args;

  if ( ! $cedula ) {
    $cedula = $c->session->{'cedula'};
  }

  # verificar roles de acceso
  if ( ! $c->user->administrador eq 'N' &&  $cedula != $c->session->{'cedula'}) {
    $c->detach( '/access_denied' );
  }

  unless ( $modelo ) {
    $modelo = $c->forward("/buscar_modelo/$cedula");
  }

  if ( $modelo ) {
    my $personal = $c->model('DB::Personal')->find( { cedula => $cedula }, { key => 'personal_cod' } );
    my $detalles_arc = $personal->detalles_arc( $anio );
    $c->stash->{ anio } = $anio;
    $c->stash->{ datos_personales } = $personal;
    $c->stash->{ detalles_arc } = $detalles_arc;
    $c->stash->{ organismo } = $c->model('DB::Organismo')->search( {}, { rows => 1 })->single;
    $c->stash->{ current_view } = 'PDFLatex';
    $c->response->content_type('application/pdf');
    $c->response->header('Content-Disposition', "attachment; filename=arc_".$anio.".pdf");
  }
  else {
    $c->stash->{ error_msg } = 'No se pudo encontrar la cédula dada';
  }

}

=head1 AUTHOR

jparedes

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
