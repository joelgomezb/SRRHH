use utf8;
package SRRHH::Schema::Result::VIntegral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VIntegral

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

=head1 TABLE: C<v_integral>

=cut

__PACKAGE__->table("v_integral");
__PACKAGE__->result_source_instance->view_definition(" SELECT t.cedula,\n    (((p.primer_nombre)::text || ' '::text) || (p.primer_apellido)::text) AS trabajador,\n    t.fecha_ingreso,\n    t.fecha_antiguedad,\n    t.fecha_vacaciones,\n    tp.nombre AS tipopersonal,\n    car.descripcion_cargo AS cargo,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 1) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS sueldo_basico,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 10) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS jubilacion,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 20) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS compensacion,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 36) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS nivelacion_sueldo_minimo,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 42) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_sueldo,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 43) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_prima_antig,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 45) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_prima_responsabilidad_jerarq,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 46) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS otras_retribuciones,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 47) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_otras_retribuciones_encargaduria,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 52) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_antiguedad_encargaduria,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 59) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS dif_otras_retribuciones,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 102) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS bono_compensatorio,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 400) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS profesionalizacion,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 500) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS antiguedad,\n    (sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 501) THEN cf.monto\n            ELSE (0)::double precision\n        END) * (2)::double precision) AS reponsabilidad_jerarquia,\n    (((((((((((((((sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 1) THEN cf.monto\n            ELSE (0)::double precision\n        END) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 10) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 20) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 36) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 42) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 43) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 45) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 46) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 47) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 52) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 59) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 102) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 400) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 500) THEN cf.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 501) THEN cf.monto\n            ELSE (0)::double precision\n        END)) * (2)::double precision) AS normal,\n    sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 615) THEN cf.monto\n            ELSE (0)::double precision\n        END) AS integral,\n    sum(\n        CASE\n            WHEN (((c.cod_concepto)::integer = 615) AND (tp.id_tipo_personal = ANY (ARRAY[12, 13, 22, 28, 82, 93, 111, 121]))) THEN (((((((43 + 60) + 60) + 60) + 90))::double precision * cf.monto) / (30)::double precision)\n            ELSE (((((((15 + 60) + 60) + 60) + 90))::double precision * cf.monto) / (30)::double precision)\n        END) AS bonos,\n    sum(\n        CASE\n            WHEN ((c.cod_concepto)::integer = 615) THEN (((120)::double precision * cf.monto) / (30)::double precision)\n            ELSE (0)::double precision\n        END) AS aportescaja\n   FROM trabajador t,\n    personal p,\n    cargo car,\n    conceptofijo cf,\n    conceptotipopersonal ctp,\n    concepto c,\n    tipopersonal tp\n  WHERE ((t.id_trabajador = cf.id_trabajador) AND (ctp.id_concepto = c.id_concepto) AND (t.id_tipo_personal = tp.id_tipo_personal) AND ((t.estatus)::text = 'A'::text) AND (p.cedula = t.cedula) AND (t.id_cargo = car.id_cargo) AND (ctp.id_concepto_tipo_personal = cf.id_concepto_tipo_personal) AND ((c.cod_concepto)::integer < 5000))\n  GROUP BY t.cedula, (((p.primer_nombre)::text || ' '::text) || (p.primer_apellido)::text), t.fecha_ingreso, t.fecha_antiguedad, t.fecha_vacaciones, tp.nombre, car.descripcion_cargo\n  ORDER BY t.cedula");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_antiguedad

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 jubilacion

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  is_nullable: 1

=head2 nivelacion_sueldo_minimo

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_sueldo

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_prima_antig

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_prima_responsabilidad_jerarq

  data_type: 'double precision'
  is_nullable: 1

=head2 otras_retribuciones

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_otras_retribuciones_encargaduria

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_antiguedad_encargaduria

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_otras_retribuciones

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_compensatorio

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 reponsabilidad_jerarquia

  data_type: 'double precision'
  is_nullable: 1

=head2 normal

  data_type: 'double precision'
  is_nullable: 1

=head2 integral

  data_type: 'double precision'
  is_nullable: 1

=head2 bonos

  data_type: 'double precision'
  is_nullable: 1

=head2 aportescaja

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_antiguedad",
  { data_type => "date", is_nullable => 1 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "jubilacion",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", is_nullable => 1 },
  "nivelacion_sueldo_minimo",
  { data_type => "double precision", is_nullable => 1 },
  "dif_sueldo",
  { data_type => "double precision", is_nullable => 1 },
  "dif_prima_antig",
  { data_type => "double precision", is_nullable => 1 },
  "dif_prima_responsabilidad_jerarq",
  { data_type => "double precision", is_nullable => 1 },
  "otras_retribuciones",
  { data_type => "double precision", is_nullable => 1 },
  "dif_otras_retribuciones_encargaduria",
  { data_type => "double precision", is_nullable => 1 },
  "dif_antiguedad_encargaduria",
  { data_type => "double precision", is_nullable => 1 },
  "dif_otras_retribuciones",
  { data_type => "double precision", is_nullable => 1 },
  "bono_compensatorio",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "reponsabilidad_jerarquia",
  { data_type => "double precision", is_nullable => 1 },
  "normal",
  { data_type => "double precision", is_nullable => 1 },
  "integral",
  { data_type => "double precision", is_nullable => 1 },
  "bonos",
  { data_type => "double precision", is_nullable => 1 },
  "aportescaja",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WqE3J5rfy4GpHQpIfBN80w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
