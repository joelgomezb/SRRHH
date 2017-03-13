use utf8;
package SRRHH::Schema::Result::VEvaluacionVacacione;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VEvaluacionVacacione

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

=head1 TABLE: C<v_evaluacion_vacaciones>

=cut

__PACKAGE__->table("v_evaluacion_vacaciones");
__PACKAGE__->result_source_instance->view_definition(" SELECT p.cedula,\n    (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_nombre)::text) || ' '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n    a.fecha_inicio,\n    a.fecha_fin,\n    COALESCE(((\n        CASE\n            WHEN (a.fecha_fin > '2016-12-31'::date) THEN '2016-12-31'::date\n            ELSE\n            CASE\n                WHEN (a.fecha_fin < '2016-07-01'::date) THEN '2016-07-01'::date\n                ELSE a.fecha_fin\n            END\n        END -\n        CASE\n            WHEN (a.fecha_inicio < '2016-07-01'::date) THEN '2016-07-01'::date\n            ELSE\n            CASE\n                WHEN (a.fecha_inicio > '2016-12-31'::date) THEN '2016-12-31'::date\n                ELSE a.fecha_inicio\n            END\n        END) + 1), 0) AS dias,\n    'VACACIONES'::text AS tipo,\n    'D\xCDA'::text AS hora_dia,\n    (('CON FECHA DE REINTEGRO: '::text || to_char((a.fecha_reintegro)::timestamp with time zone, 'DD-MM--YYYY'::text)) || 'VACACIONES DISFRUTADAS'::text) AS observaciones\n   FROM ((( SELECT vacaciondisfrutada.id_vacacion_disfrutada,\n            vacaciondisfrutada.id_personal,\n            vacaciondisfrutada.id_tipo_personal,\n            vacaciondisfrutada.anio,\n            vacaciondisfrutada.dias_disfrute,\n            vacaciondisfrutada.semana_anio,\n            vacaciondisfrutada.fecha_fin,\n            vacaciondisfrutada.fecha_inicio,\n            vacaciondisfrutada.fecha_reintegro,\n            vacaciondisfrutada.observaciones,\n            vacaciondisfrutada.id_vacacion\n           FROM vacaciondisfrutada\n          WHERE ((date_part('year'::text, vacaciondisfrutada.fecha_fin) = (2016)::double precision) AND (date_part('month'::text, vacaciondisfrutada.fecha_fin) >= (7)::double precision))) a\n     JOIN personal p USING (id_personal))\n     JOIN ( SELECT trabajador.id_trabajador,\n            trabajador.id_personal,\n            trabajador.id_tipo_personal,\n            trabajador.cedula,\n            trabajador.cod_tipo_personal,\n            trabajador.estatus,\n            trabajador.movimiento,\n            trabajador.situacion,\n            trabajador.id_registro_cargos,\n            trabajador.id_cargo,\n            trabajador.id_detalle_tabulador_med,\n            trabajador.id_dependencia,\n            trabajador.id_lugar_pago,\n            trabajador.codigo_nomina,\n            trabajador.cod_cargo,\n            trabajador.sueldo_basico,\n            trabajador.paso,\n            trabajador.id_turno,\n            trabajador.riesgo,\n            trabajador.regimen,\n            trabajador.fecha_ingreso,\n            trabajador.fecha_ingreso_apn,\n            trabajador.fecha_vacaciones,\n            trabajador.fecha_prestaciones,\n            trabajador.fecha_antiguedad,\n            trabajador.fecha_egreso,\n            trabajador.fecha_jubilacion,\n            trabajador.forma_pago,\n            trabajador.id_banco_nomina,\n            trabajador.tipo_cta_nomina,\n            trabajador.cuenta_nomina,\n            trabajador.id_banco_lph,\n            trabajador.cuenta_lph,\n            trabajador.id_banco_fid,\n            trabajador.cuenta_fid,\n            trabajador.porcentaje_islr,\n            trabajador.cotiza_sso,\n            trabajador.cotiza_spf,\n            trabajador.cotiza_lph,\n            trabajador.cotiza_fju,\n            trabajador.ded_prox_nomina,\n            trabajador.par_prox_nomina,\n            trabajador.porcentaje_jubilacion,\n            trabajador.base_jubilacion,\n            trabajador.fe_vida,\n            trabajador.id_causa_movimiento,\n            trabajador.id_dependencia_real,\n            trabajador.id_cargo_real,\n            trabajador.id_organismo,\n            trabajador.mes_ingreso,\n            trabajador.dia_ingreso,\n            trabajador.anio_ingreso,\n            trabajador.mes_ingreso_apn,\n            trabajador.dia_ingreso_apn,\n            trabajador.anio_ingreso_apn,\n            trabajador.mes_vacaciones,\n            trabajador.dia_vacaciones,\n            trabajador.anio_vacaciones,\n            trabajador.mes_prestaciones,\n            trabajador.dia_prestaciones,\n            trabajador.anio_prestaciones,\n            trabajador.mes_antiguedad,\n            trabajador.dia_antiguedad,\n            trabajador.anio_antiguedad,\n            trabajador.mes_jubilacion,\n            trabajador.dia_jubilacion,\n            trabajador.anio_jubilacion,\n            trabajador.mes_egreso,\n            trabajador.dia_egreso,\n            trabajador.anio_egreso,\n            trabajador.fecha_entrada_sig,\n            trabajador.fecha_salida_sig,\n            trabajador.codigo_nomina_real,\n            trabajador.cod_organismo_adscrito,\n            trabajador.lunes_primera,\n            trabajador.lunes_segunda,\n            trabajador.lunes_retroactivo,\n            trabajador.hay_retroactivo,\n            trabajador.dias_trabajados,\n            trabajador.mes_entrada,\n            trabajador.dia_entrada,\n            trabajador.anio_entrada,\n            trabajador.mes_salida,\n            trabajador.dia_salida,\n            trabajador.anio_salida,\n            trabajador.horas_semanales,\n            trabajador.fecha_ingreso_cargo,\n            trabajador.mes_ingreso_cargo,\n            trabajador.dia_ingreso_cargo,\n            trabajador.anio_ingreso_cargo,\n            trabajador.fecha_fe_vida,\n            trabajador.fecha_encargaduria,\n            trabajador.fecha_comision_servicio,\n            trabajador.organismo_comision_servicio,\n            trabajador.fecha_tipo_personal,\n            trabajador.fecha_ultimo_movimiento,\n            trabajador.codigo_patronal,\n            trabajador.jubilacion_planificada\n           FROM trabajador\n          WHERE ((trabajador.estatus)::text = ANY (ARRAY[('A'::character varying)::text, ('S'::character varying)::text, ('P'::character varying)::text]))) t ON ((p.id_personal = t.id_personal)))\n  WHERE (date_part('year'::text, a.fecha_fin) = (2016)::double precision)\n  ORDER BY p.cedula, a.fecha_inicio");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 dias

  data_type: 'integer'
  is_nullable: 1

=head2 tipo

  data_type: 'text'
  is_nullable: 1

=head2 hora_dia

  data_type: 'text'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "dias",
  { data_type => "integer", is_nullable => 1 },
  "tipo",
  { data_type => "text", is_nullable => 1 },
  "hora_dia",
  { data_type => "text", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oq8DKFu/3swVa2Du1h4dHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
