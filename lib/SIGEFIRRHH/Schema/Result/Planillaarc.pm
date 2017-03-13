use utf8;
package SIGEFIRRHH::Schema::Result::Planillaarc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Planillaarc

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

=head1 TABLE: C<planillaarc>

=cut

__PACKAGE__->table("planillaarc");

=head1 ACCESSORS

=head2 id_planilla_arc

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 devengado_enero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_enero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_enero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_febrero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_febrero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_febrero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_marzo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_marzo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_marzo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_abril

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_abril

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_abril

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_mayo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_mayo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_mayo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_junio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_junio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_junio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_julio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_julio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_julio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_agosto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_agosto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_agosto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_septiembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_septiembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_septiembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_octubre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_octubre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_octubre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_noviembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_noviembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_noviembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 devengado_diciembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_diciembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_diciembre

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_hcm

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_caja

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_otros

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_planilla_arc",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "devengado_enero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_enero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_enero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_febrero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_febrero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_febrero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_marzo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_marzo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_marzo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_abril",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_abril",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_abril",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_mayo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_mayo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_mayo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_junio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_junio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_junio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_julio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_julio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_julio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_agosto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_agosto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_agosto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_septiembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_septiembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_septiembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_octubre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_octubre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_octubre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_noviembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_noviembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_noviembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "devengado_diciembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_diciembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_diciembre",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_hcm",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_caja",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_otros",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_planilla_arc>

=back

=cut

__PACKAGE__->set_primary_key("id_planilla_arc");

=head1 UNIQUE CONSTRAINTS

=head2 C<planillaarc_cod>

=over 4

=item * L</id_trabajador>

=item * L</anio>

=back

=cut

__PACKAGE__->add_unique_constraint("planillaarc_cod", ["id_trabajador", "anio"]);

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wxwUZcRP/pXbRohW6WetOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
