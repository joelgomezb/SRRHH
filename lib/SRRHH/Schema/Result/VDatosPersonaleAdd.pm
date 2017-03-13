use utf8;
package SRRHH::Schema::Result::VDatosPersonaleAdd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VDatosPersonaleAdd

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

=head1 TABLE: C<v_datos_personales_add>

=cut

__PACKAGE__->table("v_datos_personales_add");
__PACKAGE__->result_source_instance->view_definition(" SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    t.codigo_nomina,\n    d.nombre AS dependencia,\n    t.fecha_ingreso\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    gruponomina gn,\n    dependencia d\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (tp.id_grupo_nomina = gn.id_grupo_nomina) AND (t.id_dependencia = d.id_dependencia) AND (((t.estatus)::text = 'A'::text) OR ((t.estatus)::text = 'S'::text)))\nUNION\n SELECT trabajadoresadicional.cedula,\n    trabajadoresadicional.primer_nombre,\n    trabajadoresadicional.segundo_nombre,\n    trabajadoresadicional.primer_apellido,\n    trabajadoresadicional.segundo_apellido,\n    0 AS id_tipo_personal,\n    ''::character varying AS tipo_personal,\n    ''::character varying AS descripcion_cargo,\n    'A'::character varying AS estatus,\n    ''::character varying AS telefono_oficina,\n    ''::character varying AS telefono_celular,\n    ''::character varying AS telefono_residencia,\n    ''::character varying AS email,\n    0 AS codigo_nomina,\n    trabajadoresadicional.dependencia,\n    '2013-01-01'::date AS fecha_ingreso\n   FROM trabajadoresadicional");

=head1 ACCESSORS

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

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 descripcion_cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 estatus

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_oficina

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_celular

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_residencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 email

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 dependencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
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
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "descripcion_cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "estatus",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_oficina",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_celular",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_residencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "email",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "dependencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4TULgdvrEgK/AUxjlnpqcg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
