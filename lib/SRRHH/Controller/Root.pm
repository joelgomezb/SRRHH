package SRRHH::Controller::Root;

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=head1 NAME

RecibosPago::Controller::Root - Root Controller for RecibosPago

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
  my ( $self, $c ) = @_;

  unless ( $c->user_exists ) {
    $c->res->redirect('/usuarios/login');
  }elsif( $c->user->administrador ne 'S' ){
    $c->res->redirect('/quincenas/listar');
  }else{

	my $tipo_personal = $c->model("DB::Ztrabajadortipopersonal")->search({} , { bind => [ '12' ] });

	my @personal = split(',', $tipo_personal->first->get_column('resultado'));
	$personal[2] =~ s/\)//g;

	$c->stash->{'empleado_fijo'} = $personal[2];

	
	my $emp_contratado = $c->model("DB::Ztrabajadortipopersonal")->search({} , { bind => [ '28' ] });
	my @contratado = split(',', $emp_contratado->first->get_column('resultado'));
	$contratado[2] =~ s/\)//g;
	$c->stash->{'contratado'} = $contratado[2];


	my $alto_nivel = $c->model("DB::Ztrabajadortipopersonal")->search({} , { bind => [ '82' ] });
	my @alto_nivel = split(',', $alto_nivel->first->get_column('resultado'));
	$alto_nivel[2] =~ s/\)//g;
	$c->stash->{'alto_nivel'} = $alto_nivel[2];

	my $genero = $c->model("DB::Zgenero")->search({});
	my $emp_genero =  $genero->first->get_column('resultado');
	$emp_genero =~ s/\(|\)|"//g;
	$c->stash->{'genero'} = $emp_genero;

	#$c->stash->{'error_msg'} = 'Este es el mensaje de error que debe salir en todo el sistema de recursos humanos!!!';
    
  }

  
}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 auto

=cut

sub auto: Private {
  my ( $self, $c ) = @_;
 
  return 1 if ($c->req->path eq "usuarios/login" || $c->req->path eq "usuarios/logout" );
  if ( $c->user_exists ) {
    return 1;
  }
  else {
    $c->res->redirect('/usuarios/login');
    return 0;
  }
}

=head2 access_denied

Plantilla de Acceso Denegado

=cut

sub access_denied : Private {
  my ($self, $c) = @_;
  $c->stash->{template} = 'denied.tt2';
  return 0;
}

=head2 buscar_modelo

Retorna el modelo de BD donde puede ubicarse un trabajador dada su cédula

=cut

sub buscar_modelo : Private {
  my ($self, $c, $cedula) = @_;

  my $encontrado = $c->model('DB::Personal')->find( { cedula => $cedula }, { key => 'personal_cod' } );
  if ( $encontrado ) {
    return 'DB';
  }
  else {
    $encontrado = $c->model('DB::Personal')->find( { cedula => $cedula }, { key => 'personal_cod' } );
    if ( $encontrado ) {
      return 'DB';
    }
    else {
      return '';
    }
  }
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Juan Paredes

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
