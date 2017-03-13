use utf8;
package SIGEFIRRHH::Schema::Result::Evaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Evaluacion

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

=head1 TABLE: C<evaluacion>

=cut

__PACKAGE__->table("evaluacion");

=head1 ACCESSORS

=head2 id_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cedula_supervisor

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_supervisor

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cedula_jefe

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_jefe

  data_type: 'varchar'
  is_nullable: 1
  size: 50

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

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_accion_evaluacion

  data_type: 'integer'
  is_nullable: 1

=head2 id_resultado_evaluacion

  data_type: 'integer'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 1

=head2 nombre_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 resultado_competencias

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 resultado_objetivos

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 manejo_bienes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 habito_seguridad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 calidad_trabajo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cumplimiento_normas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 atencion_publico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 interes_trabajo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cooperacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cantidad_trabajo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 toma_decisiones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 comunicacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 capacidad_mando

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 coordinacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 nivel

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cedula_supervisor",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_supervisor",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cedula_jefe",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_jefe",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "porcentaje_aumento",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "numero_pasos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_aumentar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_unico",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_accion_evaluacion",
  { data_type => "integer", is_nullable => 1 },
  "id_resultado_evaluacion",
  { data_type => "integer", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_nullable => 1 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 1 },
  "nombre_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "resultado_competencias",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "resultado_objetivos",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "manejo_bienes",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "habito_seguridad",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "calidad_trabajo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cumplimiento_normas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "atencion_publico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "interes_trabajo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cooperacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cantidad_trabajo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "toma_decisiones",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "comunicacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "capacidad_mando",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "coordinacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "nivel",
  { data_type => "varchar", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_evaluacion");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GUlXuszrfbbbTew+dk3+EA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
