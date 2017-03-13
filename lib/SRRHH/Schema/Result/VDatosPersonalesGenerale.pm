use utf8;
package SRRHH::Schema::Result::VDatosPersonalesGenerale;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VDatosPersonalesGenerale

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

=head1 TABLE: C<v_datos_personales_generales>

=cut

__PACKAGE__->table("v_datos_personales_generales");
__PACKAGE__->result_source_instance->view_definition(" SELECT todos.id_trabajador,\n    todos.cedula,\n    todos.primer_nombre,\n    todos.segundo_nombre,\n    todos.primer_apellido,\n    todos.segundo_apellido,\n    todos.id_tipo_personal,\n    todos.tipo_personal,\n    todos.tipo_cargo,\n    todos.situacion,\n    todos.codigo_clase,\n    todos.descripcion_cargo,\n    todos.grado,\n    todos.sub_grado,\n    todos.monto,\n    todos.id_serie_cargo,\n    todos.serie_cargo,\n    todos.estatus,\n    todos.telefono_oficina,\n    todos.telefono_celular,\n    todos.telefono_residencia,\n    todos.email,\n    todos.codigo_nomina,\n    todos.cod_unidad_ejecutora,\n    todos.unidad_ejecutora,\n    todos.dependencia,\n    todos.fecha_ingreso,\n    todos.nombre,\n    todos.periodicidad,\n    todos.unidad_administradora,\n    todos.fecha_egreso,\n    todos.remuneracion\n   FROM (( SELECT DISTINCT t.id_trabajador,\n            p.cedula,\n            p.primer_nombre,\n            p.segundo_nombre,\n            p.primer_apellido,\n            p.segundo_apellido,\n            tp.id_tipo_personal,\n            tp.nombre AS tipo_personal,\n            c.tipo_cargo,\n            t.situacion,\n            c.cod_cargo AS codigo_clase,\n            c.descripcion_cargo,\n            c.grado,\n            c.sub_grado,\n            dt.monto,\n            c.id_serie_cargo,\n            sc.nombre AS serie_cargo,\n            t.estatus,\n            p.telefono_oficina,\n            p.telefono_celular,\n            p.telefono_residencia,\n            p.email,\n            t.codigo_nomina,\n            uel.cod_unidad_ejecutora,\n            uel.nombre AS unidad_ejecutora,\n            d.nombre AS dependencia,\n            t.fecha_ingreso,\n            tp.nombre,\n            gn.periodicidad,\n            uad.nombre AS unidad_administradora,\n            NULL::date AS fecha_egreso,\n            dt.monto AS remuneracion\n           FROM ((((((((((((trabajador t\n             JOIN personal p ON ((p.id_personal = t.id_personal)))\n             JOIN cargo c ON ((c.id_cargo = t.id_cargo)))\n             JOIN tipopersonal tp ON ((t.id_tipo_personal = tp.id_tipo_personal)))\n             JOIN gruponomina gn ON ((tp.id_grupo_nomina = tp.id_grupo_nomina)))\n             JOIN dependencia d ON ((d.id_dependencia = t.id_dependencia)))\n             JOIN seriecargo sc ON ((c.id_serie_cargo = sc.id_serie_cargo)))\n             JOIN manualcargo mc ON ((c.id_manual_cargo = mc.id_manual_cargo)))\n             JOIN administradorauel aue ON ((d.id_administradora_uel = aue.id_administradora_uel)))\n             JOIN unidadadministradora uad ON ((uad.id_unidad_administradora = aue.id_unidad_administradora)))\n             JOIN unidadejecutora uel ON ((aue.id_unidad_ejecutora = uel.id_unidad_ejecutora)))\n             JOIN tabulador ta ON ((ta.id_tabulador = mc.id_tabulador)))\n             LEFT JOIN detalletabulador dt ON (((ta.id_tabulador = dt.id_tabulador) AND (c.grado = dt.grado) AND (c.sub_grado = dt.sub_grado))))\n          WHERE ((t.estatus)::text = 'A'::text)\n          GROUP BY t.id_trabajador, p.cedula, p.primer_nombre, p.segundo_nombre, p.primer_apellido, p.segundo_apellido, tp.id_tipo_personal, tp.nombre, c.tipo_cargo, t.situacion, c.cod_cargo, c.descripcion_cargo, c.grado, c.sub_grado, dt.monto, c.id_serie_cargo, sc.nombre, t.estatus, p.telefono_oficina, p.telefono_celular, p.telefono_residencia, p.email, t.codigo_nomina, uel.cod_unidad_ejecutora, uel.nombre, d.nombre, t.fecha_ingreso, gn.periodicidad, uad.nombre, NULL::date\n          ORDER BY p.cedula)\n        UNION\n        ( SELECT DISTINCT t.id_trabajador,\n            p.cedula,\n            p.primer_nombre,\n            p.segundo_nombre,\n            p.primer_apellido,\n            p.segundo_apellido,\n            tp.id_tipo_personal,\n            tp.nombre AS tipo_personal,\n            c.tipo_cargo,\n            t.situacion,\n            c.cod_cargo AS codigo_clase,\n            c.descripcion_cargo,\n            c.grado,\n            c.sub_grado,\n            dt.monto,\n            c.id_serie_cargo,\n            sc.nombre AS serie_cargo,\n            t.estatus,\n            p.telefono_oficina,\n            p.telefono_celular,\n            p.telefono_residencia,\n            p.email,\n            t.codigo_nomina,\n            uel.cod_unidad_ejecutora,\n            uel.nombre AS unidad_ejecutora,\n            d.nombre AS dependencia,\n            t.fecha_ingreso,\n            tp.nombre,\n            gn.periodicidad,\n            uad.nombre AS unidad_administradora,\n            NULL::date AS fecha_egreso,\n            dt.monto AS remuneracion\n           FROM ((((((((((((trabajador t\n             JOIN personal p ON ((p.id_personal = t.id_personal)))\n             JOIN cargo c ON ((c.id_cargo = t.id_cargo)))\n             JOIN tipopersonal tp ON ((t.id_tipo_personal = tp.id_tipo_personal)))\n             JOIN gruponomina gn ON ((tp.id_grupo_nomina = tp.id_grupo_nomina)))\n             JOIN dependencia d ON ((d.id_dependencia = t.id_dependencia)))\n             JOIN seriecargo sc ON ((c.id_serie_cargo = sc.id_serie_cargo)))\n             JOIN manualcargo mc ON ((c.id_manual_cargo = mc.id_manual_cargo)))\n             JOIN administradorauel aue ON ((d.id_administradora_uel = aue.id_administradora_uel)))\n             JOIN unidadadministradora uad ON ((uad.id_unidad_administradora = aue.id_unidad_administradora)))\n             JOIN unidadejecutora uel ON ((aue.id_unidad_ejecutora = uel.id_unidad_ejecutora)))\n             JOIN tabulador ta ON ((ta.id_tabulador = mc.id_tabulador)))\n             LEFT JOIN detalletabulador dt ON (((ta.id_tabulador = dt.id_tabulador) AND (c.grado = dt.grado) AND (c.sub_grado = dt.sub_grado))))\n          WHERE (NOT (t.cedula IN ( SELECT trabajador.cedula\n                   FROM trabajador\n                  WHERE ((trabajador.estatus)::text = 'A'::text))))\n          GROUP BY t.id_trabajador, p.cedula, p.primer_nombre, p.segundo_nombre, p.primer_apellido, p.segundo_apellido, tp.id_tipo_personal, tp.nombre, c.tipo_cargo, t.situacion, c.cod_cargo, c.descripcion_cargo, c.grado, c.sub_grado, dt.monto, c.id_serie_cargo, sc.nombre, t.estatus, p.telefono_oficina, p.telefono_celular, p.telefono_residencia, p.email, t.codigo_nomina, uel.cod_unidad_ejecutora, uel.nombre, d.nombre, t.fecha_ingreso, gn.periodicidad, uad.nombre, NULL::date\n          ORDER BY p.cedula)) todos");

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

=head2 tipo_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 codigo_clase

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 grado

  data_type: 'integer'
  is_nullable: 1

=head2 sub_grado

  data_type: 'integer'
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 serie_cargo

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

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 nombre

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

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 remuneracion

  data_type: 'double precision'
  is_nullable: 1

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
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "tipo_cargo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "codigo_clase",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "grado",
  { data_type => "integer", is_nullable => 1 },
  "sub_grado",
  { data_type => "integer", is_nullable => 1 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "serie_cargo",
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
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "unidad_administradora",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "remuneracion",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k/ZT6xBEFBtUdq7KQzkLDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
