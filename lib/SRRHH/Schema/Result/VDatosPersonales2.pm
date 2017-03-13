use utf8;
package SRRHH::Schema::Result::VDatosPersonales2;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VDatosPersonales2

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

=head1 TABLE: C<v_datos_personales_2>

=cut

__PACKAGE__->table("v_datos_personales_2");
__PACKAGE__->result_source_instance->view_definition(" SELECT p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    p.primer_apellido,\n    p.segundo_apellido,\n    p.sexo,\n    p.fecha_nacimiento,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    t.codigo_nomina,\n    d.nombre AS dependencia,\n    t.fecha_ingreso,\n    tp.nombre AS tipopersonal,\n    gn.periodicidad,\n    uad.nombre AS unidad_administradora,\n    consultar_jerarquia_dependencia((d.cod_dependencia)::text) AS jerarquia_dependencia,\n    d.cod_dependencia\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    gruponomina gn,\n    dependencia d,\n    administradorauel aue,\n    unidadadministradora uad\n  WHERE ((t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (tp.id_grupo_nomina = gn.id_grupo_nomina) AND (t.id_dependencia = d.id_dependencia) AND (aue.id_administradora_uel = d.id_administradora_uel) AND (uad.id_unidad_administradora = aue.id_unidad_administradora))\n  ORDER BY p.cedula");

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

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

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

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 periodicidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 unidad_administradora

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 jerarquia_dependencia

  data_type: 'text'
  is_nullable: 1

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

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
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
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
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "unidad_administradora",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "jerarquia_dependencia",
  { data_type => "text", is_nullable => 1 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ybLfRyutz+tFo/cfGyZe+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
