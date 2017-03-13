use utf8;
package SRRHH::Schema::Result::VTrabajadorGeneral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VTrabajadorGeneral

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

=head1 TABLE: C<v_trabajador_general>

=cut

__PACKAGE__->table("v_trabajador_general");
__PACKAGE__->result_source_instance->view_definition(" SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    d.nombre AS dependencia\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    dependencia d\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_dependencia = d.id_dependencia) AND ((t.estatus)::text = 'A'::text))\nUNION\n SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    d.nombre AS dependencia\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    dependencia d\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_dependencia = d.id_dependencia) AND (t.id_trabajador IN ( SELECT a.max\n           FROM ( SELECT max(t_1.id_trabajador) AS max\n                   FROM trabajador t_1\n                  WHERE (((t_1.estatus)::text = ANY (ARRAY['E'::text, 'S'::text])) AND (NOT (t_1.cedula IN ( SELECT trabajador.cedula\n                           FROM trabajador\n                          WHERE ((trabajador.estatus)::text = 'A'::text)))))\n                  GROUP BY t_1.cedula\n                  ORDER BY t_1.cedula) a)))");

=head1 ACCESSORS

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

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 telefono_oficina

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_celular

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
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
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "telefono_oficina",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_celular",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_residencia",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m9oFvCxc3XrWw9+45Ygnzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
