use utf8;
package SRRHH::Schema::Result::Trabajador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Trabajador

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

=head1 TABLE: C<trabajador>

=cut

__PACKAGE__->table("trabajador");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 cod_tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 movimiento

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 situacion

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 2

=head2 id_registro_cargos

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_detalle_tabulador_med

  data_type: 'integer'
  is_nullable: 1

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_lugar_pago

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 sueldo_basico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 id_turno

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 riesgo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 regimen

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 1
  size: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_prestaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_antiguedad

  data_type: 'date'
  is_nullable: 1

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_jubilacion

  data_type: 'date'
  is_nullable: 1

=head2 forma_pago

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 id_banco_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 tipo_cta_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cuenta_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_banco_lph

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cuenta_lph

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_banco_fid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cuenta_fid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 porcentaje_islr

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cotiza_sso

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_spf

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_lph

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_fju

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 ded_prox_nomina

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 par_prox_nomina

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 porcentaje_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 base_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 fe_vida

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 id_causa_movimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_dependencia_real

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_cargo_real

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 mes_ingreso

  data_type: 'integer'
  is_nullable: 1

=head2 dia_ingreso

  data_type: 'integer'
  is_nullable: 1

=head2 anio_ingreso

  data_type: 'integer'
  is_nullable: 1

=head2 mes_ingreso_apn

  data_type: 'integer'
  is_nullable: 1

=head2 dia_ingreso_apn

  data_type: 'integer'
  is_nullable: 1

=head2 anio_ingreso_apn

  data_type: 'integer'
  is_nullable: 1

=head2 mes_vacaciones

  data_type: 'integer'
  is_nullable: 1

=head2 dia_vacaciones

  data_type: 'integer'
  is_nullable: 1

=head2 anio_vacaciones

  data_type: 'integer'
  is_nullable: 1

=head2 mes_prestaciones

  data_type: 'integer'
  is_nullable: 1

=head2 dia_prestaciones

  data_type: 'integer'
  is_nullable: 1

=head2 anio_prestaciones

  data_type: 'integer'
  is_nullable: 1

=head2 mes_antiguedad

  data_type: 'integer'
  is_nullable: 1

=head2 dia_antiguedad

  data_type: 'integer'
  is_nullable: 1

=head2 anio_antiguedad

  data_type: 'integer'
  is_nullable: 1

=head2 mes_jubilacion

  data_type: 'integer'
  is_nullable: 1

=head2 dia_jubilacion

  data_type: 'integer'
  is_nullable: 1

=head2 anio_jubilacion

  data_type: 'integer'
  is_nullable: 1

=head2 mes_egreso

  data_type: 'integer'
  is_nullable: 1

=head2 dia_egreso

  data_type: 'integer'
  is_nullable: 1

=head2 anio_egreso

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_entrada_sig

  data_type: 'date'
  is_nullable: 1

=head2 fecha_salida_sig

  data_type: 'date'
  is_nullable: 1

=head2 codigo_nomina_real

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 cod_organismo_adscrito

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 lunes_primera

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 lunes_segunda

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 lunes_retroactivo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 hay_retroactivo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 dias_trabajados

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mes_entrada

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 dia_entrada

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 anio_entrada

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mes_salida

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 dia_salida

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 anio_salida

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 horas_semanales

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 fecha_ingreso_cargo

  data_type: 'date'
  is_nullable: 1

=head2 mes_ingreso_cargo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 dia_ingreso_cargo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 anio_ingreso_cargo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 fecha_fe_vida

  data_type: 'date'
  is_nullable: 1

=head2 fecha_encargaduria

  data_type: 'date'
  is_nullable: 1

=head2 fecha_comision_servicio

  data_type: 'date'
  is_nullable: 1

=head2 organismo_comision_servicio

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 fecha_tipo_personal

  data_type: 'date'
  is_nullable: 1

=head2 fecha_ultimo_movimiento

  data_type: 'date'
  is_nullable: 1

=head2 codigo_patronal

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 jubilacion_planificada

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cedula",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "cod_tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "movimiento",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "situacion",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 2 },
  "id_registro_cargos",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_detalle_tabulador_med",
  { data_type => "integer", is_nullable => 1 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_lugar_pago",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "sueldo_basico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "paso",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "id_turno",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "riesgo",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "regimen",
  { data_type => "varchar", default_value => "I", is_nullable => 1, size => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_prestaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_antiguedad",
  { data_type => "date", is_nullable => 1 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_jubilacion",
  { data_type => "date", is_nullable => 1 },
  "forma_pago",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "id_banco_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "tipo_cta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_banco_lph",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cuenta_lph",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_banco_fid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cuenta_fid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "porcentaje_islr",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cotiza_sso",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_spf",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_lph",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_fju",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "ded_prox_nomina",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "par_prox_nomina",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "porcentaje_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "base_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "fe_vida",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "id_causa_movimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_dependencia_real",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_cargo_real",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "mes_ingreso",
  { data_type => "integer", is_nullable => 1 },
  "dia_ingreso",
  { data_type => "integer", is_nullable => 1 },
  "anio_ingreso",
  { data_type => "integer", is_nullable => 1 },
  "mes_ingreso_apn",
  { data_type => "integer", is_nullable => 1 },
  "dia_ingreso_apn",
  { data_type => "integer", is_nullable => 1 },
  "anio_ingreso_apn",
  { data_type => "integer", is_nullable => 1 },
  "mes_vacaciones",
  { data_type => "integer", is_nullable => 1 },
  "dia_vacaciones",
  { data_type => "integer", is_nullable => 1 },
  "anio_vacaciones",
  { data_type => "integer", is_nullable => 1 },
  "mes_prestaciones",
  { data_type => "integer", is_nullable => 1 },
  "dia_prestaciones",
  { data_type => "integer", is_nullable => 1 },
  "anio_prestaciones",
  { data_type => "integer", is_nullable => 1 },
  "mes_antiguedad",
  { data_type => "integer", is_nullable => 1 },
  "dia_antiguedad",
  { data_type => "integer", is_nullable => 1 },
  "anio_antiguedad",
  { data_type => "integer", is_nullable => 1 },
  "mes_jubilacion",
  { data_type => "integer", is_nullable => 1 },
  "dia_jubilacion",
  { data_type => "integer", is_nullable => 1 },
  "anio_jubilacion",
  { data_type => "integer", is_nullable => 1 },
  "mes_egreso",
  { data_type => "integer", is_nullable => 1 },
  "dia_egreso",
  { data_type => "integer", is_nullable => 1 },
  "anio_egreso",
  { data_type => "integer", is_nullable => 1 },
  "fecha_entrada_sig",
  { data_type => "date", is_nullable => 1 },
  "fecha_salida_sig",
  { data_type => "date", is_nullable => 1 },
  "codigo_nomina_real",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "cod_organismo_adscrito",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "lunes_primera",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "lunes_segunda",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "lunes_retroactivo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "hay_retroactivo",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "dias_trabajados",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes_entrada",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "dia_entrada",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "anio_entrada",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes_salida",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "dia_salida",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "anio_salida",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "horas_semanales",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "fecha_ingreso_cargo",
  { data_type => "date", is_nullable => 1 },
  "mes_ingreso_cargo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "dia_ingreso_cargo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "anio_ingreso_cargo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "fecha_fe_vida",
  { data_type => "date", is_nullable => 1 },
  "fecha_encargaduria",
  { data_type => "date", is_nullable => 1 },
  "fecha_comision_servicio",
  { data_type => "date", is_nullable => 1 },
  "organismo_comision_servicio",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "fecha_tipo_personal",
  { data_type => "date", is_nullable => 1 },
  "fecha_ultimo_movimiento",
  { data_type => "date", is_nullable => 1 },
  "codigo_patronal",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "jubilacion_planificada",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_trabajador>

=back

=cut

__PACKAGE__->set_primary_key("id_trabajador");

=head1 RELATIONS

=head2 aplicartabuladors

Type: has_many

Related object: L<SRRHH::Schema::Result::Aplicartabulador>

=cut

__PACKAGE__->has_many(
  "aplicartabuladors",
  "SRRHH::Schema::Result::Aplicartabulador",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aumentoevaluacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Aumentoevaluacion>

=cut

__PACKAGE__->has_many(
  "aumentoevaluacions",
  "SRRHH::Schema::Result::Aumentoevaluacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cajaahorroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Cajaahorro>

=cut

__PACKAGE__->has_many(
  "cajaahorroes",
  "SRRHH::Schema::Result::Cajaahorro",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculoantiguedad

Type: might_have

Related object: L<SRRHH::Schema::Result::Calculoantiguedad>

=cut

__PACKAGE__->might_have(
  "calculoantiguedad",
  "SRRHH::Schema::Result::Calculoantiguedad",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculobonofinanio

Type: might_have

Related object: L<SRRHH::Schema::Result::Calculobonofinanio>

=cut

__PACKAGE__->might_have(
  "calculobonofinanio",
  "SRRHH::Schema::Result::Calculobonofinanio",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculoticket>

=cut

__PACKAGE__->has_many(
  "calculotickets",
  "SRRHH::Schema::Result::Calculoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculovacacional

Type: might_have

Related object: L<SRRHH::Schema::Result::Calculovacacional>

=cut

__PACKAGE__->might_have(
  "calculovacacional",
  "SRRHH::Schema::Result::Calculovacacional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodiplomaticoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptodiplomatico>

=cut

__PACKAGE__->has_many(
  "conceptodiplomaticoes",
  "SRRHH::Schema::Result::Conceptodiplomatico",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptofijoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptofijo>

=cut

__PACKAGE__->has_many(
  "conceptofijoes",
  "SRRHH::Schema::Result::Conceptofijo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoliquidacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptoliquidacion>

=cut

__PACKAGE__->has_many(
  "conceptoliquidacions",
  "SRRHH::Schema::Result::Conceptoliquidacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptomovimientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptomovimiento>

=cut

__PACKAGE__->has_many(
  "conceptomovimientoes",
  "SRRHH::Schema::Result::Conceptomovimiento",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovariables

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptovariable>

=cut

__PACKAGE__->has_many(
  "conceptovariables",
  "SRRHH::Schema::Result::Conceptovariable",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dotaciontrabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Dotaciontrabajador>

=cut

__PACKAGE__->has_many(
  "dotaciontrabajadors",
  "SRRHH::Schema::Result::Dotaciontrabajador",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepcionticket

Type: might_have

Related object: L<SRRHH::Schema::Result::Excepcionticket>

=cut

__PACKAGE__->might_have(
  "excepcionticket",
  "SRRHH::Schema::Result::Excepcionticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicoticket>

=cut

__PACKAGE__->has_many(
  "historicotickets",
  "SRRHH::Schema::Result::Historicoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_banco_fid

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_fid",
  "SRRHH::Schema::Result::Banco",
  { id_banco => "id_banco_fid" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_banco_lph

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_lph",
  "SRRHH::Schema::Result::Banco",
  { id_banco => "id_banco_lph" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_banco_nomina

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_nomina",
  "SRRHH::Schema::Result::Banco",
  { id_banco => "id_banco_nomina" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_cargo_real

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo_real",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo_real" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_causa_movimiento

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Causamovimiento>

=cut

__PACKAGE__->belongs_to(
  "id_causa_movimiento",
  "SRRHH::Schema::Result::Causamovimiento",
  { id_causa_movimiento => "id_causa_movimiento" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_dependencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_dependencia_real

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia_real",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia_real" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_lugar_pago

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Lugarpago>

=cut

__PACKAGE__->belongs_to(
  "id_lugar_pago",
  "SRRHH::Schema::Result::Lugarpago",
  { id_lugar_pago => "id_lugar_pago" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_registro_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->belongs_to(
  "id_registro_cargo",
  "SRRHH::Schema::Result::Registrocargo",
  { id_registro_cargos => "id_registro_cargos" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_turno

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Turno>

=cut

__PACKAGE__->belongs_to(
  "id_turno",
  "SRRHH::Schema::Result::Turno",
  { id_turno => "id_turno" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 interesadicionals

Type: has_many

Related object: L<SRRHH::Schema::Result::Interesadicional>

=cut

__PACKAGE__->has_many(
  "interesadicionals",
  "SRRHH::Schema::Result::Interesadicional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 interesnuevoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Interesnuevoregimen>

=cut

__PACKAGE__->has_many(
  "interesnuevoregimens",
  "SRRHH::Schema::Result::Interesnuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 interesviejoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Interesviejoregimen>

=cut

__PACKAGE__->has_many(
  "interesviejoregimens",
  "SRRHH::Schema::Result::Interesviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresadicionals

Type: has_many

Related object: L<SRRHH::Schema::Result::Liquidacioninteresadicional>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresadicionals",
  "SRRHH::Schema::Result::Liquidacioninteresadicional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresnuevoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Liquidacioninteresnuevoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresnuevoregimens",
  "SRRHH::Schema::Result::Liquidacioninteresnuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresviejoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Liquidacioninteresviejoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresviejoregimens",
  "SRRHH::Schema::Result::Liquidacioninteresviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacionresumennuevoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Liquidacionresumennuevoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacionresumennuevoregimens",
  "SRRHH::Schema::Result::Liquidacionresumennuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacionresumenviejoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Liquidacionresumenviejoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacionresumenviejoregimens",
  "SRRHH::Schema::Result::Liquidacionresumenviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 mesesjubilacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Mesesjubilacion>

=cut

__PACKAGE__->has_many(
  "mesesjubilacions",
  "SRRHH::Schema::Result::Mesesjubilacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominaconversions

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominaconversion>

=cut

__PACKAGE__->has_many(
  "nominaconversions",
  "SRRHH::Schema::Result::Nominaconversion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 otrasalicuotas

Type: has_many

Related object: L<SRRHH::Schema::Result::Otrasalicuota>

=cut

__PACKAGE__->has_many(
  "otrasalicuotas",
  "SRRHH::Schema::Result::Otrasalicuota",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planillaarcs

Type: has_many

Related object: L<SRRHH::Schema::Result::Planillaarc>

=cut

__PACKAGE__->has_many(
  "planillaarcs",
  "SRRHH::Schema::Result::Planillaarc",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planillaaris

Type: has_many

Related object: L<SRRHH::Schema::Result::Planillaari>

=cut

__PACKAGE__->has_many(
  "planillaaris",
  "SRRHH::Schema::Result::Planillaari",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prestamoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Prestamo>

=cut

__PACKAGE__->has_many(
  "prestamoes",
  "SRRHH::Schema::Result::Prestamo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SRRHH::Schema::Result::Registrocargo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrodocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrodocente>

=cut

__PACKAGE__->has_many(
  "registrodocentes",
  "SRRHH::Schema::Result::Registrodocente",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 resumennuevoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Resumennuevoregimen>

=cut

__PACKAGE__->has_many(
  "resumennuevoregimens",
  "SRRHH::Schema::Result::Resumennuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 resumenviejoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Resumenviejoregimen>

=cut

__PACKAGE__->has_many(
  "resumenviejoregimens",
  "SRRHH::Schema::Result::Resumenviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 retroactivotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Retroactivoticket>

=cut

__PACKAGE__->has_many(
  "retroactivotickets",
  "SRRHH::Schema::Result::Retroactivoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sueldopromedio

Type: might_have

Related object: L<SRRHH::Schema::Result::Sueldopromedio>

=cut

__PACKAGE__->might_have(
  "sueldopromedio",
  "SRRHH::Schema::Result::Sueldopromedio",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadorasignaturas

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajadorasignatura>

=cut

__PACKAGE__->has_many(
  "trabajadorasignaturas",
  "SRRHH::Schema::Result::Trabajadorasignatura",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadorespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajadorespecifica>

=cut

__PACKAGE__->has_many(
  "trabajadorespecificas",
  "SRRHH::Schema::Result::Trabajadorespecifica",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:g9sSgFPXUDF7NjV/tHndNg

=head2 trabajadoresprestacionesmensuales

Type: has_many

 Related object: L<SRRHH::Schema::Result::Prestacionesmensuale>

=cut

__PACKAGE__->has_many(
   "trabajadoresprestacionesmensuales",
   "SRRHH::Schema::Result::Prestacionesmensuale",
   { "foreign.id_trabajador" => "self.id_trabajador" },
   { cascade_copy => 0, cascade_delete => 0 },
 );
 
=head2 dia_egreso

devuelve el dia de la fecha de egreso

=cut 
sub dia_egreso {
   my $self = shift;
   
   #obtener el dia de egreso
   my $dia_egreso = $self->fecha_egreso->strftime('%m');
   return $dia_egreso;
}

=head2 mes_egreso

devuelve el mes de la fecha de egreso

=cut 
sub mes_egreso {
   my $self = shift;
   
   #obtener el mes de egreso
   my $mes_egreso = $self->fecha_egreso->strftime('%d');
   return $mes_egreso;
}

=head2 prestacionesmensuales

método que devuelve las prestaciones calculadas para el trabajador en el mes de su fecha de egreso 

=cut
sub prestacionesmensuales {
  my $self = shift;

  #obtener el registro de prestaciones mensuales para el mes y anio de la fecha de egreso
  my $resultado = $self->trabajadoresprestacionesmensuales->search(
	{
	  'me.anio' => $self->fecha_egreso->strftime('%Y'),
	  'me.mes' => $self->fecha_egreso->strftime('%m'),
	},
	{
	  rows => 1
	}	
  )->single;
  #condicional para la existencia de resultado
  if ( $resultado ) {
	return $resultado->monto_prestaciones;
  }
  else {
	return 0;
  }

}


=head2 monto_prestaciones_trimestrales

método que devuelve el valor del campo monto_prestaciones para el trabajador en el trimestre de su fecha de egreso 

=cut 
sub monto_prestaciones_trimestrales {
	my $self = shift;

	#obtener mes y año de egreso
	my $anio_egreso = $self->fecha_egreso->strftime('%Y');
	my $mes_egreso = $self->fecha_egreso->strftime('%m');
	#condicional para determinar el trimestre
	my @meses_trimestre;
	my $cosa ;
	if ( $mes_egreso == 1 || $mes_egreso == 2 || $mes_egreso == 3 ) {
	  @meses_trimestre = (1,2,3);
	  $cosa = 'nooo';
	}
	elsif ( $mes_egreso == 4 || $mes_egreso == 5 || $mes_egreso == 6 ) {
	  @meses_trimestre = (4,5,6);
	}
	elsif ( $mes_egreso == 7 || $mes_egreso == 8 || $mes_egreso == 9 ) {
	  @meses_trimestre = (7,8,9);
	}
	elsif ( $mes_egreso == 10 || $mes_egreso == 11 || $mes_egreso == 12 ) {
	  @meses_trimestre = (10,11,12);
	}
	else {
	  return 0;
	}
	#obtener el registro de prestaciones para la fecha de egreso
	my $monto_prestaciones = $self->trabajadoresprestacionesmensuales->search({
		'me.anio' => $anio_egreso,
		'me.mes' => { 'IN' => \@meses_trimestre },
	  },
	  {
		select => [ { sum => 'me.monto_prestaciones' } ],
		as => [ 'prestaciones' ],
		group_by => [ 'me.id_trabajador' ]
	  }
	)->get_column('prestaciones');	
	#condicional para la existencia de resultados 
	if ( $monto_prestaciones ) {
	  #definir variable para el monto
	  my $monto = 0;
	  #obtener los montos
	  foreach ( $monto_prestaciones->all ){
		$monto = $monto + $_;
	  }
	  #devolver el valor de la suma del campo: monto_prestaciones
	  return $monto;
	}
	else {
	  #devolver el resultado
	  return 0;  
	}
}

=head2 monto_adicional_trimestrales

método que devuelve el valor del campo monto_adicional para el trabajador en el trimestre de su fecha de egreso 

=cut 
sub monto_adicional_trimestrales {
	my $self = shift;

	#obtener mes y año de egreso
	my $anio_egreso = $self->fecha_egreso->strftime('%Y');
	my $mes_egreso = $self->fecha_egreso->strftime('%m');
	#condicional para determinar el trimestre
	my @meses_trimestre;
	my $cosa ;
	if ( $mes_egreso == 1 || $mes_egreso == 2 || $mes_egreso == 3 ) {
	  @meses_trimestre = (1,2,3);
	  $cosa = 'nooo';
	}
	elsif ( $mes_egreso == 4 || $mes_egreso == 5 || $mes_egreso == 6 ) {
	  @meses_trimestre = (4,5,6);
	}
	elsif ( $mes_egreso == 7 || $mes_egreso == 8 || $mes_egreso == 9 ) {
	  @meses_trimestre = (7,8,9);
	}
	elsif ( $mes_egreso == 10 || $mes_egreso == 11 || $mes_egreso == 12 ) {
	  @meses_trimestre = (10,11,12);
	}
	else {
	  return 0;
	}
	#obtener el registro de prestaciones para la fecha de egreso
	my $monto_prestaciones = $self->trabajadoresprestacionesmensuales->search({
		'me.anio' => $anio_egreso,
		'me.mes' => { 'IN' => \@meses_trimestre },
	  },
	  {
		select => [ { sum => 'me.monto_adicional' } ],
		as => [ 'prestaciones' ],
		group_by => [ 'me.id_trabajador' ]
	  }
	)->get_column('prestaciones');
	#condicional para la existencia de resultados 
	if ( $monto_prestaciones ) {
	  #definir variable para el monto
	  my $monto = 0;
	  #obtener los montos
	  foreach ( $monto_prestaciones->all ){
		$monto = $monto + $_;
	  }
	  #devolver el valor de la suma del campo: monto_adicional
	  return $monto;
	}
	else {
	  #devolver el resultado
	  return 0;  
	}
}


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
