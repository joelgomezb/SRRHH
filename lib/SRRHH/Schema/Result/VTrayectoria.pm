use utf8;
package SRRHH::Schema::Result::VTrayectoria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VTrayectoria

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

=head1 TABLE: C<v_trayectoria>

=cut

__PACKAGE__->table("v_trayectoria");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT p.cedula,\n    p.primer_apellido,\n    p.segundo_apellido,\n    p.primer_nombre,\n    p.segundo_nombre,\n    2010 AS anio_preparacion,\n    '2010-03-01'::date AS fecha_preparacion,\n    NULL::text AS codigo_anterior_mpd,\n    NULL::text AS numero_remesa,\n    rstp.numero_movimiento,\n    0 AS correlativo_mpd,\n    o.nombre_corto,\n    o.nombre_organismo,\n    '4'::text AS estatus,\n    '2010-03-01'::date AS fecha_estatus,\n    '2010-03-01'::date AS fecha_vigencia,\n    (('0'::text || (r.cod_region)::text) || (r.cod_region)::text) AS cod_ubi_geografico,\n    edo.nombre AS estado,\n    ciudad.nombre AS ciudad,\n    mun.nombre AS municipio,\n    r.cod_region,\n    r.nombre AS nombre_region,\n    d.cod_dependencia,\n    d.nombre AS nombre_dependencia,\n    cm.cod_causa_movimiento,\n    cm.descripcion AS descripcion_movimiento,\n    o.nombre_corto AS nombre_corto_grupo,\n    o.nombre_organismo AS nombre_largo_grupo,\n    '0'::text AS caucion,\n    (mc.cod_manual_cargo)::text AS cod_manual_cargo,\n    c.cod_cargo,\n    c.descripcion_cargo,\n    relper.cod_relacion,\n    relper.desc_relacion,\n    catper.cod_categoria,\n    catper.desc_categoria,\n    NULL::text AS nombramiento,\n    c.grado,\n    1 AS paso,\n    t.codigo_nomina,\n    0 AS monto_jubilacion,\n    0 AS porc_jubilacion,\n    sp.promedio_sueldo AS sueldo_promedio,\n    0 AS monto_jubilacion_sobrev,\n    0 AS porc_pension_sobrev,\n    0 AS monto_pension_sobrev,\n    0 AS monto_pension_invalid,\n    0 AS porc_pension_invalid,\n    0 AS invalidez_sact,\n    t.sueldo_basico,\n    0 AS compensacion,\n    0 AS prima_jerarquia,\n    0 AS prima_servicio,\n    0 AS ajuste_sueldo,\n    0 AS otros_pagos,\n    0 AS otros_no_vicepladin,\n    0 AS primas_cargo,\n    0 AS primas_trabajador,\n    p.id_personal,\n    0 AS horas,\n    NULL::text AS cod_concurso,\n    '2010-03-01'::date AS fecha_punto,\n    'NUEVO MINISTERIO DE ELECTRICIDAD'::text AS observaciones,\n    'S'::text AS origen,\n    'punt_cta XXXX'::text AS punto_cuenta,\n    'noviedo'::text AS usuario,\n    go.cod_grupo_organismo,\n    o.cod_organismo,\n    NULL::date AS fecha_culminacion\n   FROM trabajador t,\n    cargo c,\n    dependencia d,\n    sede s,\n    tipopersonal tp,\n    causamovimiento cm,\n    manualcargo mc,\n    tabulador tab,\n    personal p,\n    organismo o,\n    region r,\n    ciudad,\n    estado edo,\n    municipio mun,\n    clasificacionpersonal clapers,\n    relacionpersonal relper,\n    categoriapersonal catper,\n    sueldopromedio sp,\n    grupoorganismo go,\n    registrositp rstp\n  WHERE ((t.id_cargo = c.id_cargo) AND (t.id_dependencia = d.id_dependencia) AND (d.id_sede = s.id_sede) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_causa_movimiento = cm.id_causa_movimiento) AND (c.id_manual_cargo = mc.id_manual_cargo) AND (tab.id_tabulador = mc.id_tabulador) AND (t.id_personal = p.id_personal) AND (tp.id_organismo = o.id_organismo) AND (r.id_organismo = o.id_organismo) AND (o.id_ciudad = ciudad.id_ciudad) AND (ciudad.id_estado = edo.id_estado) AND (mun.id_estado = edo.id_estado) AND (clapers.id_clasificacion_personal = tp.id_clasificacion_personal) AND (clapers.id_relacion_personal = relper.id_relacion_personal) AND (clapers.id_categoria_personal = catper.id_categoria_personal) AND (sp.id_trabajador = t.id_trabajador) AND (go.id_organismo = o.id_organismo) AND (rstp.cedula = p.cedula))\n  ORDER BY p.cedula, p.primer_apellido, p.segundo_apellido, p.primer_nombre, p.segundo_nombre, 2010::integer, '2010-03-01'::date, NULL::text, rstp.numero_movimiento, 0::integer, o.nombre_corto, o.nombre_organismo, '4'::text, (('0'::text || (r.cod_region)::text) || (r.cod_region)::text), edo.nombre, ciudad.nombre, mun.nombre, r.cod_region, r.nombre, d.cod_dependencia, d.nombre, cm.cod_causa_movimiento, cm.descripcion, '0'::text, (mc.cod_manual_cargo)::text, c.cod_cargo, c.descripcion_cargo, relper.cod_relacion, relper.desc_relacion, catper.cod_categoria, catper.desc_categoria, c.grado, 1::integer, t.codigo_nomina, sp.promedio_sueldo, t.sueldo_basico, p.id_personal, 'NUEVO MINISTERIO DE ELECTRICIDAD'::text, 'S'::text, 'punt_cta XXXX'::text, 'noviedo'::text, go.cod_grupo_organismo, o.cod_organismo, NULL::date");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 anio_preparacion

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_preparacion

  data_type: 'date'
  is_nullable: 1

=head2 codigo_anterior_mpd

  data_type: 'text'
  is_nullable: 1

=head2 numero_remesa

  data_type: 'text'
  is_nullable: 1

=head2 numero_movimiento

  data_type: 'integer'
  is_nullable: 1

=head2 correlativo_mpd

  data_type: 'integer'
  is_nullable: 1

=head2 nombre_corto

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 nombre_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 estatus

  data_type: 'text'
  is_nullable: 1

=head2 fecha_estatus

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 cod_ubi_geografico

  data_type: 'text'
  is_nullable: 1

=head2 estado

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 ciudad

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 municipio

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 cod_region

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nombre_region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_causa_movimiento

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 descripcion_movimiento

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 nombre_corto_grupo

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 nombre_largo_grupo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 caucion

  data_type: 'text'
  is_nullable: 1

=head2 cod_manual_cargo

  data_type: 'text'
  is_nullable: 1

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_relacion

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 desc_relacion

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cod_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 desc_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombramiento

  data_type: 'text'
  is_nullable: 1

=head2 grado

  data_type: 'integer'
  is_nullable: 1

=head2 paso

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 monto_jubilacion

  data_type: 'integer'
  is_nullable: 1

=head2 porc_jubilacion

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo_promedio

  data_type: 'double precision'
  is_nullable: 1

=head2 monto_jubilacion_sobrev

  data_type: 'integer'
  is_nullable: 1

=head2 porc_pension_sobrev

  data_type: 'integer'
  is_nullable: 1

=head2 monto_pension_sobrev

  data_type: 'integer'
  is_nullable: 1

=head2 monto_pension_invalid

  data_type: 'integer'
  is_nullable: 1

=head2 porc_pension_invalid

  data_type: 'integer'
  is_nullable: 1

=head2 invalidez_sact

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'integer'
  is_nullable: 1

=head2 prima_jerarquia

  data_type: 'integer'
  is_nullable: 1

=head2 prima_servicio

  data_type: 'integer'
  is_nullable: 1

=head2 ajuste_sueldo

  data_type: 'integer'
  is_nullable: 1

=head2 otros_pagos

  data_type: 'integer'
  is_nullable: 1

=head2 otros_no_vicepladin

  data_type: 'integer'
  is_nullable: 1

=head2 primas_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 primas_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 1

=head2 horas

  data_type: 'integer'
  is_nullable: 1

=head2 cod_concurso

  data_type: 'text'
  is_nullable: 1

=head2 fecha_punto

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 origen

  data_type: 'text'
  is_nullable: 1

=head2 punto_cuenta

  data_type: 'text'
  is_nullable: 1

=head2 usuario

  data_type: 'text'
  is_nullable: 1

=head2 cod_grupo_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 cod_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 fecha_culminacion

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "anio_preparacion",
  { data_type => "integer", is_nullable => 1 },
  "fecha_preparacion",
  { data_type => "date", is_nullable => 1 },
  "codigo_anterior_mpd",
  { data_type => "text", is_nullable => 1 },
  "numero_remesa",
  { data_type => "text", is_nullable => 1 },
  "numero_movimiento",
  { data_type => "integer", is_nullable => 1 },
  "correlativo_mpd",
  { data_type => "integer", is_nullable => 1 },
  "nombre_corto",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "nombre_organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "estatus",
  { data_type => "text", is_nullable => 1 },
  "fecha_estatus",
  { data_type => "date", is_nullable => 1 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "cod_ubi_geografico",
  { data_type => "text", is_nullable => 1 },
  "estado",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "ciudad",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "municipio",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre_region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_causa_movimiento",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "descripcion_movimiento",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombre_corto_grupo",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "nombre_largo_grupo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "caucion",
  { data_type => "text", is_nullable => 1 },
  "cod_manual_cargo",
  { data_type => "text", is_nullable => 1 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_relacion",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "desc_relacion",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cod_categoria",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "desc_categoria",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombramiento",
  { data_type => "text", is_nullable => 1 },
  "grado",
  { data_type => "integer", is_nullable => 1 },
  "paso",
  { data_type => "integer", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "monto_jubilacion",
  { data_type => "integer", is_nullable => 1 },
  "porc_jubilacion",
  { data_type => "integer", is_nullable => 1 },
  "sueldo_promedio",
  { data_type => "double precision", is_nullable => 1 },
  "monto_jubilacion_sobrev",
  { data_type => "integer", is_nullable => 1 },
  "porc_pension_sobrev",
  { data_type => "integer", is_nullable => 1 },
  "monto_pension_sobrev",
  { data_type => "integer", is_nullable => 1 },
  "monto_pension_invalid",
  { data_type => "integer", is_nullable => 1 },
  "porc_pension_invalid",
  { data_type => "integer", is_nullable => 1 },
  "invalidez_sact",
  { data_type => "integer", is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "integer", is_nullable => 1 },
  "prima_jerarquia",
  { data_type => "integer", is_nullable => 1 },
  "prima_servicio",
  { data_type => "integer", is_nullable => 1 },
  "ajuste_sueldo",
  { data_type => "integer", is_nullable => 1 },
  "otros_pagos",
  { data_type => "integer", is_nullable => 1 },
  "otros_no_vicepladin",
  { data_type => "integer", is_nullable => 1 },
  "primas_cargo",
  { data_type => "integer", is_nullable => 1 },
  "primas_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 1 },
  "horas",
  { data_type => "integer", is_nullable => 1 },
  "cod_concurso",
  { data_type => "text", is_nullable => 1 },
  "fecha_punto",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "origen",
  { data_type => "text", is_nullable => 1 },
  "punto_cuenta",
  { data_type => "text", is_nullable => 1 },
  "usuario",
  { data_type => "text", is_nullable => 1 },
  "cod_grupo_organismo",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "cod_organismo",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "fecha_culminacion",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rZq6+kLwCUWS0hOc7QjG4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
