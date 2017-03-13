use utf8;
package SRRHH::Schema::Result::VDatosPersonalesCarnet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VDatosPersonalesCarnet

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

=head1 TABLE: C<v_datos_personales_carnet>

=cut

__PACKAGE__->table("v_datos_personales_carnet");
__PACKAGE__->result_source_instance->view_definition(" SELECT t.id_trabajador,\n    p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    carnet.id_carnet,\n    carnet.situacion,\n    sc.nombre AS situcarnet,\n    p.primer_apellido,\n    p.segundo_apellido,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal,\n    c.cod_cargo AS codigo_clase,\n    c.descripcion_cargo,\n    t.estatus,\n    p.telefono_oficina,\n    p.telefono_celular,\n    p.telefono_residencia,\n    p.email,\n    t.codigo_nomina,\n    d.nombre AS dependencia,\n    t.fecha_ingreso,\n    tp.nombre AS tipopersonal,\n    gn.periodicidad,\n    uad.nombre AS unidad_administradora,\n    consultar_jerarquia_dependencia((d.cod_dependencia)::text) AS jerarquia_dependencia,\n    d.cod_dependencia\n   FROM (((((((((personal p\n     JOIN trabajador t ON ((p.id_personal = t.id_personal)))\n     JOIN cargo c ON ((t.id_cargo = c.id_cargo)))\n     JOIN tipopersonal tp ON ((t.id_tipo_personal = tp.id_tipo_personal)))\n     JOIN gruponomina gn ON ((tp.id_grupo_nomina = gn.id_grupo_nomina)))\n     JOIN dependencia d ON ((d.id_dependencia = t.id_dependencia)))\n     JOIN administradorauel aue ON ((aue.id_administradora_uel = d.id_administradora_uel)))\n     JOIN unidadadministradora uad ON ((uad.id_unidad_administradora = aue.id_unidad_administradora)))\n     LEFT JOIN carnet ON ((t.id_trabajador = carnet.id_trabajador)))\n     JOIN situcarnet sc ON ((sc.id_situacion_carnet = carnet.situacion)))\n  ORDER BY p.cedula");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

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

=head2 id_carnet

  data_type: 'integer'
  is_nullable: 1

=head2 situacion

  data_type: 'integer'
  is_nullable: 1

=head2 situcarnet

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

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

=head2 codigo_clase

  data_type: 'varchar'
  is_nullable: 1
  size: 10

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
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_carnet",
  { data_type => "integer", is_nullable => 1 },
  "situacion",
  { data_type => "integer", is_nullable => 1 },
  "situcarnet",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codigo_clase",
  { data_type => "varchar", is_nullable => 1, size => 10 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sEtfG7QjgH2bY7Lg7iqODQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
