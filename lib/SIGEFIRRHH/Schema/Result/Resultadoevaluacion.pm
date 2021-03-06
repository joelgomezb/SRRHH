use utf8;
package SIGEFIRRHH::Schema::Result::Resultadoevaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Resultadoevaluacion

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

=head1 TABLE: C<resultadoevaluacion>

=cut

__PACKAGE__->table("resultadoevaluacion");

=head1 ACCESSORS

=head2 id_resultado_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cod_resultado_evaluacion

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 rango_minimo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 rango_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_aumento

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 numero_pasos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_aumentar

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_unico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_resultado_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cod_resultado_evaluacion",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "rango_minimo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "rango_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_aumento",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "numero_pasos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_aumentar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_unico",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_resultado_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_resultado_evaluacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<resultadoevaluacion_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</anio>

=item * L</cod_resultado_evaluacion>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "resultadoevaluacion_cod",
  ["id_tipo_personal", "anio", "cod_resultado_evaluacion"],
);

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DMioyLoAyuFpMjrVR1jTOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
