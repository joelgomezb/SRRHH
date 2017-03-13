use utf8;
package SRRHH::Schema::Result::VRecibosConjunto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VRecibosConjunto

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

=head1 TABLE: C<v_recibos_conjuntos>

=cut

__PACKAGE__->table("v_recibos_conjuntos");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_especial.numero_nomina,\n    v_recibos_especial.nomina_especial,\n    v_recibos_especial.id_nomina_especial,\n    v_recibos_especial.anio,\n    v_recibos_especial.mes,\n    v_recibos_especial.semana_quincena,\n    v_recibos_especial.id_grupo_nomina,\n    v_recibos_especial.codgno,\n    v_recibos_especial.gruponomina,\n    v_recibos_especial.periodicidad,\n    v_recibos_especial.id_tipo_personal,\n    v_recibos_especial.tipopersonal,\n    v_recibos_especial.codtno,\n    v_recibos_especial.cod_categoria,\n    v_recibos_especial.ingresoorganismo,\n    v_recibos_especial.fecha_prestaciones,\n    v_recibos_especial.fecha_vacaciones,\n    v_recibos_especial.fecha_antiguedad,\n    v_recibos_especial.fecha_ingreso_apn,\n    v_recibos_especial.codrac,\n    v_recibos_especial.estatus,\n    v_recibos_especial.formapago,\n    v_recibos_especial.cuenta_nomina,\n    v_recibos_especial.codtra,\n    v_recibos_especial.nacionalidad,\n    v_recibos_especial.cedula,\n    v_recibos_especial.primer_nombre,\n    v_recibos_especial.segundo_nombre,\n    v_recibos_especial.primer_apellido,\n    v_recibos_especial.segundo_apellido,\n    v_recibos_especial.sexo,\n    v_recibos_especial.fecha_nacimiento,\n    v_recibos_especial.codigocargo,\n    v_recibos_especial.cargo,\n    v_recibos_especial.cod_unidad_funcional,\n    v_recibos_especial.unidadfuncional,\n    v_recibos_especial.cod_unidad_ejecutora,\n    v_recibos_especial.uel,\n    v_recibos_especial.id_serie_cargo,\n    v_recibos_especial.seriecargo,\n    v_recibos_especial.gradocargo,\n    v_recibos_especial.id_dependencia,\n    v_recibos_especial.codcen,\n    v_recibos_especial.nombreunidad,\n    v_recibos_especial.id_region,\n    v_recibos_especial.region,\n    v_recibos_especial.id_trabajador,\n    v_recibos_especial.base_legal,\n    v_recibos_especial.id_concepto,\n    v_recibos_especial.codcon,\n    v_recibos_especial.descon,\n    v_recibos_especial.id_contador,\n    v_recibos_especial.unidades,\n    v_recibos_especial.asigna,\n    v_recibos_especial.deduce,\n    v_recibos_especial.monto_aporte,\n    v_recibos_especial.documento,\n    v_recibos_especial.frecon,\n    v_recibos_especial.suebas,\n    v_recibos_especial.fecha_inicio,\n    v_recibos_especial.fecha_fin,\n    v_recibos_especial.gravable,\n    v_recibos_especial.tipo_prestamo,\n    v_recibos_especial.cod_presupuesto,\n    v_recibos_especial.descripcion_presupuesto,\n    v_recibos_especial.id_concepto_tipo_personal,\n    v_recibos_especial.estatus_trabajador,\n    v_recibos_especial.fecha_egreso,\n    v_recibos_especial.trimestre\n   FROM v_recibos_especial\nUNION ALL\n SELECT v_recibos_quincena.numero_nomina,\n    v_recibos_quincena.nomina_regular AS nomina_especial,\n    NULL::integer AS id_nomina_especial,\n    v_recibos_quincena.anio,\n    v_recibos_quincena.mes,\n    v_recibos_quincena.semana_quincena,\n    v_recibos_quincena.id_grupo_nomina,\n    v_recibos_quincena.codgno,\n    v_recibos_quincena.gruponomina,\n    v_recibos_quincena.periodicidad,\n    v_recibos_quincena.id_tipo_personal,\n    v_recibos_quincena.tipopersonal,\n    v_recibos_quincena.codtno,\n    v_recibos_quincena.cod_categoria,\n    v_recibos_quincena.ingresoorganismo,\n    v_recibos_quincena.fecha_prestaciones,\n    v_recibos_quincena.fecha_vacaciones,\n    v_recibos_quincena.fecha_antiguedad,\n    v_recibos_quincena.fecha_ingreso_apn,\n    v_recibos_quincena.codrac,\n    v_recibos_quincena.estatus,\n    v_recibos_quincena.formapago,\n    v_recibos_quincena.cuenta_nomina,\n    v_recibos_quincena.codtra,\n    v_recibos_quincena.nacionalidad,\n    v_recibos_quincena.cedula,\n    v_recibos_quincena.primer_nombre,\n    v_recibos_quincena.segundo_nombre,\n    v_recibos_quincena.primer_apellido,\n    v_recibos_quincena.segundo_apellido,\n    v_recibos_quincena.sexo,\n    v_recibos_quincena.fecha_nacimiento,\n    v_recibos_quincena.codigocargo,\n    v_recibos_quincena.cargo,\n    v_recibos_quincena.cod_unidad_funcional,\n    v_recibos_quincena.unidadfuncional,\n    v_recibos_quincena.cod_unidad_ejecutora,\n    v_recibos_quincena.uel,\n    v_recibos_quincena.id_serie_cargo,\n    v_recibos_quincena.seriecargo,\n    v_recibos_quincena.gradocargo,\n    v_recibos_quincena.id_dependencia,\n    v_recibos_quincena.codcen,\n    v_recibos_quincena.nombreunidad,\n    v_recibos_quincena.id_region,\n    v_recibos_quincena.region,\n    v_recibos_quincena.id_trabajador,\n    v_recibos_quincena.base_legal,\n    v_recibos_quincena.id_concepto,\n    v_recibos_quincena.codcon,\n    v_recibos_quincena.descon,\n    v_recibos_quincena.id_contador,\n    v_recibos_quincena.unidades,\n    v_recibos_quincena.asigna,\n    v_recibos_quincena.deduce,\n    v_recibos_quincena.monto_aporte,\n    v_recibos_quincena.documento,\n    v_recibos_quincena.frecon,\n    v_recibos_quincena.suebas,\n    v_recibos_quincena.fecha_inicio,\n    v_recibos_quincena.fecha_fin,\n    v_recibos_quincena.gravable,\n    v_recibos_quincena.tipo_prestamo,\n    v_recibos_quincena.cod_presupuesto,\n    v_recibos_quincena.descripcion_presupuesto,\n    v_recibos_quincena.id_concepto_tipo_personal,\n    v_recibos_quincena.estatus_trabajador,\n    v_recibos_quincena.fecha_egreso,\n    v_recibos_quincena.trimestre\n   FROM v_recibos_quincena");

=head1 ACCESSORS

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_nomina_especial

  data_type: 'integer'
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

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 codgno

  data_type: 'integer'
  is_nullable: 1

=head2 gruponomina

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 periodicidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 ingresoorganismo

  data_type: 'date'
  is_nullable: 1

=head2 fecha_prestaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_antiguedad

  data_type: 'date'
  is_nullable: 1

=head2 fecha_ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 codrac

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 formapago

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cuenta_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 codtra

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 codigocargo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_unidad_funcional

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 unidadfuncional

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 seriecargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 gradocargo

  data_type: 'integer'
  is_nullable: 1

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 1

=head2 codcen

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombreunidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 1

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 id_contador

  data_type: 'integer'
  is_nullable: 1

=head2 unidades

  data_type: 'double precision'
  is_nullable: 1

=head2 asigna

  data_type: 'double precision'
  is_nullable: 1

=head2 deduce

  data_type: 'double precision'
  is_nullable: 1

=head2 monto_aporte

  data_type: 'double precision'
  is_nullable: 1

=head2 documento

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 frecon

  data_type: 'integer'
  is_nullable: 1

=head2 suebas

  data_type: 'double precision'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 gravable

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 tipo_prestamo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 descripcion_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 estatus_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 trimestre

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "codgno",
  { data_type => "integer", is_nullable => 1 },
  "gruponomina",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_categoria",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "ingresoorganismo",
  { data_type => "date", is_nullable => 1 },
  "fecha_prestaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_antiguedad",
  { data_type => "date", is_nullable => 1 },
  "fecha_ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "codrac",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "formapago",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "codtra",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "codigocargo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_unidad_funcional",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "unidadfuncional",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "seriecargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 1 },
  "codcen",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "id_contador",
  { data_type => "integer", is_nullable => 1 },
  "unidades",
  { data_type => "double precision", is_nullable => 1 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
  "monto_aporte",
  { data_type => "double precision", is_nullable => 1 },
  "documento",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "frecon",
  { data_type => "integer", is_nullable => 1 },
  "suebas",
  { data_type => "double precision", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "gravable",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipo_prestamo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "descripcion_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "estatus_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "trimestre",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KRElRelkeh8tnPORC4vXKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
