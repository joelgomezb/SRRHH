use utf8;
package SRRHH::Schema::Result::VRecibosEspecial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VRecibosEspecial

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

=head1 TABLE: C<v_recibos_especial>

=cut

__PACKAGE__->table("v_recibos_especial");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.numero_nomina,\n    nes.descripcion AS nomina_especial,\n    nes.id_nomina_especial,\n    a.anio,\n    a.mes,\n    a.semana_quincena,\n    g.id_grupo_nomina,\n    g.cod_grupo_nomina AS codgno,\n    g.nombre AS gruponomina,\n    g.periodicidad,\n    d.id_tipo_personal,\n    d.nombre AS tipopersonal,\n    d.cod_tipo_personal AS codtno,\n    catpers.cod_categoria,\n    tr.fecha_ingreso AS ingresoorganismo,\n    tr.fecha_prestaciones,\n    tr.fecha_vacaciones,\n    tr.fecha_antiguedad,\n    tr.fecha_ingreso_apn,\n    b.codigo_nomina AS codrac,\n    b.estatus,\n    b.forma_pago AS formapago,\n    b.cuenta_nomina,\n    e.cedula AS codtra,\n    e.nacionalidad,\n    tr.cedula,\n    e.primer_nombre,\n    e.segundo_nombre,\n    e.primer_apellido,\n    e.segundo_apellido,\n    e.sexo,\n    e.fecha_nacimiento,\n    k.cod_cargo AS codigocargo,\n    k.descripcion_cargo AS cargo,\n    sk.id_serie_cargo,\n    sk.nombre AS seriecargo,\n    k.grado AS gradocargo,\n    uf.cod_unidad_funcional,\n    uf.nombre AS unidadfuncional,\n    uel.cod_unidad_ejecutora,\n    uel.nombre AS uel,\n    j.id_dependencia,\n    j.cod_dependencia AS codcen,\n    j.nombre AS nombreunidad,\n    re.id_region,\n    re.nombre AS region,\n    b.id_trabajador,\n    ctp.base_legal,\n    c.id_concepto,\n    c.cod_concepto AS codcon,\n    c.descripcion AS descon,\n    fp.cod_frecuencia_pago AS id_contador,\n    a.unidades,\n    a.monto_asigna AS asigna,\n    a.monto_deduce AS deduce,\n    a.monto_aporte,\n    a.documento_soporte AS documento,\n    fp.cod_frecuencia_pago AS frecon,\n    tr.sueldo_basico AS suebas,\n    se.fecha_inicio,\n    se.fecha_fin,\n    c.gravable,\n    c.tipo_prestamo,\n    cp.cod_presupuesto,\n    cp.descripcion AS descripcion_presupuesto,\n    ctp.id_concepto_tipo_personal,\n    tr.estatus AS estatus_trabajador,\n    tr.fecha_egreso,\n    date_part('quarter'::text, ((((a.anio || '-'::text) || a.mes) || '-01'::text))::date) AS trimestre\n   FROM ((((((((((((((((((((((historicoquincena a\n     JOIN historiconomina b ON (((a.id_grupo_nomina = b.id_grupo_nomina) AND (a.numero_nomina = b.numero_nomina) AND (a.anio = b.anio) AND (a.mes = b.mes) AND (a.semana_quincena = b.semana_quincena) AND (a.id_trabajador = b.id_trabajador))))\n     JOIN tipopersonal d ON (((b.id_tipo_personal = d.id_tipo_personal) AND (d.id_tipo_personal = a.id_tipo_personal))))\n     JOIN trabajador tr ON ((a.id_trabajador = tr.id_trabajador)))\n     JOIN personal e ON ((e.id_personal = tr.id_personal)))\n     JOIN gruponomina g ON ((g.id_grupo_nomina = a.id_grupo_nomina)))\n     JOIN dependencia j ON ((j.id_dependencia = b.id_dependencia)))\n     JOIN unidadfuncional uf ON ((j.id_unidad_funcional = uf.id_unidad_funcional)))\n     JOIN administradorauel auel ON ((j.id_administradora_uel = auel.id_administradora_uel)))\n     JOIN unidadejecutora uel ON ((auel.id_unidad_ejecutora = uel.id_unidad_ejecutora)))\n     JOIN region re ON ((re.id_region = j.id_region)))\n     JOIN cargo k ON ((k.id_cargo = b.id_cargo)))\n     JOIN seriecargo sk ON ((sk.id_serie_cargo = k.id_serie_cargo)))\n     JOIN conceptotipopersonal ctp ON ((a.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal)))\n     JOIN concepto c ON ((ctp.id_concepto = c.id_concepto)))\n     JOIN frecuenciatipopersonal ftp ON ((a.id_frecuencia_tipo_personal = ftp.id_frecuencia_tipo_personal)))\n     JOIN frecuenciapago fp ON ((ftp.id_frecuencia_pago = fp.id_frecuencia_pago)))\n     LEFT JOIN seguridadespecial se ON (((b.anio = se.anio) AND (b.mes = se.mes) AND (b.id_nomina_especial = se.id_nomina_especial) AND (b.semana_quincena = se.semana_quincena) AND (b.id_grupo_nomina = se.id_grupo_nomina))))\n     JOIN nominaespecial nes ON (((nes.numero_nomina = a.numero_nomina) AND (nes.mes = b.mes) AND (nes.anio = b.anio) AND (nes.id_grupo_nomina = d.id_grupo_nomina))))\n     LEFT JOIN conceptocuenta cc ON ((a.id_concepto_tipo_personal = cc.id_concepto_tipo_personal)))\n     LEFT JOIN cuentapresupuesto cp USING (id_cuenta_presupuesto))\n     LEFT JOIN clasificacionpersonal clper ON ((d.id_clasificacion_personal = clper.id_clasificacion_personal)))\n     LEFT JOIN categoriapersonal catpers ON ((clper.id_categoria_personal = catpers.id_categoria_personal)))\n  WHERE (((c.cod_concepto)::text <> '5000'::text) AND (a.numero_nomina <> 0))\n  ORDER BY a.numero_nomina, a.anio, a.mes, a.semana_quincena, g.cod_grupo_nomina, g.nombre, g.periodicidad, d.nombre, d.cod_tipo_personal, catpers.cod_categoria, tr.fecha_ingreso, b.codigo_nomina, b.estatus, b.forma_pago, b.cuenta_nomina, e.cedula, tr.cedula, e.primer_nombre, e.segundo_nombre, e.primer_apellido, e.segundo_apellido, e.sexo, e.fecha_nacimiento, k.cod_cargo, k.descripcion_cargo, k.grado, j.cod_dependencia, j.nombre, b.id_trabajador, ctp.base_legal, c.cod_concepto, c.descripcion, fp.cod_frecuencia_pago, a.unidades, a.monto_asigna, a.monto_deduce, a.monto_aporte, a.documento_soporte, tr.sueldo_basico, se.fecha_inicio, se.fecha_fin, nes.descripcion, c.gravable, nes.id_nomina_especial, c.id_concepto, c.tipo_prestamo, cp.cod_presupuesto, cp.descripcion, ctp.id_concepto_tipo_personal, e.nacionalidad, j.id_dependencia, d.id_tipo_personal, tr.fecha_prestaciones, tr.fecha_vacaciones, tr.fecha_antiguedad, tr.fecha_ingreso_apn");

=head1 ACCESSORS

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'varchar'
  is_nullable: 1
  size: 60

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

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 periodicidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 1

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

=head2 codtra

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

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

=head2 codigocargo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 seriecargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 gradocargo

  data_type: 'integer'
  is_nullable: 1

=head2 cod_unidad_funcional

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 unidadfuncional

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 id_dependencia

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

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

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

=head2 id_contador

  data_type: 'integer'
  is_nullable: 1

=head2 unidades

  data_type: 'double precision'
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

  data_type: 'varchar'
  is_nullable: 1
  size: 10

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

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 tipo_prestamo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 descripcion_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 estatus_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 trimestre

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  { data_type => "varchar", is_nullable => 1, size => 60 },
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
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_categoria",
  { data_type => "varchar", is_nullable => 1, size => 1 },
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
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "formapago",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "codtra",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
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
  "codigocargo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "seriecargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "cod_unidad_funcional",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "unidadfuncional",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 1 },
  "codcen",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "id_contador",
  { data_type => "integer", is_nullable => 1 },
  "unidades",
  { data_type => "double precision", is_nullable => 1 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
  "monto_aporte",
  { data_type => "double precision", is_nullable => 1 },
  "documento",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "frecon",
  { data_type => "integer", is_nullable => 1 },
  "suebas",
  { data_type => "double precision", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "gravable",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipo_prestamo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "descripcion_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "estatus_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "trimestre",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6rWgo3fro50vThgGh5s6dA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
