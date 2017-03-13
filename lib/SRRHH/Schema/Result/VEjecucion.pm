use utf8;
package SRRHH::Schema::Result::VEjecucion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VEjecucion

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
__PACKAGE__->result_source_instance->view_definition(" SELECT rc.anio,\n    rc.mes,\n    rc.semana_quincena,\n    rc.numero_nomina,\n    rc.nomina_especial,\n    rc.cod_unidad_ejecutora,\n    rc.uel,\n    rc.tipopersonal,\n    rc.cod_presupuesto,\n    rc.descripcion_presupuesto,\n    te.anio AS trab_esp_anio,\n    ac.cod_accion_centralizada,\n    ac.denominacion AS acc_cent,\n    p.cod_proyecto,\n    p.enunciado AS proyecto,\n    ae.cod_accion_especifica,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 1) OR ((rc.codcon)::integer = 36) OR ((rc.codcon)::integer = 38) OR ((rc.codcon)::integer = 42)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS sueldo_basico,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 10) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS jubilacion,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 11) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS pension,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 20) OR ((rc.codcon)::integer = 69)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS compensacion,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 37) OR ((rc.codcon)::integer = 43) OR ((rc.codcon)::integer = 500)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS antiguedad,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 39) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS pago_unico,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 46) OR ((rc.codcon)::integer = 47) OR ((rc.codcon)::integer = 48) OR ((rc.codcon)::integer = 59)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS otras_retribuciones,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 1504) OR ((rc.codcon)::integer = 1700)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS rea,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 53) OR ((rc.codcon)::integer = 501)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS resp_jerarquia,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 54) OR ((rc.codcon)::integer = 55)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS suplencia,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 56) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS labores_especiales,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 58) OR ((rc.codcon)::integer = 60)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS pasantias,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 400) OR ((rc.codcon)::integer = 401) OR ((rc.codcon)::integer = 3400)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS prima_profesionalizacion,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 1500) OR ((rc.codcon)::integer = 1501)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS bono_vacacional,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 4008) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS guarderia,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 4101) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS becas_escolares,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 4298) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS asignacion_unica_especial,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 4300) OR ((rc.codcon)::integer = 4301) OR ((rc.codcon)::integer = 4302) OR ((rc.codcon)::integer = 4305)) THEN (rc.asigna - rc.deduce)\n            ELSE (0)::double precision\n        END) AS bono_compensatorio_alimentacion,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 5001) THEN rc.monto_aporte\n            ELSE (0)::double precision\n        END) AS seguro_social_obligatorio,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 5002) THEN rc.monto_aporte\n            ELSE (0)::double precision\n        END) AS seguro_paro_forzoso,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 5003) THEN rc.monto_aporte\n            ELSE (0)::double precision\n        END) AS fondo_ahorros_obligatorio_vivienda,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 5004) THEN rc.monto_aporte\n            ELSE (0)::double precision\n        END) AS fondo_espec_jub_pensiones,\n    sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 8000) THEN (rc.asigna + rc.deduce)\n            ELSE (0)::double precision\n        END) AS catmenel,\n    sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 278) OR ((rc.codcon)::integer = 279)) THEN (rc.asigna + rc.deduce)\n            ELSE (0)::double precision\n        END) AS aportes_catmenel\n   FROM (((((v_recibos_conjuntos rc\n     LEFT JOIN trabajadorespecifica te ON (((rc.id_trabajador = te.id_trabajador) AND (rc.anio = te.anio))))\n     LEFT JOIN uelespecifica ue ON ((te.id_uel_especifica = ue.id_uel_especifica)))\n     LEFT JOIN accionespecifica ae ON ((ae.id_accion_especifica = ue.id_accion_especifica)))\n     LEFT JOIN proyecto p ON ((p.id_proyecto = ae.id_proyecto)))\n     LEFT JOIN accioncentralizada ac ON ((ac.id_accion_centralizada = ae.id_accion_centralizada)))\n  WHERE (((rc.codcon)::integer = 1) OR ((rc.codcon)::integer = 36) OR ((rc.codcon)::integer = 38) OR ((rc.codcon)::integer = 42) OR ((rc.codcon)::integer = 10) OR ((rc.codcon)::integer = 11) OR ((rc.codcon)::integer = 20) OR ((rc.codcon)::integer = 69) OR ((rc.codcon)::integer = 37) OR ((rc.codcon)::integer = 43) OR ((rc.codcon)::integer = 500) OR ((rc.codcon)::integer = 39) OR ((rc.codcon)::integer = 46) OR ((rc.codcon)::integer = 47) OR ((rc.codcon)::integer = 48) OR ((rc.codcon)::integer = 59) OR ((rc.codcon)::integer = 1504) OR ((rc.codcon)::integer = 1700) OR ((rc.codcon)::integer = 53) OR ((rc.codcon)::integer = 501) OR ((rc.codcon)::integer = 54) OR ((rc.codcon)::integer = 55) OR ((rc.codcon)::integer = 56) OR ((rc.codcon)::integer = 58) OR ((rc.codcon)::integer = 60) OR ((rc.codcon)::integer = 400) OR ((rc.codcon)::integer = 401) OR ((rc.codcon)::integer = 3400) OR ((rc.codcon)::integer = 1500) OR ((rc.codcon)::integer = 1501) OR ((rc.codcon)::integer = 4008) OR ((rc.codcon)::integer = 4101) OR ((rc.codcon)::integer = 4298) OR ((rc.codcon)::integer = 4300) OR ((rc.codcon)::integer = 4301) OR ((rc.codcon)::integer = 4302) OR ((rc.codcon)::integer = 4305) OR ((rc.codcon)::integer = 5001) OR ((rc.codcon)::integer = 5002) OR ((rc.codcon)::integer = 5003) OR ((rc.codcon)::integer = 5004) OR ((rc.codcon)::integer = 8000) OR ((rc.codcon)::integer = 278) OR ((rc.codcon)::integer = 279))\n  GROUP BY rc.anio, rc.mes, rc.semana_quincena, rc.numero_nomina, rc.nomina_especial, rc.cod_unidad_ejecutora, rc.uel, rc.tipopersonal, rc.cod_presupuesto, rc.descripcion_presupuesto, ae.cod_accion_especifica, te.anio, ac.cod_accion_centralizada, ac.denominacion, p.cod_proyecto, p.enunciado\n  ORDER BY rc.semana_quincena, rc.anio, rc.mes");

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


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qBDqPZ4ZeyAqfzkM+ttrNg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
