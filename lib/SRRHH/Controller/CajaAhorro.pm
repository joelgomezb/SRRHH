package SRRHH::Controller::CajaAhorro;

use Moose;
use namespace::autoclean;
use utf8;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

reportessigefirrhh::Controller::CajaAhorro - Catalyst Controller

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
    my ( $self, $c ) = @_;

    if ( $c->user->administrador eq 'N' ) { 
      $c->detach('/access_denied');
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
