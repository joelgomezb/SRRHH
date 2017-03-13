use utf8;
package SRRHH::Schema::Result::Uelespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Uelespecifica

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

=head1 TABLE: C<uelespecifica>

=cut

__PACKAGE__->table("uelespecifica");

=head1 ACCESSORS

=head2 id_uel_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_accion_especifica

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_unidad_ejecutora

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 categoria_presupuesto

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_uel_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_accion_especifica",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_unidad_ejecutora",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "categoria_presupuesto",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_uel_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_uel_especifica");

=head1 UNIQUE CONSTRAINTS

=head2 C<uelespecifica_cod>

=over 4

=item * L</id_accion_especifica>

=item * L</id_unidad_ejecutora>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "uelespecifica_cod",
  ["id_accion_especifica", "id_unidad_ejecutora"],
);

=head1 RELATIONS

=head2 cargoespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Cargoespecifica>

=cut

__PACKAGE__->has_many(
  "cargoespecificas",
  "SRRHH::Schema::Result::Cargoespecifica",
  { "foreign.id_uel_especifica" => "self.id_uel_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptoespecifica>

=cut

__PACKAGE__->has_many(
  "conceptoespecificas",
  "SRRHH::Schema::Result::Conceptoespecifica",
  { "foreign.id_uel_especifica" => "self.id_uel_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_accion_especifica

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Accionespecifica>

=cut

__PACKAGE__->belongs_to(
  "id_accion_especifica",
  "SRRHH::Schema::Result::Accionespecifica",
  { id_accion_especifica => "id_accion_especifica" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_unidad_ejecutora

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Unidadejecutora>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_ejecutora",
  "SRRHH::Schema::Result::Unidadejecutora",
  { id_unidad_ejecutora => "id_unidad_ejecutora" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 partidauelespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Partidauelespecifica>

=cut

__PACKAGE__->has_many(
  "partidauelespecificas",
  "SRRHH::Schema::Result::Partidauelespecifica",
  { "foreign.id_uel_especifica" => "self.id_uel_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 presupuestoespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Presupuestoespecifica>

=cut

__PACKAGE__->has_many(
  "presupuestoespecificas",
  "SRRHH::Schema::Result::Presupuestoespecifica",
  { "foreign.id_uel_especifica" => "self.id_uel_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadorespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajadorespecifica>

=cut

__PACKAGE__->has_many(
  "trabajadorespecificas",
  "SRRHH::Schema::Result::Trabajadorespecifica",
  { "foreign.id_uel_especifica" => "self.id_uel_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RcoLUqdiJAWShiI7+iEQow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
