use utf8;
package SRRHH::Schema::Result::VTrabajadorGeneralAdicionale;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VTrabajadorGeneralAdicionale

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

=head1 TABLE: C<v_trabajador_general_adicionales>

=cut

__PACKAGE__->table("v_trabajador_general_adicionales");
__PACKAGE__->result_source_instance->view_definition(" SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    d.nombre AS dependencia\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    dependencia d\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_dependencia = d.id_dependencia) AND ((t.estatus)::text = 'A'::text))\nUNION\n SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    d.nombre AS dependencia\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    dependencia d\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_dependencia = d.id_dependencia) AND (t.id_trabajador IN ( SELECT a.max\n           FROM ( SELECT max(t_1.id_trabajador) AS max\n                   FROM trabajador t_1\n                  WHERE (((t_1.estatus)::text = ANY (ARRAY['E'::text, 'S'::text])) AND (NOT (t_1.cedula IN ( SELECT trabajador.cedula\n                           FROM trabajador\n                          WHERE ((trabajador.estatus)::text = 'A'::text)))))\n                  GROUP BY t_1.cedula\n                  ORDER BY t_1.cedula) a)))\nUNION\n SELECT ta.cedula,\n    ta.primer_nombre,\n    ta.segundo_nombre,\n    ta.primer_apellido,\n    ta.segundo_apellido,\n    NULL::integer AS id_tipo_personal,\n    NULL::character varying AS tipo_personal,\n    ta.cargo AS descripcion_cargo,\n    'A'::character varying AS estatus,\n    NULL::character varying AS telefono_oficina,\n    NULL::character varying AS telefono_celular,\n    NULL::character varying AS telefono_residencia,\n    NULL::character varying AS email,\n    ta.dependencia\n   FROM trabajadoresadicional ta");

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

=head2 dependencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

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
  "dependencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r9ztOJ8MsxRUibTB8Vjz7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
