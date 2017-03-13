package SRRHH::Controller::Usuarios;

use Moose;
use namespace::autoclean;
use Data::Dumper;

use utf8;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

RecibosPago::Controller::Usuarios - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
  my ( $self, $c ) = @_;

  $c->res->redirect( $c->uri_for('/quincenas/') );
}

=head2 login

Formulario y acción para inicio de sesión

=cut

sub login : Local {
  my ( $self, $c ) = @_;
  my $username = $c->request->params->{username} || "";
  my $password = $c->request->params->{password} || "";

  # If the username and password values were found in form
  if ( $username && $password ) {
    if ( $c->authenticate({usuario => $username, password => $password}) ) {
	  my $usuario = $c->model('DB::Usuario')->find({ usuario => $username });
	  $c->session->{'cedula'} = $usuario->cedula;
	  if ( $c->user->administrador eq 'S') {
         	$c->res->redirect( $c->uri_for('/') );
	   }else{
	      $c->res->redirect( $c->uri_for('/quincenas/listar') );
	   }
    }
    else {
      $c->stash->{error_msg} = "Credenciales de usuario inválidas";
    }
  }     
}

=head2 logout

Acción para fin de sesión

=cut

sub logout : Local {
  my ( $self, $c ) = @_;

  if ( $c->user_exists ) {
      $c->logout;
  }
  $c->res->redirect( $c->uri_for('/') );
}


=head1 AUTHOR

Juan Paredes

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
