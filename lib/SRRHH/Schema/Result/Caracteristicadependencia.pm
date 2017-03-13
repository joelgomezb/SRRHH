use utf8;
package SRRHH::Schema::Result::Caracteristicadependencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Caracteristicadependencia

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

=head1 TABLE: C<caracteristicadependencia>

=cut

__PACKAGE__->table("caracteristicadependencia");

=head1 ACCESSORS

=head2 id_caracteristica_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 codigo

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 id_tipo_caracteristica

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_caracteristica_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "codigo",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "id_tipo_caracteristica",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_caracteristica_dependencia>

=back

=cut

__PACKAGE__->set_primary_key("id_caracteristica_dependencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<caractdependenciacod>

=over 4

=item * L</id_tipo_caracteristica>

=item * L</codigo>

=back

=cut

__PACKAGE__->add_unique_constraint("caractdependenciacod", ["id_tipo_caracteristica", "codigo"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xrklk5rOz3/ug4czZ/vCkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
