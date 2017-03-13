use utf8;
package SIGEFIRRHH::Schema::Result::Concepto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Concepto

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

=head1 TABLE: C<concepto>

=cut

__PACKAGE__->table("concepto");

=head1 ACCESSORS

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 0

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 tipo_prestamo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 unidad

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 valor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 reservado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 sueldo_basico

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 compensacion

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 primas_cargo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 primas_trabajador

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 gravable

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 deduccion_sindicato

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 deduccion_gremio

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 sobretiempo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 beneficio

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 jubilacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 anticipo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 deduccion_caja

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aporte_patronal

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 embargo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 prestaciones_nr

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 prestaciones_vr

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 onapre

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 recalculo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 anual

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 ocurrencia

  data_type: 'double precision'
  default_value: 1
  is_nullable: 0

=head2 movimiento

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 proyeccion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 id_concepto_aporte

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 ajuste_sueldo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 sueldo_integral

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 retroactivo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 id_concepto_retroactivo

  data_type: 'integer'
  is_nullable: 1

=head2 id_concepto_caja

  data_type: 'integer'
  is_nullable: 1

=head2 retroactivo_anterior

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_concepto_retroactivo_anterior

  data_type: 'integer'
  is_nullable: 1

=head2 ausencia

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_concepto_ausencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto",
  { data_type => "integer", is_nullable => 0 },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "tipo_prestamo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "unidad",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "valor",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "reservado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "sueldo_basico",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "compensacion",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "primas_cargo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "primas_trabajador",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "gravable",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "deduccion_sindicato",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "deduccion_gremio",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "sobretiempo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "beneficio",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "jubilacion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "anticipo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "deduccion_caja",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aporte_patronal",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "embargo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "prestaciones_nr",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "prestaciones_vr",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "onapre",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "recalculo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "anual",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "ocurrencia",
  { data_type => "double precision", default_value => 1, is_nullable => 0 },
  "movimiento",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "proyeccion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "id_concepto_aporte",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "ajuste_sueldo",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "sueldo_integral",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "retroactivo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "id_concepto_retroactivo",
  { data_type => "integer", is_nullable => 1 },
  "id_concepto_caja",
  { data_type => "integer", is_nullable => 1 },
  "retroactivo_anterior",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_concepto_retroactivo_anterior",
  { data_type => "integer", is_nullable => 1 },
  "ausencia",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_concepto_ausencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto");

=head1 UNIQUE CONSTRAINTS

=head2 C<concepto_cod>

=over 4

=item * L</cod_concepto>

=back

=cut

__PACKAGE__->add_unique_constraint("concepto_cod", ["cod_concepto"]);

=head1 RELATIONS

=head2 concepto_id_concepto_aportes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->has_many(
  "concepto_id_concepto_aportes",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { "foreign.id_concepto_aporte" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 concepto_id_concepto_ausencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->has_many(
  "concepto_id_concepto_ausencias",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { "foreign.id_concepto_ausencia" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptotipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->has_many(
  "conceptotipopersonals",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { "foreign.id_concepto" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 detalledisquetes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Detalledisquete>

=cut

__PACKAGE__->has_many(
  "detalledisquetes",
  "SIGEFIRRHH::Schema::Result::Detalledisquete",
  { "foreign.id_concepto" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 embargoconceptoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Embargoconcepto>

=cut

__PACKAGE__->has_many(
  "embargoconceptoes",
  "SIGEFIRRHH::Schema::Result::Embargoconcepto",
  { "foreign.id_concepto" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_concepto_aporte

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_aporte",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto_aporte" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "SET NULL",
  },
);

=head2 id_concepto_ausencia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_ausencia",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto_ausencia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "SET NULL",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 seguridadaniversarios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Seguridadaniversario>

=cut

__PACKAGE__->has_many(
  "seguridadaniversarios",
  "SIGEFIRRHH::Schema::Result::Seguridadaniversario",
  { "foreign.id_concepto" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sindicatoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Sindicato>

=cut

__PACKAGE__->has_many(
  "sindicatoes",
  "SIGEFIRRHH::Schema::Result::Sindicato",
  { "foreign.id_concepto" => "self.id_concepto" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FzKyZ6laspgPqPV0IE/f6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
