package SRRHH::View::PDFLatex;

use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    INCLUDE_PATH => [
        SRRHH->path_to( 'root', 'src' ),
        SRRHH->path_to( 'root', 'lib' )
    ],
    TEMPLATE_EXTENSION => '.tt2',
    render_die => 1,
    CATALYST_VAR  => 'Catalyst',
    ENCODING => 'UTF-8',
    expose_methods => [ 'tex_encode' ],
);


=head2 tex_encode

Retorna una cadena codificada para latex

=cut

sub tex_encode {
  my ($self, $c, $cadena) = @_;

  use TeX::Encode;
  use Encode;

  return encode('latex', $cadena );
}


=head1 NAME

SRRHH::View::PDFLatex - TT View for SRRHH

=head1 DESCRIPTION

TT View for SRRHH.

=head1 SEE ALSO

L<SRRHH>

=head1 AUTHOR

Juan Paredes

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
