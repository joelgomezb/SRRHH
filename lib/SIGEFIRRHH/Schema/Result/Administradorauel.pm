use utf8;
package SIGEFIRRHH::Schema::Result::Administradorauel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Administradorauel

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

=head1 TABLE: C<administradorauel>

=cut

__PACKAGE__->table("administradorauel");

=head1 ACCESSORS

=head2 id_administradora_uel

  data_type: 'integer'
  is_nullable: 0

=head2 id_unidad_ejecutora

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_unidad_administradora

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_administradora_uel",
  { data_type => "integer", is_nullable => 0 },
  "id_unidad_ejecutora",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_unidad_administradora",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_administradora_uel>

=back

=cut

__PACKAGE__->set_primary_key("id_administradora_uel");

=head1 UNIQUE CONSTRAINTS

=head2 C<administradorauel_cod>

=over 4

=item * L</id_unidad_administradora>

=item * L</id_unidad_ejecutora>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "administradorauel_cod",
  ["id_unidad_administradora", "id_unidad_ejecutora"],
);

=head1 RELATIONS

=head2 dependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { "foreign.id_administradora_uel" => "self.id_administradora_uel" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_unidad_administradora

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Unidadadministradora>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_administradora",
  "SIGEFIRRHH::Schema::Result::Unidadadministradora",
  { id_unidad_administradora => "id_unidad_administradora" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_unidad_ejecutora

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Unidadejecutora>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_ejecutora",
  "SIGEFIRRHH::Schema::Result::Unidadejecutora",
  { id_unidad_ejecutora => "id_unidad_ejecutora" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4JY19ikWPqnlVsKxmlXjYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
