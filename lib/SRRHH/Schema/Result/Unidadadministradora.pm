use utf8;
package SRRHH::Schema::Result::Unidadadministradora;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Unidadadministradora

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

=head1 TABLE: C<unidadadministradora>

=cut

__PACKAGE__->table("unidadadministradora");

=head1 ACCESSORS

=head2 id_unidad_administradora

  data_type: 'integer'
  is_nullable: 0

=head2 cod_unidad_administ

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 tipo_unidad

  data_type: 'varchar'
  default_value: 'O'
  is_nullable: 1
  size: 1

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_unidad_administradora",
  { data_type => "integer", is_nullable => 0 },
  "cod_unidad_administ",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "tipo_unidad",
  { data_type => "varchar", default_value => "O", is_nullable => 1, size => 1 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_unidad_administradora>

=back

=cut

__PACKAGE__->set_primary_key("id_unidad_administradora");

=head1 UNIQUE CONSTRAINTS

=head2 C<unidadadministradora_cod>

=over 4

=item * L</cod_unidad_administ>

=back

=cut

__PACKAGE__->add_unique_constraint("unidadadministradora_cod", ["cod_unidad_administ"]);

=head1 RELATIONS

=head2 administradorauels

Type: has_many

Related object: L<SRRHH::Schema::Result::Administradorauel>

=cut

__PACKAGE__->has_many(
  "administradorauels",
  "SRRHH::Schema::Result::Administradorauel",
  {
    "foreign.id_unidad_administradora" => "self.id_unidad_administradora",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:88v0PwS13b3cPrK5DYJPOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
