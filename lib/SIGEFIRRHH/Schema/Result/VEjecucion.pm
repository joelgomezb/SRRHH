use utf8;
package SIGEFIRRHH::Schema::Result::VEjecucion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VEjecucion

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_ejecucion>

=cut

__PACKAGE__->table("v_ejecucion");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 descripcion_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 trab_esp_anio

  data_type: 'integer'
  is_nullable: 1

=head2 cod_accion_centralizada

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 acc_cent

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_proyecto

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 proyecto

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=head2 cod_accion_especifica

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 jubilacion

  data_type: 'double precision'
  is_nullable: 1

=head2 pension

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  is_nullable: 1

=head2 antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 pago_unico

  data_type: 'double precision'
  is_nullable: 1

=head2 otras_retribuciones

  data_type: 'double precision'
  is_nullable: 1

=head2 rea

  data_type: 'double precision'
  is_nullable: 1

=head2 resp_jerarquia

  data_type: 'double precision'
  is_nullable: 1

=head2 suplencia

  data_type: 'double precision'
  is_nullable: 1

=head2 labores_especiales

  data_type: 'double precision'
  is_nullable: 1

=head2 pasantias

  data_type: 'double precision'
  is_nullable: 1

=head2 prima_profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_vacacional

  data_type: 'double precision'
  is_nullable: 1

=head2 guarderia

  data_type: 'double precision'
  is_nullable: 1

=head2 becas_escolares

  data_type: 'double precision'
  is_nullable: 1

=head2 asignacion_unica_especial

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_compensatorio_alimentacion

  data_type: 'double precision'
  is_nullable: 1

=head2 seguro_social_obligatorio

  data_type: 'double precision'
  is_nullable: 1

=head2 seguro_paro_forzoso

  data_type: 'double precision'
  is_nullable: 1

=head2 fondo_ahorros_obligatorio_vivienda

  data_type: 'double precision'
  is_nullable: 1

=head2 fondo_espec_jub_pensiones

  data_type: 'double precision'
  is_nullable: 1

=head2 catmenel

  data_type: 'double precision'
  is_nullable: 1

=head2 aportes_catmenel

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "descripcion_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "trab_esp_anio",
  { data_type => "integer", is_nullable => 1 },
  "cod_accion_centralizada",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "acc_cent",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_proyecto",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "proyecto",
  { data_type => "varchar", is_nullable => 1, size => 500 },
  "cod_accion_especifica",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "jubilacion",
  { data_type => "double precision", is_nullable => 1 },
  "pension",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", is_nullable => 1 },
  "antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "pago_unico",
  { data_type => "double precision", is_nullable => 1 },
  "otras_retribuciones",
  { data_type => "double precision", is_nullable => 1 },
  "rea",
  { data_type => "double precision", is_nullable => 1 },
  "resp_jerarquia",
  { data_type => "double precision", is_nullable => 1 },
  "suplencia",
  { data_type => "double precision", is_nullable => 1 },
  "labores_especiales",
  { data_type => "double precision", is_nullable => 1 },
  "pasantias",
  { data_type => "double precision", is_nullable => 1 },
  "prima_profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "bono_vacacional",
  { data_type => "double precision", is_nullable => 1 },
  "guarderia",
  { data_type => "double precision", is_nullable => 1 },
  "becas_escolares",
  { data_type => "double precision", is_nullable => 1 },
  "asignacion_unica_especial",
  { data_type => "double precision", is_nullable => 1 },
  "bono_compensatorio_alimentacion",
  { data_type => "double precision", is_nullable => 1 },
  "seguro_social_obligatorio",
  { data_type => "double precision", is_nullable => 1 },
  "seguro_paro_forzoso",
  { data_type => "double precision", is_nullable => 1 },
  "fondo_ahorros_obligatorio_vivienda",
  { data_type => "double precision", is_nullable => 1 },
  "fondo_espec_jub_pensiones",
  { data_type => "double precision", is_nullable => 1 },
  "catmenel",
  { data_type => "double precision", is_nullable => 1 },
  "aportes_catmenel",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uYxOa79MvNoAnAiVIDrN9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
