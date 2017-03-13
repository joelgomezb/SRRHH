use utf8;
package SRRHH::Schema::Result::VRecibosConjuntosCorpoelec;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VRecibosConjuntosCorpoelec

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

=head1 TABLE: C<v_recibos_conjuntos_corpoelec>

=cut

__PACKAGE__->table("v_recibos_conjuntos_corpoelec");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_conjuntos_corpoelec.numero_nomina,\n    v_recibos_conjuntos_corpoelec.nomina_especial,\n    v_recibos_conjuntos_corpoelec.id_nomina_especial,\n    v_recibos_conjuntos_corpoelec.anio,\n    v_recibos_conjuntos_corpoelec.mes,\n    v_recibos_conjuntos_corpoelec.semana_quincena,\n    v_recibos_conjuntos_corpoelec.id_grupo_nomina,\n    v_recibos_conjuntos_corpoelec.codgno,\n    v_recibos_conjuntos_corpoelec.gruponomina,\n    v_recibos_conjuntos_corpoelec.periodicidad,\n    v_recibos_conjuntos_corpoelec.id_tipo_personal,\n    v_recibos_conjuntos_corpoelec.tipopersonal,\n    v_recibos_conjuntos_corpoelec.codtno,\n    v_recibos_conjuntos_corpoelec.ingresoorganismo,\n    v_recibos_conjuntos_corpoelec.fecha_prestaciones,\n    v_recibos_conjuntos_corpoelec.fecha_vacaciones,\n    v_recibos_conjuntos_corpoelec.fecha_antiguedad,\n    v_recibos_conjuntos_corpoelec.fecha_ingreso_apn,\n    v_recibos_conjuntos_corpoelec.codrac,\n    v_recibos_conjuntos_corpoelec.estatus,\n    v_recibos_conjuntos_corpoelec.formapago,\n    v_recibos_conjuntos_corpoelec.cuenta_nomina,\n    v_recibos_conjuntos_corpoelec.codtra,\n    v_recibos_conjuntos_corpoelec.nacionalidad,\n    v_recibos_conjuntos_corpoelec.cedula,\n    v_recibos_conjuntos_corpoelec.primer_nombre,\n    v_recibos_conjuntos_corpoelec.segundo_nombre,\n    v_recibos_conjuntos_corpoelec.primer_apellido,\n    v_recibos_conjuntos_corpoelec.segundo_apellido,\n    v_recibos_conjuntos_corpoelec.sexo,\n    v_recibos_conjuntos_corpoelec.codigocargo,\n    v_recibos_conjuntos_corpoelec.cargo,\n    v_recibos_conjuntos_corpoelec.cod_unidad_funcional,\n    v_recibos_conjuntos_corpoelec.unidadfuncional,\n    v_recibos_conjuntos_corpoelec.cod_unidad_ejecutora,\n    v_recibos_conjuntos_corpoelec.uel,\n    v_recibos_conjuntos_corpoelec.id_serie_cargo,\n    v_recibos_conjuntos_corpoelec.seriecargo,\n    v_recibos_conjuntos_corpoelec.gradocargo,\n    v_recibos_conjuntos_corpoelec.id_dependencia,\n    v_recibos_conjuntos_corpoelec.codcen,\n    v_recibos_conjuntos_corpoelec.nombreunidad,\n    v_recibos_conjuntos_corpoelec.id_region,\n    v_recibos_conjuntos_corpoelec.region,\n    v_recibos_conjuntos_corpoelec.id_trabajador,\n    v_recibos_conjuntos_corpoelec.base_legal,\n    v_recibos_conjuntos_corpoelec.id_concepto,\n    v_recibos_conjuntos_corpoelec.codcon,\n    v_recibos_conjuntos_corpoelec.descon,\n    v_recibos_conjuntos_corpoelec.id_contador,\n    v_recibos_conjuntos_corpoelec.unidades,\n    v_recibos_conjuntos_corpoelec.asigna,\n    v_recibos_conjuntos_corpoelec.deduce,\n    v_recibos_conjuntos_corpoelec.monto_aporte,\n    v_recibos_conjuntos_corpoelec.documento,\n    v_recibos_conjuntos_corpoelec.frecon,\n    v_recibos_conjuntos_corpoelec.suebas,\n    v_recibos_conjuntos_corpoelec.fecha_inicio,\n    v_recibos_conjuntos_corpoelec.fecha_fin,\n    v_recibos_conjuntos_corpoelec.gravable,\n    v_recibos_conjuntos_corpoelec.tipo_prestamo,\n    v_recibos_conjuntos_corpoelec.cod_presupuesto,\n    v_recibos_conjuntos_corpoelec.descripcion_presupuesto,\n    v_recibos_conjuntos_corpoelec.id_concepto_tipo_personal\n   FROM dblink('dbname=sigefirrhh hostaddr=10.1.5.120 user=intranet password=intranet'::text, 'SELECT numero_nomina, nomina_especial, id_nomina_especial, anio, mes, \n       semana_quincena, id_grupo_nomina, codgno, gruponomina, periodicidad, \n       id_tipo_personal, tipopersonal, codtno, ingresoorganismo, fecha_prestaciones, \n       fecha_vacaciones, fecha_antiguedad, fecha_ingreso_apn, codrac, \n       estatus, formapago, cuenta_nomina, codtra, nacionalidad, cedula, \n       primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, \n       sexo, codigocargo, cargo, cod_unidad_funcional, unidadfuncional, \n       cod_unidad_ejecutora, uel, id_serie_cargo, seriecargo, gradocargo, \n       id_dependencia, codcen, nombreunidad, id_region, region, id_trabajador, \n       base_legal, id_concepto, codcon, descon, id_contador, unidades, \n       asigna, deduce, monto_aporte, documento, frecon, suebas, fecha_inicio, \n       fecha_fin, gravable, tipo_prestamo, cod_presupuesto, descripcion_presupuesto, \n       id_concepto_tipo_personal\n  FROM v_recibos_conjuntos'::text) v_recibos_conjuntos_corpoelec(numero_nomina integer, nomina_especial character varying, id_nomina_especial integer, anio integer, mes integer, semana_quincena integer, id_grupo_nomina integer, codgno integer, gruponomina character varying, periodicidad character varying, id_tipo_personal integer, tipopersonal character varying, codtno character varying, ingresoorganismo date, fecha_prestaciones date, fecha_vacaciones date, fecha_antiguedad date, fecha_ingreso_apn date, codrac integer, estatus character varying, formapago integer, cuenta_nomina character varying, codtra integer, nacionalidad character varying, cedula integer, primer_nombre character varying, segundo_nombre character varying, primer_apellido character varying, segundo_apellido character varying, sexo character varying, codigocargo character varying, cargo character varying, cod_unidad_funcional character varying, unidadfuncional character varying, cod_unidad_ejecutora character varying, uel character varying, id_serie_cargo integer, seriecargo character varying, gradocargo integer, id_dependencia integer, codcen character varying, nombreunidad character varying, id_region integer, region character varying, id_trabajador integer, base_legal character varying, id_concepto integer, codcon character varying, descon character varying, id_contador integer, unidades integer, asigna double precision, deduce double precision, monto_aporte double precision, documento character varying, frecon integer, suebas double precision, fecha_inicio date, fecha_fin date, gravable character varying, tipo_prestamo character varying, cod_presupuesto character varying, descripcion_presupuesto character varying, id_concepto_tipo_personal integer)");

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

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 periodicidad

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codtno

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

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

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 formapago

  data_type: 'integer'
  is_nullable: 1

=head2 cuenta_nomina

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codtra

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 sexo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codigocargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_unidad_funcional

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 unidadfuncional

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_unidad_ejecutora

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 uel

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 seriecargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 gradocargo

  data_type: 'integer'
  is_nullable: 1

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 1

=head2 codcen

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 nombreunidad

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 region

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 1

=head2 codcon

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 descon

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_contador

  data_type: 'integer'
  is_nullable: 1

=head2 unidades

  data_type: 'integer'
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

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

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

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 tipo_prestamo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_presupuesto

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 descripcion_presupuesto

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_concepto_tipo_personal

  data_type: 'integer'
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
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "periodicidad",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codtno",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
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
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "formapago",
  { data_type => "integer", is_nullable => 1 },
  "cuenta_nomina",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codtra",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "segundo_nombre",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "primer_apellido",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "segundo_apellido",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "sexo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codigocargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_unidad_funcional",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "unidadfuncional",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_unidad_ejecutora",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "uel",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "seriecargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 1 },
  "codcen",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "nombreunidad",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "region",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "base_legal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
  "codcon",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "descon",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_contador",
  { data_type => "integer", is_nullable => 1 },
  "unidades",
  { data_type => "integer", is_nullable => 1 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
  "monto_aporte",
  { data_type => "double precision", is_nullable => 1 },
  "documento",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "frecon",
  { data_type => "integer", is_nullable => 1 },
  "suebas",
  { data_type => "double precision", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "gravable",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "tipo_prestamo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_presupuesto",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "descripcion_presupuesto",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s1c3m7SSz0+MMxPpttAc+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
