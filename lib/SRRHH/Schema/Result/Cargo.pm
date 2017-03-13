use utf8;
package SRRHH::Schema::Result::Cargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cargo

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

=head1 TABLE: C<cargo>

=cut

__PACKAGE__->table("cargo");

=head1 ACCESSORS

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 id_manual_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_cargo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=head2 grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sub_grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 caucion

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 decreto

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=cut

__PACKAGE__->add_columns(
  "id_cargo",
  { data_type => "integer", is_nullable => 0 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "id_manual_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo_cargo",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
  "grado",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sub_grado",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "caucion",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "decreto",
  { data_type => "varchar", is_nullable => 1, size => 5 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_cargo");

=head1 RELATIONS

=head2 adiestramientocargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Adiestramientocargo>

=cut

__PACKAGE__->has_many(
  "adiestramientocargoes",
  "SRRHH::Schema::Result::Adiestramientocargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dotacioncargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Dotacioncargo>

=cut

__PACKAGE__->has_many(
  "dotacioncargoes",
  "SRRHH::Schema::Result::Dotacioncargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 experienciacargo_id_cargo_requeridoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Experienciacargo>

=cut

__PACKAGE__->has_many(
  "experienciacargo_id_cargo_requeridoes",
  "SRRHH::Schema::Result::Experienciacargo",
  { "foreign.id_cargo_requerido" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 experienciacargo_id_cargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Experienciacargo>

=cut

__PACKAGE__->has_many(
  "experienciacargo_id_cargoes",
  "SRRHH::Schema::Result::Experienciacargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 habilidadcargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Habilidadcargo>

=cut

__PACKAGE__->has_many(
  "habilidadcargoes",
  "SRRHH::Schema::Result::Habilidadcargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialremuns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SRRHH::Schema::Result::Historialremun",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_manual_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Manualcargo>

=cut

__PACKAGE__->belongs_to(
  "id_manual_cargo",
  "SRRHH::Schema::Result::Manualcargo",
  { id_manual_cargo => "id_manual_cargo" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 nominaconversions

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominaconversion>

=cut

__PACKAGE__->has_many(
  "nominaconversions",
  "SRRHH::Schema::Result::Nominaconversion",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 perfil

Type: might_have

Related object: L<SRRHH::Schema::Result::Perfil>

=cut

__PACKAGE__->might_have(
  "perfil",
  "SRRHH::Schema::Result::Perfil",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 primascargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Primascargo>

=cut

__PACKAGE__->has_many(
  "primascargoes",
  "SRRHH::Schema::Result::Primascargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profesioncargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Profesioncargo>

=cut

__PACKAGE__->has_many(
  "profesioncargoes",
  "SRRHH::Schema::Result::Profesioncargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SRRHH::Schema::Result::Registrocargo",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargosaprobadoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargosaprobado>

=cut

__PACKAGE__->has_many(
  "registrocargosaprobadoes",
  "SRRHH::Schema::Result::Registrocargosaprobado",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrodocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrodocente>

=cut

__PACKAGE__->has_many(
  "registrodocentes",
  "SRRHH::Schema::Result::Registrodocente",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 servicioexteriors

Type: has_many

Related object: L<SRRHH::Schema::Result::Servicioexterior>

=cut

__PACKAGE__->has_many(
  "servicioexteriors",
  "SRRHH::Schema::Result::Servicioexterior",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_cargo_reals

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_cargo_reals",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_cargo_real" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_cargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_cargoes",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_cargo" => "self.id_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7hvH87WN3WnkxCvW243V9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
