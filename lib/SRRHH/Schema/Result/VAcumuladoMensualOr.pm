use utf8;
package SRRHH::Schema::Result::VAcumuladoMensualOr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VAcumuladoMensualOr

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

=head1 TABLE: C<v_acumulado_mensual_or>

=cut

__PACKAGE__->table("v_acumulado_mensual_or");
__PACKAGE__->result_source_instance->view_definition(" SELECT tr.cedula,\n    (((((((e.primer_nombre)::text || ' '::text) || (e.segundo_nombre)::text) || ', '::text) || (e.primer_apellido)::text) || ' '::text) || (e.segundo_apellido)::text) AS trabajador,\n    k.descripcion_cargo AS cargo,\n    j.nombre AS nombreunidad,\n    d.id_tipo_personal,\n    d.nombre AS tipopersonal,\n    tr.fecha_ingreso AS ingreso,\n    tr.fecha_ingreso_apn AS ingreso_apn,\n    tr.fecha_vacaciones AS vacaciones,\n    sum(a.monto_asigna) AS quincenal,\n    a.anio,\n    a.mes,\n    a.semana_quincena,\n    a.numero_nomina,\n    so.fecha_inicio,\n    so.fecha_fin\n   FROM historicoquincena a,\n    historiconomina b,\n    tipopersonal d,\n    personal e,\n    gruponomina g,\n    dependencia j,\n    cargo k,\n    trabajador tr,\n    conceptotipopersonal ctp,\n    concepto c,\n    frecuenciatipopersonal ftp,\n    frecuenciapago fp,\n    seguridadordinaria so\n  WHERE ((a.id_grupo_nomina = b.id_grupo_nomina) AND (a.numero_nomina = b.numero_nomina) AND (a.anio = b.anio) AND (a.mes = b.mes) AND (a.semana_quincena = b.semana_quincena) AND (a.id_trabajador = b.id_trabajador) AND (a.id_trabajador = tr.id_trabajador) AND (b.anio = so.anio) AND (b.mes = so.mes) AND (b.semana_quincena = so.semana_quincena) AND (b.id_grupo_nomina = so.id_grupo_nomina) AND (g.id_grupo_nomina = a.id_grupo_nomina) AND (d.id_tipo_personal = a.id_tipo_personal) AND (b.id_tipo_personal = d.id_tipo_personal) AND (e.id_personal = tr.id_personal) AND (j.id_dependencia = b.id_dependencia) AND (k.id_cargo = b.id_cargo) AND (a.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal) AND (ctp.id_concepto = c.id_concepto) AND ((c.cod_concepto)::text <> '5000'::text) AND (a.id_frecuencia_tipo_personal = ftp.id_frecuencia_tipo_personal) AND (ftp.id_frecuencia_pago = fp.id_frecuencia_pago) AND (c.id_concepto = ANY (ARRAY[865, 866])))\n  GROUP BY tr.cedula, e.primer_nombre, e.segundo_nombre, e.primer_apellido, e.segundo_apellido, k.descripcion_cargo, j.nombre, d.id_tipo_personal, d.nombre, tr.fecha_ingreso, tr.fecha_ingreso_apn, tr.fecha_vacaciones, a.anio, a.mes, a.semana_quincena, a.numero_nomina, so.fecha_inicio, so.fecha_fin\n  ORDER BY tr.cedula");

=head1 ACCESSORS

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

=head2 nombreunidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 ingreso

  data_type: 'date'
  is_nullable: 1

=head2 ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 quincenal

  data_type: 'double precision'
  is_nullable: 1

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

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "ingreso",
  { data_type => "date", is_nullable => 1 },
  "ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "vacaciones",
  { data_type => "date", is_nullable => 1 },
  "quincenal",
  { data_type => "double precision", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s1iQWcURno1MXl40xteI0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
