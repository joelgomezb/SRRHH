use utf8;
package SRRHH::Schema::Result::VMontosPlanificacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VMontosPlanificacion

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

=head1 TABLE: C<v_montos_planificacion>

=cut

__PACKAGE__->table("v_montos_planificacion");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.nacionalidad,\n    v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.primer_apellido,\n    v_recibos_conjuntos.segundo_apellido,\n    v_recibos_conjuntos.primer_nombre,\n    v_recibos_conjuntos.segundo_nombre,\n    v_recibos_conjuntos.sexo,\n    ((((lpad((date_part('year'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text) || '-'::text) || lpad((date_part('month'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text)) || '-'::text) || lpad((date_part('day'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text)) AS antiguedad,\n    to_char((v_recibos_conjuntos.ingresoorganismo)::timestamp with time zone, 'DD-MM-YYYY'::text) AS ingreso_organismo,\n    (v_recibos_conjuntos.codrac)::text AS codigo_nomina,\n    v_recibos_conjuntos.cargo,\n        CASE\n            WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[111, 12, 13, 82, 22, 121, 93])) THEN '7000'::text\n            ELSE\n            CASE\n                WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[28, 92, 62, 102])) THEN '7001'::text\n                ELSE\n                CASE\n                    WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[41, 42])) THEN '7002'::text\n                    ELSE\n                    CASE\n                        WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[43, 44])) THEN '7004'::text\n                        ELSE\n                        CASE\n                            WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[45, 46])) THEN '7005'::text\n                            ELSE 'XXXX'::text\n                        END\n                    END\n                END\n            END\n        END AS tipo_personal,\n        CASE\n            WHEN (v_recibos_conjuntos.id_tipo_personal = 111) THEN '7006'::text\n            ELSE\n            CASE\n                WHEN (v_recibos_conjuntos.id_tipo_personal = 12) THEN '7009'::text\n                ELSE\n                CASE\n                    WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[13, 93])) THEN '7011'::text\n                    ELSE\n                    CASE\n                        WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[82, 121])) THEN '7007'::text\n                        ELSE\n                        CASE\n                            WHEN (v_recibos_conjuntos.id_tipo_personal = 28) THEN '7012'::text\n                            ELSE\n                            CASE\n                                WHEN (v_recibos_conjuntos.id_tipo_personal = 92) THEN '7011'::text\n                                ELSE\n                                CASE\n                                    WHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[41, 43, 45])) THEN '7020'::text\n                                    ELSE\n                                    CASE\nWHEN (v_recibos_conjuntos.id_tipo_personal = ANY (ARRAY[42, 44, 46])) THEN '7021'::text\nELSE\nCASE\n WHEN (v_recibos_conjuntos.id_tipo_personal = 22) THEN '7022'::text\n ELSE\n CASE\n  WHEN (v_recibos_conjuntos.id_tipo_personal = 62) THEN '7023'::text\n  ELSE '7017'::text\n END\nEND\n                                    END\n                                END\n                            END\n                        END\n                    END\n                END\n            END\n        END AS categoria,\n    to_char(((date_trunc('month'::text, (v_recibos_conjuntos.fecha_fin)::timestamp with time zone) + '1 mon'::interval) - '1 day'::interval), 'DD-MM-YYYY'::text) AS fecha_fin,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS sueldo_base,\n    COALESCE(sum(\n        CASE\n            WHEN (((v_recibos_conjuntos.codcon)::integer = 400) OR ((v_recibos_conjuntos.codcon)::integer = 35)) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS profesionalizacion,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 500) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS prima_antiguedad,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 47) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_1,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 47) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_1,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 7) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_2,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 7) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_2,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 10) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_3,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 10) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_3,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 11) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_4,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 11) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_4,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 20) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_5,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 20) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_5,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 36) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_6,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 36) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_6,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 37) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_7,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 37) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_7,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 38) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_8,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 38) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_8,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 39) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_9,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 39) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_9,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 42) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_10,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 42) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_10,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 43) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_11,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 43) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_11,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 44) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_12,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 44) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_12,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 45) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_13,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 45) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_13,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 46) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_14,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 46) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_14,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 48) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_15,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 48) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_15,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 50) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_16,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 50) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_16,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 51) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_17,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 51) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_17,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 52) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_18,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 52) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_18,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 53) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_19,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 53) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_19,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 54) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_20,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 54) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_20,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 55) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_21,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 55) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_21,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 56) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_22,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 56) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_22,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 57) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_23,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 57) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_23,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 58) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_24,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 58) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_24,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 59) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_25,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 59) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_25,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 60) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_26,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 60) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_26,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 61) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_27,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 61) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_27,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 62) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_28,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 62) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_28,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 63) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_29,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 63) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_29,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 69) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_30,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 69) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_30,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 70) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_31,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 70) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_31,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 71) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_32,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 71) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_32,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 90) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_33,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 90) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_33,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 91) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_34,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 91) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_34,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 102) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_35,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 102) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_35,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 142) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_36,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 142) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_36,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 200) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_37,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 200) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_37,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 254) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_38,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 254) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_38,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 256) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_39,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 256) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_39,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 268) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_40,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 268) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_40,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 269) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_41,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 269) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_41,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 274) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_42,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 274) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_42,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 275) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_43,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 275) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_43,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 277) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_44,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 277) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_44,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 278) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_45,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 278) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_45,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 279) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_46,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 279) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_46,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 280) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_47,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 280) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_47,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 281) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_48,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 281) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_48,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 282) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_49,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 282) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_49,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 283) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_50,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 283) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_50,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 284) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_51,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 284) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_51,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 285) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_52,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 285) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_52,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 286) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_53,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 286) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_53,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 401) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_54,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 401) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_54,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 501) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_55,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 501) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_55,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 502) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_56,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 502) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_56,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 512) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_57,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 512) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_57,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1500) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_58,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1500) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_58,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1501) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_59,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1501) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_59,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1502) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_60,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1502) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_60,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1504) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_61,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1504) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_61,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1600) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_62,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1600) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_62,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1601) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_63,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1601) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_63,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1602) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_64,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1602) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_64,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1603) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_65,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1603) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_65,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1604) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_66,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1604) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_66,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1605) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_67,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1605) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_67,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1699) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_68,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1699) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_68,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1700) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_69,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 1700) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_69,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2000) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_70,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2000) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_70,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2001) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_71,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2001) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_71,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2018) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_72,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2018) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_72,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2019) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_73,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 2019) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_73,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3008) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_74,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3008) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_74,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3400) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_75,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3400) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_75,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3500) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_76,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 3500) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_76,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4001) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_77,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4001) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_77,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4002) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_78,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4002) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_78,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4003) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_79,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4003) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_79,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4004) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_80,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4004) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_80,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4005) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_81,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4005) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_81,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4008) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_82,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4008) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_82,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4012) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_83,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4012) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_83,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4101) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_84,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4101) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_84,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4102) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_85,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4102) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_85,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4294) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_86,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4294) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_86,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4295) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_87,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4295) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_87,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4296) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_88,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4296) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_88,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4297) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_89,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4297) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_89,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4298) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_90,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4298) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_90,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4299) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_91,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4299) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_91,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4300) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_92,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4300) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_92,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4301) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_93,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4301) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_93,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4302) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_94,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4302) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_94,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4303) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_95,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4303) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_95,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4305) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_96,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4305) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_96,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4306) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_97,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4306) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_97,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4307) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_98,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4307) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_98,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4308) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_99,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4308) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_99,\n    max((\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4309) THEN v_recibos_conjuntos.descon\n            ELSE ''::character varying\n        END)::text) AS nombre_otro_concepto_100,\n    COALESCE(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 4309) THEN v_recibos_conjuntos.asigna\n            ELSE (0)::double precision\n        END), (0)::double precision) AS monto_otro_concepto_100\n   FROM v_recibos_conjuntos\n  WHERE (v_recibos_conjuntos.anio = ANY (ARRAY[2011, 2012, 2013, 2014]))\n  GROUP BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.nacionalidad, v_recibos_conjuntos.cedula, v_recibos_conjuntos.primer_apellido, v_recibos_conjuntos.segundo_apellido, v_recibos_conjuntos.primer_nombre, v_recibos_conjuntos.segundo_nombre, v_recibos_conjuntos.sexo, ((((lpad((date_part('year'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text) || '-'::text) || lpad((date_part('month'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text)) || '-'::text) || lpad((date_part('day'::text, age(now(), (v_recibos_conjuntos.fecha_antiguedad)::timestamp with time zone)))::text, 2, '0'::text)), (to_char((v_recibos_conjuntos.ingresoorganismo)::timestamp with time zone, 'DD-MM-YYYY'::text)), (v_recibos_conjuntos.codrac)::text, v_recibos_conjuntos.cargo, v_recibos_conjuntos.id_tipo_personal, (to_char(((date_trunc('month'::text, (v_recibos_conjuntos.fecha_fin)::timestamp with time zone) + '1 mon'::interval) - '1 day'::interval), 'DD-MM-YYYY'::text))\n  ORDER BY v_recibos_conjuntos.anio, (to_char(((date_trunc('month'::text, (v_recibos_conjuntos.fecha_fin)::timestamp with time zone) + '1 mon'::interval) - '1 day'::interval), 'DD-MM-YYYY'::text)), v_recibos_conjuntos.cedula");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 antiguedad

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_organismo

  data_type: 'text'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1

=head2 categoria

  data_type: 'text'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'text'
  is_nullable: 1

=head2 sueldo_base

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 prima_antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_1

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_1

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_2

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_2

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_3

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_3

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_4

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_4

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_5

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_5

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_6

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_6

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_7

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_7

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_8

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_8

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_9

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_9

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_10

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_10

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_11

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_11

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_12

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_12

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_13

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_13

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_14

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_14

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_15

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_15

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_16

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_16

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_17

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_17

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_18

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_18

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_19

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_19

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_20

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_20

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_21

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_21

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_22

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_22

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_23

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_23

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_24

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_24

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_25

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_25

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_26

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_26

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_27

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_27

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_28

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_28

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_29

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_29

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_30

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_30

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_31

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_31

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_32

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_32

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_33

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_33

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_34

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_34

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_35

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_35

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_36

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_36

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_37

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_37

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_38

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_38

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_39

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_39

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_40

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_40

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_41

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_41

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_42

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_42

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_43

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_43

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_44

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_44

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_45

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_45

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_46

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_46

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_47

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_47

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_48

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_48

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_49

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_49

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_50

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_50

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_51

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_51

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_52

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_52

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_53

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_53

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_54

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_54

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_55

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_55

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_56

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_56

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_57

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_57

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_58

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_58

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_59

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_59

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_60

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_60

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_61

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_61

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_62

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_62

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_63

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_63

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_64

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_64

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_65

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_65

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_66

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_66

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_67

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_67

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_68

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_68

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_69

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_69

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_70

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_70

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_71

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_71

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_72

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_72

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_73

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_73

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_74

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_74

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_75

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_75

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_76

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_76

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_77

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_77

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_78

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_78

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_79

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_79

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_80

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_80

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_81

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_81

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_82

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_82

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_83

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_83

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_84

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_84

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_85

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_85

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_86

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_86

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_87

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_87

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_88

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_88

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_89

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_89

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_90

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_90

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_91

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_91

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_92

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_92

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_93

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_93

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_94

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_94

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_95

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_95

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_96

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_96

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_97

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_97

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_98

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_98

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_99

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_99

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_100

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_100

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "antiguedad",
  { data_type => "text", is_nullable => 1 },
  "ingreso_organismo",
  { data_type => "text", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "tipo_personal",
  { data_type => "text", is_nullable => 1 },
  "categoria",
  { data_type => "text", is_nullable => 1 },
  "fecha_fin",
  { data_type => "text", is_nullable => 1 },
  "sueldo_base",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "prima_antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_1",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_1",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_2",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_2",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_3",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_3",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_4",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_4",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_5",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_5",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_6",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_6",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_7",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_7",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_8",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_8",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_9",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_9",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_10",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_10",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_11",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_11",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_12",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_12",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_13",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_13",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_14",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_14",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_15",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_15",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_16",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_16",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_17",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_17",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_18",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_18",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_19",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_19",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_20",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_20",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_21",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_21",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_22",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_22",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_23",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_23",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_24",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_24",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_25",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_25",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_26",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_26",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_27",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_27",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_28",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_28",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_29",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_29",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_30",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_30",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_31",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_31",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_32",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_32",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_33",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_33",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_34",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_34",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_35",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_35",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_36",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_36",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_37",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_37",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_38",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_38",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_39",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_39",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_40",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_40",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_41",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_41",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_42",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_42",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_43",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_43",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_44",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_44",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_45",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_45",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_46",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_46",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_47",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_47",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_48",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_48",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_49",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_49",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_50",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_50",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_51",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_51",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_52",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_52",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_53",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_53",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_54",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_54",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_55",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_55",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_56",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_56",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_57",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_57",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_58",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_58",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_59",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_59",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_60",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_60",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_61",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_61",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_62",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_62",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_63",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_63",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_64",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_64",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_65",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_65",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_66",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_66",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_67",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_67",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_68",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_68",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_69",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_69",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_70",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_70",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_71",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_71",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_72",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_72",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_73",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_73",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_74",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_74",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_75",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_75",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_76",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_76",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_77",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_77",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_78",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_78",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_79",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_79",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_80",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_80",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_81",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_81",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_82",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_82",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_83",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_83",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_84",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_84",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_85",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_85",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_86",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_86",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_87",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_87",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_88",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_88",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_89",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_89",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_90",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_90",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_91",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_91",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_92",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_92",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_93",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_93",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_94",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_94",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_95",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_95",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_96",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_96",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_97",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_97",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_98",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_98",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_99",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_99",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_100",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_100",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SqDoqMjYpb05LVlamojrGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
