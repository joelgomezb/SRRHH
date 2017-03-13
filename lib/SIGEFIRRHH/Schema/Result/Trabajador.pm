use utf8;
package SIGEFIRRHH::Schema::Result::Trabajador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Trabajador

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

Related object: L<SIGEFIRRHH::Schema::Result::Aplicartabulador>

=cut

__PACKAGE__->has_many(
  "aplicartabuladors",
  "SIGEFIRRHH::Schema::Result::Aplicartabulador",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aumentoevaluacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Aumentoevaluacion>

=cut

__PACKAGE__->has_many(
  "aumentoevaluacions",
  "SIGEFIRRHH::Schema::Result::Aumentoevaluacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cajaahorroes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cajaahorro>

=cut

__PACKAGE__->has_many(
  "cajaahorroes",
  "SIGEFIRRHH::Schema::Result::Cajaahorro",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculoantiguedad

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Calculoantiguedad>

=cut

__PACKAGE__->might_have(
  "calculoantiguedad",
  "SIGEFIRRHH::Schema::Result::Calculoantiguedad",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculobonofinanio

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Calculobonofinanio>

=cut

__PACKAGE__->might_have(
  "calculobonofinanio",
  "SIGEFIRRHH::Schema::Result::Calculobonofinanio",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Calculoticket>

=cut

__PACKAGE__->has_many(
  "calculotickets",
  "SIGEFIRRHH::Schema::Result::Calculoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculovacacional

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Calculovacacional>

=cut

__PACKAGE__->might_have(
  "calculovacacional",
  "SIGEFIRRHH::Schema::Result::Calculovacacional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodiplomaticoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptodiplomatico>

=cut

__PACKAGE__->has_many(
  "conceptodiplomaticoes",
  "SIGEFIRRHH::Schema::Result::Conceptodiplomatico",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptofijoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptofijo>

=cut

__PACKAGE__->has_many(
  "conceptofijoes",
  "SIGEFIRRHH::Schema::Result::Conceptofijo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoliquidacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoliquidacion>

=cut

__PACKAGE__->has_many(
  "conceptoliquidacions",
  "SIGEFIRRHH::Schema::Result::Conceptoliquidacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptomovimientoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptomovimiento>

=cut

__PACKAGE__->has_many(
  "conceptomovimientoes",
  "SIGEFIRRHH::Schema::Result::Conceptomovimiento",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovariables

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptovariable>

=cut

__PACKAGE__->has_many(
  "conceptovariables",
  "SIGEFIRRHH::Schema::Result::Conceptovariable",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dotaciontrabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dotaciontrabajador>

=cut

__PACKAGE__->has_many(
  "dotaciontrabajadors",
  "SIGEFIRRHH::Schema::Result::Dotaciontrabajador",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepcionticket

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Excepcionticket>

=cut

__PACKAGE__->might_have(
  "excepcionticket",
  "SIGEFIRRHH::Schema::Result::Excepcionticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historicoticket>

=cut

__PACKAGE__->has_many(
  "historicotickets",
  "SIGEFIRRHH::Schema::Result::Historicoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_banco_fid

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_fid",
  "SIGEFIRRHH::Schema::Result::Banco",
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

Related object: L<SIGEFIRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_lph",
  "SIGEFIRRHH::Schema::Result::Banco",
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

Related object: L<SIGEFIRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco_nomina",
  "SIGEFIRRHH::Schema::Result::Banco",
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

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_cargo_real

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo_real",
  "SIGEFIRRHH::Schema::Result::Cargo",
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

Related object: L<SIGEFIRRHH::Schema::Result::Causamovimiento>

=cut

__PACKAGE__->belongs_to(
  "id_causa_movimiento",
  "SIGEFIRRHH::Schema::Result::Causamovimiento",
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

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_dependencia_real

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia_real",
  "SIGEFIRRHH::Schema::Result::Dependencia",
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

Related object: L<SIGEFIRRHH::Schema::Result::Lugarpago>

=cut

__PACKAGE__->belongs_to(
  "id_lugar_pago",
  "SIGEFIRRHH::Schema::Result::Lugarpago",
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

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_registro_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->belongs_to(
  "id_registro_cargo",
  "SIGEFIRRHH::Schema::Result::Registrocargo",
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

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_turno

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Turno>

=cut

__PACKAGE__->belongs_to(
  "id_turno",
  "SIGEFIRRHH::Schema::Result::Turno",
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

Related object: L<SIGEFIRRHH::Schema::Result::Interesadicional>

=cut

__PACKAGE__->has_many(
  "interesadicionals",
  "SIGEFIRRHH::Schema::Result::Interesadicional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 interesnuevoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Interesnuevoregimen>

=cut

__PACKAGE__->has_many(
  "interesnuevoregimens",
  "SIGEFIRRHH::Schema::Result::Interesnuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 interesviejoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Interesviejoregimen>

=cut

__PACKAGE__->has_many(
  "interesviejoregimens",
  "SIGEFIRRHH::Schema::Result::Interesviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresadicionals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Liquidacioninteresadicional>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresadicionals",
  "SIGEFIRRHH::Schema::Result::Liquidacioninteresadicional",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresnuevoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Liquidacioninteresnuevoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresnuevoregimens",
  "SIGEFIRRHH::Schema::Result::Liquidacioninteresnuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacioninteresviejoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Liquidacioninteresviejoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacioninteresviejoregimens",
  "SIGEFIRRHH::Schema::Result::Liquidacioninteresviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacionresumennuevoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Liquidacionresumennuevoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacionresumennuevoregimens",
  "SIGEFIRRHH::Schema::Result::Liquidacionresumennuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 liquidacionresumenviejoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Liquidacionresumenviejoregimen>

=cut

__PACKAGE__->has_many(
  "liquidacionresumenviejoregimens",
  "SIGEFIRRHH::Schema::Result::Liquidacionresumenviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 mesesjubilacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Mesesjubilacion>

=cut

__PACKAGE__->has_many(
  "mesesjubilacions",
  "SIGEFIRRHH::Schema::Result::Mesesjubilacion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominaconversions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Nominaconversion>

=cut

__PACKAGE__->has_many(
  "nominaconversions",
  "SIGEFIRRHH::Schema::Result::Nominaconversion",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SIGEFIRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 otrasalicuotas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Otrasalicuota>

=cut

__PACKAGE__->has_many(
  "otrasalicuotas",
  "SIGEFIRRHH::Schema::Result::Otrasalicuota",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planillaarcs

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Planillaarc>

=cut

__PACKAGE__->has_many(
  "planillaarcs",
  "SIGEFIRRHH::Schema::Result::Planillaarc",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planillaaris

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Planillaari>

=cut

__PACKAGE__->has_many(
  "planillaaris",
  "SIGEFIRRHH::Schema::Result::Planillaari",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prestamoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Prestamo>

=cut

__PACKAGE__->has_many(
  "prestamoes",
  "SIGEFIRRHH::Schema::Result::Prestamo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SIGEFIRRHH::Schema::Result::Registrocargo",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrodocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrodocente>

=cut

__PACKAGE__->has_many(
  "registrodocentes",
  "SIGEFIRRHH::Schema::Result::Registrodocente",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 resumennuevoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Resumennuevoregimen>

=cut

__PACKAGE__->has_many(
  "resumennuevoregimens",
  "SIGEFIRRHH::Schema::Result::Resumennuevoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 resumenviejoregimens

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Resumenviejoregimen>

=cut

__PACKAGE__->has_many(
  "resumenviejoregimens",
  "SIGEFIRRHH::Schema::Result::Resumenviejoregimen",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 retroactivotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Retroactivoticket>

=cut

__PACKAGE__->has_many(
  "retroactivotickets",
  "SIGEFIRRHH::Schema::Result::Retroactivoticket",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sueldopromedio

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Sueldopromedio>

=cut

__PACKAGE__->might_have(
  "sueldopromedio",
  "SIGEFIRRHH::Schema::Result::Sueldopromedio",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadorasignaturas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajadorasignatura>

=cut

__PACKAGE__->has_many(
  "trabajadorasignaturas",
  "SIGEFIRRHH::Schema::Result::Trabajadorasignatura",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadorespecificas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajadorespecifica>

=cut

__PACKAGE__->has_many(
  "trabajadorespecificas",
  "SIGEFIRRHH::Schema::Result::Trabajadorespecifica",
  { "foreign.id_trabajador" => "self.id_trabajador" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tcNwgY4We3KmQLgl1n6ThA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
