use utf8;
package SRRHH::Schema::Result::Historiconomina;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Historiconomina

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

=head1 TABLE: C<historiconomina>

=cut

__PACKAGE__->table("historiconomina");

=head1 ACCESSORS

=head2 id_historico_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 numero_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 semana_quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 numero_registro

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 forma_pago

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 id_banco

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_cta_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cuenta_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 situacion

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 2

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_nomina_especial

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_lugar_pago

  data_type: 'integer'
  is_nullable: 1

=head2 id_unidad_ejecutora

  data_type: 'integer'
  is_nullable: 1

=head2 id_unidad_administradora

  data_type: 'integer'
  is_nullable: 1

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 cod_unidad_administ

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 id_sede

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_region

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_sede

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 cod_region

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 mes_sobretiempo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio_sobretiempo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 lunes_retroactivo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 lunes_primera

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 lunes_segunda

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 hay_retroactivo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 codigo_patronal

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 categoria_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "id_historico_nomina",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "semana_quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_nullable => 0 },
  "numero_registro",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "forma_pago",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "id_banco",
  { data_type => "integer", is_nullable => 1 },
  "tipo_cta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "situacion",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 2 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_nomina_especial",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_lugar_pago",
  { data_type => "integer", is_nullable => 1 },
  "id_unidad_ejecutora",
  { data_type => "integer", is_nullable => 1 },
  "id_unidad_administradora",
  { data_type => "integer", is_nullable => 1 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "cod_unidad_administ",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "id_sede",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_region",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cod_sede",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "mes_sobretiempo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_sobretiempo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "lunes_retroactivo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "lunes_primera",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "lunes_segunda",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "hay_retroactivo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "codigo_patronal",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "categoria_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historico_nomina>

=back

=cut

__PACKAGE__->set_primary_key("id_historico_nomina");

=head1 RELATIONS

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_nomina_especial

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Nominaespecial>

=cut

__PACKAGE__->belongs_to(
  "id_nomina_especial",
  "SRRHH::Schema::Result::Nominaespecial",
  { id_nomina_especial => "id_nomina_especial" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "SET NULL",
  },
);

=head2 id_region

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Region>

=cut

__PACKAGE__->belongs_to(
  "id_region",
  "SRRHH::Schema::Result::Region",
  { id_region => "id_region" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_sede

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->belongs_to(
  "id_sede",
  "SRRHH::Schema::Result::Sede",
  { id_sede => "id_sede" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:O4Zljs2+Plf0gCKixH5QXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
