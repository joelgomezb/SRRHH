use utf8;
package SIGEFIRRHH::Schema::Result::Unidadejecutora;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Unidadejecutora

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

=head1 TABLE: C<unidadejecutora>

=cut

__PACKAGE__->table("unidadejecutora");

=head1 ACCESSORS

=head2 id_unidad_ejecutora

  data_type: 'integer'
  is_nullable: 0

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 id_programa

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 120

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_unidad_ejecutora",
  { data_type => "integer", is_nullable => 0 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "id_programa",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 120 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_unidad_ejecutora>

=back

=cut

__PACKAGE__->set_primary_key("id_unidad_ejecutora");

=head1 UNIQUE CONSTRAINTS

=head2 C<unidadejecutora_cod>

=over 4

=item * L</cod_unidad_ejecutora>

=back

=cut

__PACKAGE__->add_unique_constraint("unidadejecutora_cod", ["cod_unidad_ejecutora"]);

=head1 RELATIONS

=head2 administradorauels

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Administradorauel>

=cut

__PACKAGE__->has_many(
  "administradorauels",
  "SIGEFIRRHH::Schema::Result::Administradorauel",
  { "foreign.id_unidad_ejecutora" => "self.id_unidad_ejecutora" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_programa

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Programa>

=cut

__PACKAGE__->belongs_to(
  "id_programa",
  "SIGEFIRRHH::Schema::Result::Programa",
  { id_programa => "id_programa" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 uelespecificas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Uelespecifica>

=cut

__PACKAGE__->has_many(
  "uelespecificas",
  "SIGEFIRRHH::Schema::Result::Uelespecifica",
  { "foreign.id_unidad_ejecutora" => "self.id_unidad_ejecutora" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EvFny1WN9ARH4CWR3vB9WQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
