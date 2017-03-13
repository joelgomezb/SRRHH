use utf8;
package SRRHH::Schema::Result::Registrocargosaprobado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Registrocargosaprobado

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

=head1 TABLE: C<registrocargosaprobado>

=cut

__PACKAGE__->table("registrocargosaprobado");

=head1 ACCESSORS

=head2 id_registro_cargos_aprobado

  data_type: 'integer'
  is_nullable: 0

=head2 id_registro

  data_type: 'integer'
  is_nullable: 0

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 accion

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 fecha_accion

  data_type: 'date'
  is_nullable: 1

=head2 horas

  data_type: 'double precision'
  default_value: 8
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_region

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_registro_cargos_aprobado",
  { data_type => "integer", is_nullable => 0 },
  "id_registro",
  { data_type => "integer", is_nullable => 0 },
  "id_plan_personal",
  { data_type => "integer", is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "accion",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
  "estatus",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "fecha_accion",
  { data_type => "date", is_nullable => 1 },
  "horas",
  { data_type => "double precision", default_value => 8, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_region",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_registro_cargos_aprobado>

=back

=cut

__PACKAGE__->set_primary_key("id_registro_cargos_aprobado");

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_dependencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_region

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Region>

=cut

__PACKAGE__->belongs_to(
  "id_region",
  "SRRHH::Schema::Result::Region",
  { id_region => "id_region" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YABd5jMRa2etz8LkxjIKuA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
