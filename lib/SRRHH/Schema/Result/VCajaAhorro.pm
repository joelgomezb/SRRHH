use utf8;
package SRRHH::Schema::Result::VCajaAhorro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VCajaAhorro

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

=head1 TABLE: C<v_caja_ahorros>

=cut

__PACKAGE__->table("v_caja_ahorros");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT vrc.id_concepto,\n    vrc.codcon,\n    vrc.descon,\n    vrc.anio,\n    vrc.mes,\n    vrc.semana_quincena,\n    vrc.fecha_inicio,\n    vrc.fecha_fin,\n    vrc.numero_nomina,\n    vrc.nomina_especial,\n    vrc.id_tipo_personal,\n    vrc.tipopersonal,\n    vrc.cedula,\n    (((((((vrc.primer_nombre)::text || ' '::text) || (vrc.segundo_nombre)::text) || ' '::text) || (vrc.primer_apellido)::text) || ' '::text) || (vrc.segundo_apellido)::text) AS trabajador,\n    sum(vrc.deduce) AS deduce,\n    sum(vrc.asigna) AS asigna\n   FROM v_recibos_conjuntos vrc\n  WHERE ((vrc.tipo_prestamo)::text = 'H'::text)\n  GROUP BY vrc.id_concepto, vrc.codcon, vrc.descon, vrc.anio, vrc.mes, vrc.semana_quincena, vrc.fecha_inicio, vrc.fecha_fin, vrc.numero_nomina, vrc.nomina_especial, vrc.id_tipo_personal, vrc.tipopersonal, vrc.cedula, vrc.deduce, vrc.primer_nombre, vrc.segundo_nombre, vrc.primer_apellido, vrc.segundo_apellido\n  ORDER BY vrc.id_concepto, vrc.codcon, vrc.descon, vrc.anio, vrc.mes, vrc.semana_quincena, vrc.fecha_inicio, vrc.fecha_fin, vrc.numero_nomina, vrc.nomina_especial, vrc.id_tipo_personal, vrc.tipopersonal, vrc.cedula, (((((((vrc.primer_nombre)::text || ' '::text) || (vrc.segundo_nombre)::text) || ' '::text) || (vrc.primer_apellido)::text) || ' '::text) || (vrc.segundo_apellido)::text)");

=head1 ACCESSORS

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

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 deduce

  data_type: 'double precision'
  is_nullable: 1

=head2 asigna

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2wR/InHNwG10KOHPXhgdQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
