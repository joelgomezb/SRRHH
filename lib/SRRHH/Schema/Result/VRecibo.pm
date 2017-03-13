use utf8;
package SRRHH::Schema::Result::VRecibo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VRecibo

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

=head1 TABLE: C<v_recibos>

=cut

__PACKAGE__->table("v_recibos");
__PACKAGE__->result_source_instance->view_definition(" SELECT so.anio,\n    so.mes,\n    so.semana_quincena,\n    so.fecha_inicio,\n    so.fecha_fin,\n    g.cod_grupo_nomina AS codgno,\n    g.nombre AS gruponomina,\n    g.periodicidad,\n    d.nombre AS tipopersonal,\n    d.cod_tipo_personal AS codtno,\n    b.fecha_ingreso AS ingresoorganismo,\n    b.codigo_nomina AS codrac,\n    b.estatus,\n    b.forma_pago AS formapago,\n    b.cuenta_nomina,\n    b.sueldo_basico AS suebas,\n    e.cedula AS codtra,\n    b.cedula,\n    e.primer_nombre,\n    e.segundo_nombre,\n    e.primer_apellido,\n    e.segundo_apellido,\n    k.cod_cargo AS codigocargo,\n    k.descripcion_cargo AS cargo,\n    k.grado AS gradocargo,\n    j.cod_dependencia AS codcen,\n    j.nombre AS nombreunidad,\n    b.id_trabajador,\n    au.id_unidad_administradora AS uniadm,\n    c.cod_concepto AS codcon,\n    c.descripcion AS descon,\n    a.unidades,\n    a.monto_asigna AS asigna,\n    a.monto_deduce AS deduce\n   FROM ultimanomina a,\n    trabajador b,\n    tipopersonal d,\n    personal e,\n    gruponomina g,\n    dependencia j,\n    cargo k,\n    administradorauel au,\n    concepto c,\n    conceptotipopersonal f,\n    frecuenciatipopersonal ftp,\n    seguridadordinaria so\n  WHERE ((g.id_grupo_nomina = a.id_grupo_nomina) AND (d.id_tipo_personal = a.id_tipo_personal) AND (b.id_tipo_personal = d.id_tipo_personal) AND (b.id_trabajador = a.id_trabajador) AND (e.id_personal = b.id_personal) AND (j.id_dependencia = b.id_dependencia) AND (k.id_cargo = b.id_cargo) AND (j.id_administradora_uel = au.id_administradora_uel) AND (a.id_concepto_tipo_personal = f.id_concepto_tipo_personal) AND (a.numero_nomina = 0) AND (c.id_concepto = f.id_concepto) AND (a.id_frecuencia_tipo_personal = ftp.id_frecuencia_tipo_personal) AND (so.fecha_proceso = ( SELECT max(seguridadordinaria.fecha_proceso) AS max\n           FROM seguridadordinaria\n          WHERE (seguridadordinaria.id_grupo_nomina = a.id_grupo_nomina))) AND (so.id_grupo_nomina = a.id_grupo_nomina))");

=head1 ACCESSORS

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

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 ingresoorganismo

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

=head2 suebas

  data_type: 'double precision'
  is_nullable: 1

=head2 codtra

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

=head2 codigocargo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 gradocargo

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

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 uniadm

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

=head2 unidades

  data_type: 'double precision'
  is_nullable: 1

=head2 asigna

  data_type: 'double precision'
  is_nullable: 1

=head2 deduce

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
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
  "codgno",
  { data_type => "integer", is_nullable => 1 },
  "gruponomina",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "ingresoorganismo",
  { data_type => "date", is_nullable => 1 },
  "codrac",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "formapago",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "suebas",
  { data_type => "double precision", is_nullable => 1 },
  "codtra",
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
  "codigocargo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "codcen",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "uniadm",
  { data_type => "integer", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "unidades",
  { data_type => "double precision", is_nullable => 1 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NxDjq4aO5STi4AcemO8l4g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
