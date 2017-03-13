use utf8;
package SRRHH::Schema::Result::Accioncentralizada;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Accioncentralizada

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

=head1 TABLE: C<accioncentralizada>

=cut

__PACKAGE__->table("accioncentralizada");

=head1 ACCESSORS

=head2 id_accion_centralizada

  data_type: 'integer'
  is_nullable: 0

=head2 cod_accion_centralizada

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 denominacion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_accion_centralizada",
  { data_type => "integer", is_nullable => 0 },
  "cod_accion_centralizada",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "denominacion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_accion_centralizada>

=back

=cut

__PACKAGE__->set_primary_key("id_accion_centralizada");

=head1 UNIQUE CONSTRAINTS

=head2 C<accioncentralizada_cod>

=over 4

=item * L</anio>

=item * L</cod_accion_centralizada>

=back

=cut

__PACKAGE__->add_unique_constraint("accioncentralizada_cod", ["anio", "cod_accion_centralizada"]);

=head1 RELATIONS

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TyTaMCe+UWbfMtai3rHD4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
