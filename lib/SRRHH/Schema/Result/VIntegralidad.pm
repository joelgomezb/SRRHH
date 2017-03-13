use utf8;
package SRRHH::Schema::Result::VIntegralidad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VIntegralidad

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

=head1 TABLE: C<v_integralidad>

=cut

__PACKAGE__->table("v_integralidad");
__PACKAGE__->result_source_instance->view_definition(" SELECT rc.anio,\n    rc.mes,\n    rc.semana_quincena,\n    rc.tipopersonal,\n    rc.cedula,\n    (((((((rc.primer_nombre)::text || ' '::text) || (rc.segundo_nombre)::text) || ', '::text) || (rc.primer_apellido)::text) || ' '::text) || (rc.segundo_apellido)::text) AS trabajador,\n    rc.cargo,\n        CASE\n            WHEN ((t.situacion)::integer = 1) THEN 'normal'::character varying\n            ELSE\n            CASE\n                WHEN ((t.situacion)::integer = 2) THEN 'encargado'::character varying\n                ELSE t.situacion\n            END\n        END AS situacion,\n    rc.cod_unidad_ejecutora AS cod_uel,\n    rc.uel,\n        CASE\n            WHEN ((t.situacion)::integer = 2) THEN car.descripcion_cargo\n            ELSE 'normal'::character varying\n        END AS encargaduria,\n    rc.ingresoorganismo AS ingreso,\n    rc.fecha_vacaciones AS vacaciones,\n    rc.fecha_antiguedad AS f_ant,\n    COALESCE(b.anios_servicio, 0) AS a_servicio,\n    COALESCE(v.dias_bono, 0) AS dias_bv,\n    (sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 1) OR ((rc.codcon)::integer = 36) OR ((rc.codcon)::integer = 42)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS sueldo,\n    (sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 7) OR ((rc.codcon)::integer = 54)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS suplencia,\n    (sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 56) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS labor_especial,\n    (sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 400) OR ((rc.codcon)::integer = 401)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS profesionalizacion,\n    (sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 11) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS pension,\n    (sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 10) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS jubilacion,\n    (sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 46) OR ((rc.codcon)::integer = 47)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS otras_ret,\n    (sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 2000) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS bono_nocturno,\n    (sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 45) OR ((rc.codcon)::integer = 501)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS jerarquia,\n    (sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 20) THEN rc.asigna\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS compensacion,\n    COALESCE(b.monto, (0)::double precision) AS antiguedad,\n    (((((((((((sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 1) OR ((rc.codcon)::integer = 36) OR ((rc.codcon)::integer = 42)) THEN rc.asigna\n            ELSE (0)::double precision\n        END) + sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 7) OR ((rc.codcon)::integer = 54)) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 400) OR ((rc.codcon)::integer = 401)) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 11) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 10) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 46) OR ((rc.codcon)::integer = 47)) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 2000) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (((rc.codcon)::integer = 45) OR ((rc.codcon)::integer = 501)) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 56) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((rc.codcon)::integer = 20) THEN rc.asigna\n            ELSE (0)::double precision\n        END)) + COALESCE(b.monto, (0)::double precision)) * (2)::double precision) AS normal,\n    (\n        CASE\n            WHEN (rc.ingresoorganismo >= '2013-03-31'::date) THEN 90\n            ELSE 180\n        END + COALESCE(v.dias_bono, 0)) AS dias_bfa,\n    (\n        CASE\n            WHEN (rc.ingresoorganismo >= '2013-03-31'::date) THEN 90\n            ELSE 180\n        END + 90) AS dias_bvaca,\n    ((\n        CASE\n            WHEN (rc.ingresoorganismo >= '2013-03-31'::date) THEN 60\n            ELSE 120\n        END + 90) + COALESCE(v.dias_bono, 0)) AS dias_bono\n   FROM ((((v_recibos_conjuntos rc\n     LEFT JOIN ( SELECT primaantiguedad.id_tipo_personal,\n            primaantiguedad.anios_servicio,\n            primaantiguedad.monto\n           FROM primaantiguedad) b ON (((rc.id_tipo_personal = b.id_tipo_personal) AND (date_part('year'::text, age(now(), (rc.fecha_antiguedad)::timestamp with time zone)) = (b.anios_servicio)::double precision))))\n     LEFT JOIN ( SELECT vacacionesporanio.id_tipo_personal,\n            vacacionesporanio.anios_servicio,\n            vacacionesporanio.dias_bono\n           FROM vacacionesporanio) v ON (((rc.id_tipo_personal = v.id_tipo_personal) AND (date_part('year'::text, age(now(), (rc.fecha_antiguedad)::timestamp with time zone)) = (v.anios_servicio)::double precision))))\n     JOIN trabajador t ON ((t.id_trabajador = rc.id_trabajador)))\n     JOIN cargo car ON ((car.id_cargo = t.id_cargo_real)))\n  GROUP BY rc.anio, rc.mes, rc.semana_quincena, rc.tipopersonal, rc.id_tipo_personal, rc.cod_unidad_ejecutora, rc.uel, rc.cargo, t.situacion, car.descripcion_cargo, rc.cedula, (((((((rc.primer_nombre)::text || ' '::text) || (rc.segundo_nombre)::text) || ', '::text) || (rc.primer_apellido)::text) || ' '::text) || (rc.segundo_apellido)::text), rc.ingresoorganismo, rc.fecha_vacaciones, rc.fecha_antiguedad, b.anios_servicio, b.monto, v.dias_bono\n  ORDER BY rc.anio, rc.mes, rc.semana_quincena, rc.cod_unidad_ejecutora, rc.tipopersonal, rc.id_tipo_personal, rc.cedula");

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

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 situacion

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_uel

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 encargaduria

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 ingreso

  data_type: 'date'
  is_nullable: 1

=head2 vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 f_ant

  data_type: 'date'
  is_nullable: 1

=head2 a_servicio

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bv

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo

  data_type: 'double precision'
  is_nullable: 1

=head2 suplencia

  data_type: 'double precision'
  is_nullable: 1

=head2 labor_especial

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 pension

  data_type: 'double precision'
  is_nullable: 1

=head2 jubilacion

  data_type: 'double precision'
  is_nullable: 1

=head2 otras_ret

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_nocturno

  data_type: 'double precision'
  is_nullable: 1

=head2 jerarquia

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  is_nullable: 1

=head2 antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 normal

  data_type: 'double precision'
  is_nullable: 1

=head2 dias_bfa

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bvaca

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bono

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "situacion",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_uel",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "encargaduria",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "ingreso",
  { data_type => "date", is_nullable => 1 },
  "vacaciones",
  { data_type => "date", is_nullable => 1 },
  "f_ant",
  { data_type => "date", is_nullable => 1 },
  "a_servicio",
  { data_type => "integer", is_nullable => 1 },
  "dias_bv",
  { data_type => "integer", is_nullable => 1 },
  "sueldo",
  { data_type => "double precision", is_nullable => 1 },
  "suplencia",
  { data_type => "double precision", is_nullable => 1 },
  "labor_especial",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "pension",
  { data_type => "double precision", is_nullable => 1 },
  "jubilacion",
  { data_type => "double precision", is_nullable => 1 },
  "otras_ret",
  { data_type => "double precision", is_nullable => 1 },
  "bono_nocturno",
  { data_type => "double precision", is_nullable => 1 },
  "jerarquia",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", is_nullable => 1 },
  "antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "normal",
  { data_type => "double precision", is_nullable => 1 },
  "dias_bfa",
  { data_type => "integer", is_nullable => 1 },
  "dias_bvaca",
  { data_type => "integer", is_nullable => 1 },
  "dias_bono",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KCgEHDuPcgwIXSCNmyGTxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
