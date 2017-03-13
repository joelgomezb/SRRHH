use utf8;
package SIGEFIRRHH::Schema::Result::Nominadiplomatico;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Nominadiplomatico

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

=head1 TABLE: C<nominadiplomatico>

=cut

__PACKAGE__->table("nominadiplomatico");

=head1 ACCESSORS

=head2 id_nomina_diplomatico

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  is_nullable: 0

=head2 numero_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 asignacion_bs

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 asignacion_otra_moneda

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 deduccion_ley_bs

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 deduccion_ley_otra_moneda

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 deduccion_personal_bs

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 deduccion_personal_otra_moneda

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 asignacion_mre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fluctuacion_mre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 asignacion_anual_onu

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ajuste_anual_onu

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 asignacion_mensual_onu

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 prima_destino_onu

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 prima_destino_mre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 otras_asignaciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 multiplicador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

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
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_nomina_diplomatico",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "asignacion_bs",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "asignacion_otra_moneda",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "deduccion_ley_bs",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "deduccion_ley_otra_moneda",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "deduccion_personal_bs",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "deduccion_personal_otra_moneda",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "asignacion_mre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fluctuacion_mre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "asignacion_anual_onu",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ajuste_anual_onu",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "asignacion_mensual_onu",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "prima_destino_onu",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "prima_destino_mre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "otras_asignaciones",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "multiplicador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_nomina_diplomatico>

=back

=cut

__PACKAGE__->set_primary_key("id_nomina_diplomatico");

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "SET NULL" },
);

=head2 id_dependencia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SIGEFIRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_trabajador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:o1hr5KgRmf3k0q7xNH+D3g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
