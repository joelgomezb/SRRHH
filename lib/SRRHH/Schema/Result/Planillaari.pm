use utf8;
package SRRHH::Schema::Result::Planillaari;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Planillaari

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

=head1 TABLE: C<planillaari>

=cut

__PACKAGE__->table("planillaari");

=head1 ACCESSORS

=head2 id_planilla_ari

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 remuneraciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 desgravamenes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_cargas

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 remuneraciones_variacion1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 desgravamenes_variacion1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_cargas_variacion1

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_variacion1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 remuneraciones_variacion2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 desgravamenes_variacion2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_cargas_variacion2

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_variacion2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 remuneraciones_variacion3

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 desgravamenes_variacion3

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_cargas_variacion3

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_variacion3

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 remuneraciones_variacion4

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 desgravamenes_variacion4

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_cargas_variacion4

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_variacion4

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_planilla_ari",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "remuneraciones",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "desgravamenes",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_cargas",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "remuneraciones_variacion1",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "desgravamenes_variacion1",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_cargas_variacion1",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_variacion1",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "remuneraciones_variacion2",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "desgravamenes_variacion2",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_cargas_variacion2",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_variacion2",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "remuneraciones_variacion3",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "desgravamenes_variacion3",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_cargas_variacion3",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_variacion3",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "remuneraciones_variacion4",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "desgravamenes_variacion4",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_cargas_variacion4",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_variacion4",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_planilla_ari>

=back

=cut

__PACKAGE__->set_primary_key("id_planilla_ari");

=head1 UNIQUE CONSTRAINTS

=head2 C<planillaari_cod>

=over 4

=item * L</id_trabajador>

=item * L</anio>

=back

=cut

__PACKAGE__->add_unique_constraint("planillaari_cod", ["id_trabajador", "anio"]);

=head1 RELATIONS

=head2 id_trabajador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F047kNHteD3FKiFCaGpOVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
