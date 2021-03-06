use utf8;
package SRRHH::Schema::Result::Tipocaracteristica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipocaracteristica

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<tipocaracteristica>

=cut

__PACKAGE__->table("tipocaracteristica");

=head1 ACCESSORS

=head2 id_tipo_caracteristica

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_caracteristica

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_caracteristica",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_caracteristica",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_caracteristica>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_caracteristica");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xW69UPyQMCE3xf7mF8Lm7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
