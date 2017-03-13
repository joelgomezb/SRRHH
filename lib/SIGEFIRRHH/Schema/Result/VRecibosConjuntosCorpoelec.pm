use utf8;
package SIGEFIRRHH::Schema::Result::VRecibosConjuntosCorpoelec;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VRecibosConjuntosCorpoelec

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QD0VzCtbeAKShrZd4P2HSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
