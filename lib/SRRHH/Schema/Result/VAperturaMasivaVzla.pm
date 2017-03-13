use utf8;
package SRRHH::Schema::Result::VAperturaMasivaVzla;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VAperturaMasivaVzla

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

=head1 TABLE: C<v_apertura_masiva_vzla>

=cut

__PACKAGE__->table("v_apertura_masiva_vzla");
__PACKAGE__->result_source_instance->view_definition(" SELECT (p.nacionalidad)::text AS tipo_documento,\n    (p.cedula)::text AS nro_documento,\n    (p.primer_apellido)::text AS primer_apellido,\n    (p.primer_nombre)::text AS primer_nombre,\n    (p.segundo_nombre)::text AS segundo_nombre,\n    (\n        CASE\n            WHEN (char_length((p.segundo_apellido)::text) = 1) THEN ''::character varying\n            ELSE p.segundo_apellido\n        END)::text AS segundo_apellido,\n    (((p.primer_nombre)::text || ' '::text) || (\n        CASE\n            WHEN (char_length((p.segundo_apellido)::text) = 1) THEN ''::character varying\n            ELSE p.segundo_apellido\n        END)::text) AS nombre_completo,\n    (p.estado_civil)::text AS edo_civil,\n    (p.sexo)::text AS sexo,\n    to_char((p.fecha_nacimiento)::timestamp with time zone, 'yyyymmdd'::text) AS fecha_nacimiento,\n    'OTROS'::text AS tipo_ocupacion,\n    'Avenida'::text AS tipo_via,\n    'Vollmer'::text AS descripcion_via,\n    'EDIFICIO'::text AS tipo_vivienda,\n    'MPPEE'::text AS nombre_vivienda,\n    'CLINICAS CARACAS'::text AS punto_referencia,\n    'Urbanizacion'::text AS tipo_nucleo,\n    'SAN BERNARDINO'::text AS descripcion_nucleo,\n    'DISTRITO CAPITAL'::text AS estado,\n    'CARACAS'::text AS ciudad,\n    'LIBERTADOR'::text AS municipio,\n    '1010'::text AS zona_postal,\n    '0212'::text AS cod_area,\n    (p.telefono_residencia)::text AS nro_telefono,\n    '212'::text AS cod_area_fax,\n    '0000000'::text AS fax,\n    (p.telefono_celular)::text AS celular,\n    (p.email)::text AS correo,\n    'OTROS'::text AS cargo_empresa,\n        CASE\n            WHEN (tp.id_tipo_personal = ANY (ARRAY[12, 82, 111, 121, 22])) THEN 'FUNCIONARIO'::text\n            ELSE\n            CASE\n                WHEN (tp.id_tipo_personal = 28) THEN 'ASISTENTE'::text\n                ELSE\n                CASE\n                    WHEN (tp.id_tipo_personal = 13) THEN 'AYUDANTES'::text\n                    ELSE 'OTROS'::text\n                END\n            END\n        END AS actividad_economica,\n    to_char((t.fecha_ingreso)::timestamp with time zone, 'yyyymmdd'::text) AS fecha_ingreso,\n    '6500'::text AS ingreso_mensual,\n    ''::text AS accion,\n    'Empleado'::text AS tipo_empleado,\n    '212'::text AS cod_area_tlf_oficina,\n    '0000000'::text AS nro_tlf_oficina,\n    '00'::text AS indicador_tipo_cta,\n    '104'::text AS codigo_ficina\n   FROM (((personal p\n     JOIN trabajador t ON ((p.id_personal = t.id_personal)))\n     JOIN tipopersonal tp ON ((t.id_tipo_personal = tp.id_tipo_personal)))\n     JOIN cargo c ON ((t.id_cargo = c.id_cargo)))\n  WHERE (((t.estatus)::text = 'A'::text) AND (tp.id_tipo_personal = ANY (ARRAY[12, 28, 22, 13, 82, 111, 121, 41, 93, 92, 43])))");

=head1 ACCESSORS

=head2 tipo_documento

  data_type: 'text'
  is_nullable: 1

=head2 nro_documento

  data_type: 'text'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1

=head2 nombre_completo

  data_type: 'text'
  is_nullable: 1

=head2 edo_civil

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'text'
  is_nullable: 1

=head2 fecha_nacimiento

  data_type: 'text'
  is_nullable: 1

=head2 tipo_ocupacion

  data_type: 'text'
  is_nullable: 1

=head2 tipo_via

  data_type: 'text'
  is_nullable: 1

=head2 descripcion_via

  data_type: 'text'
  is_nullable: 1

=head2 tipo_vivienda

  data_type: 'text'
  is_nullable: 1

=head2 nombre_vivienda

  data_type: 'text'
  is_nullable: 1

=head2 punto_referencia

  data_type: 'text'
  is_nullable: 1

=head2 tipo_nucleo

  data_type: 'text'
  is_nullable: 1

=head2 descripcion_nucleo

  data_type: 'text'
  is_nullable: 1

=head2 estado

  data_type: 'text'
  is_nullable: 1

=head2 ciudad

  data_type: 'text'
  is_nullable: 1

=head2 municipio

  data_type: 'text'
  is_nullable: 1

=head2 zona_postal

  data_type: 'text'
  is_nullable: 1

=head2 cod_area

  data_type: 'text'
  is_nullable: 1

=head2 nro_telefono

  data_type: 'text'
  is_nullable: 1

=head2 cod_area_fax

  data_type: 'text'
  is_nullable: 1

=head2 fax

  data_type: 'text'
  is_nullable: 1

=head2 celular

  data_type: 'text'
  is_nullable: 1

=head2 correo

  data_type: 'text'
  is_nullable: 1

=head2 cargo_empresa

  data_type: 'text'
  is_nullable: 1

=head2 actividad_economica

  data_type: 'text'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_mensual

  data_type: 'text'
  is_nullable: 1

=head2 accion

  data_type: 'text'
  is_nullable: 1

=head2 tipo_empleado

  data_type: 'text'
  is_nullable: 1

=head2 cod_area_tlf_oficina

  data_type: 'text'
  is_nullable: 1

=head2 nro_tlf_oficina

  data_type: 'text'
  is_nullable: 1

=head2 indicador_tipo_cta

  data_type: 'text'
  is_nullable: 1

=head2 codigo_ficina

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tipo_documento",
  { data_type => "text", is_nullable => 1 },
  "nro_documento",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nombre_completo",
  { data_type => "text", is_nullable => 1 },
  "edo_civil",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "text", is_nullable => 1 },
  "fecha_nacimiento",
  { data_type => "text", is_nullable => 1 },
  "tipo_ocupacion",
  { data_type => "text", is_nullable => 1 },
  "tipo_via",
  { data_type => "text", is_nullable => 1 },
  "descripcion_via",
  { data_type => "text", is_nullable => 1 },
  "tipo_vivienda",
  { data_type => "text", is_nullable => 1 },
  "nombre_vivienda",
  { data_type => "text", is_nullable => 1 },
  "punto_referencia",
  { data_type => "text", is_nullable => 1 },
  "tipo_nucleo",
  { data_type => "text", is_nullable => 1 },
  "descripcion_nucleo",
  { data_type => "text", is_nullable => 1 },
  "estado",
  { data_type => "text", is_nullable => 1 },
  "ciudad",
  { data_type => "text", is_nullable => 1 },
  "municipio",
  { data_type => "text", is_nullable => 1 },
  "zona_postal",
  { data_type => "text", is_nullable => 1 },
  "cod_area",
  { data_type => "text", is_nullable => 1 },
  "nro_telefono",
  { data_type => "text", is_nullable => 1 },
  "cod_area_fax",
  { data_type => "text", is_nullable => 1 },
  "fax",
  { data_type => "text", is_nullable => 1 },
  "celular",
  { data_type => "text", is_nullable => 1 },
  "correo",
  { data_type => "text", is_nullable => 1 },
  "cargo_empresa",
  { data_type => "text", is_nullable => 1 },
  "actividad_economica",
  { data_type => "text", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "text", is_nullable => 1 },
  "ingreso_mensual",
  { data_type => "text", is_nullable => 1 },
  "accion",
  { data_type => "text", is_nullable => 1 },
  "tipo_empleado",
  { data_type => "text", is_nullable => 1 },
  "cod_area_tlf_oficina",
  { data_type => "text", is_nullable => 1 },
  "nro_tlf_oficina",
  { data_type => "text", is_nullable => 1 },
  "indicador_tipo_cta",
  { data_type => "text", is_nullable => 1 },
  "codigo_ficina",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eHvmxkC4rsQKaVpU8FuBuQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
