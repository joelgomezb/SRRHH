use utf8;
package SRRHH::Schema::Result::VHistConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VHistConstancia

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

=head1 TABLE: C<v_hist_constancia>

=cut

__PACKAGE__->table("v_hist_constancia");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.cedula,\n    a.primer_nombre,\n    a.segundo_nombre,\n    a.primer_apellido,\n    a.segundo_apellido,\n    a.nacionalidad,\n    a.sexo,\n    a.codigo_nomina,\n    a.descripcion_cargo,\n    a.encargaduria,\n    a.situacion,\n    a.nombre,\n    a.id_trabajador,\n    a.fecha_ingreso,\n    a.observaciones,\n    a.concepto,\n    a.descripcion,\n    sum(a.monto) AS monto,\n    a.tipopersonal,\n    a.unidad_ejecutora,\n    a.frecon,\n    a.nombramiento,\n    a.firmante,\n    a.cargo,\n    a.pie_pagina_uno,\n    a.pie_pagina_dos,\n    a.pie_pagina_tres,\n    a.pie_pagina_cuatro,\n    a.iniciales,\n    a.oficina,\n    max(a.anio) AS anio,\n    max(a.mes) AS mes\n   FROM ( SELECT max(a_1.cedula) AS cedula,\n            max((a_1.primer_nombre)::text) AS primer_nombre,\n            max((a_1.segundo_nombre)::text) AS segundo_nombre,\n            max((a_1.primer_apellido)::text) AS primer_apellido,\n            max((a_1.segundo_apellido)::text) AS segundo_apellido,\n            max((a_1.nacionalidad)::text) AS nacionalidad,\n            max((a_1.sexo)::text) AS sexo,\n            max(tr.codigo_nomina) AS codigo_nomina,\n            max((c.descripcion_cargo)::text) AS descripcion_cargo,\n            max((cc.descripcion_cargo)::text) AS encargaduria,\n            tr.situacion,\n            max((d.nombre)::text) AS nombre,\n            max(tr.id_trabajador) AS id_trabajador,\n            max(tr.fecha_ingreso) AS fecha_ingreso,\n            max(con.observacion) AS observaciones,\n            co.cod_concepto AS concepto,\n            co.descripcion,\n            (sum(hq.monto_asigna) * (2)::double precision) AS monto,\n            tp.nombre AS tipopersonal,\n            ue.nombre AS unidad_ejecutora,\n            fp.cod_frecuencia_pago AS frecon,\n            max(con.nombramiento) AS nombramiento,\n            max((con.firmante)::text) AS firmante,\n            max((con.cargo)::text) AS cargo,\n            max((con.pie_pagina_uno)::text) AS pie_pagina_uno,\n            max((con.pie_pagina_dos)::text) AS pie_pagina_dos,\n            max((con.pie_pagina_tres)::text) AS pie_pagina_tres,\n            max((con.pie_pagina_cuatro)::text) AS pie_pagina_cuatro,\n            max((con.iniciales)::text) AS iniciales,\n            max((con.oficina)::text) AS oficina,\n            max(hn.anio) AS anio,\n            max(hn.mes) AS mes\n           FROM ((((((((((((((((personal a_1\n             JOIN trabajador tr ON ((a_1.id_personal = tr.id_personal)))\n             LEFT JOIN cargo cc ON ((tr.id_cargo_real = cc.id_cargo)))\n             JOIN historiconomina hn ON ((hn.id_trabajador = tr.id_trabajador)))\n             JOIN cargo c ON ((hn.id_cargo = c.id_cargo)))\n             JOIN dependencia d ON ((hn.id_dependencia = d.id_dependencia)))\n             JOIN historicoquincena hq ON ((hq.id_historico_nomina = hn.id_historico_nomina)))\n             JOIN conceptotipopersonal ctp ON ((ctp.id_concepto_tipo_personal = hq.id_concepto_tipo_personal)))\n             JOIN concepto co ON ((co.id_concepto = ctp.id_concepto)))\n             JOIN frecuenciatipopersonal ftp ON ((ftp.id_frecuencia_tipo_personal = hq.id_frecuencia_tipo_personal)))\n             JOIN frecuenciapago fp ON ((fp.id_frecuencia_pago = ftp.id_frecuencia_pago)))\n             JOIN conceptoconstancia cco ON ((cco.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal)))\n             JOIN constancia con ON ((con.id_constancia = cco.id_constancia)))\n             JOIN tipopersonal tp ON ((tp.id_tipo_personal = hn.id_tipo_personal)))\n             JOIN administradorauel auel ON ((d.id_administradora_uel = auel.id_administradora_uel)))\n             JOIN unidadejecutora ue ON ((auel.id_unidad_ejecutora = ue.id_unidad_ejecutora)))\n             JOIN unidadadministradora ua ON ((auel.id_unidad_administradora = ua.id_unidad_administradora)))\n          WHERE (((tr.estatus)::text = ANY (ARRAY['A'::text, 'S'::text])) AND (hn.semana_quincena = 2) AND ((hn.anio)::double precision = date_part('year'::text, now())) AND (tr.cedula = 12210879) AND ((con.tipo)::integer = 1))\n          GROUP BY tr.id_trabajador, tr.cedula, co.cod_concepto, co.descripcion, fp.cod_frecuencia_pago, tp.nombre, ue.nombre, hn.anio, hn.mes\n          ORDER BY co.cod_concepto) a\n  GROUP BY a.cedula, a.primer_nombre, a.segundo_nombre, a.primer_apellido, a.segundo_apellido, a.nacionalidad, a.sexo, a.codigo_nomina, a.descripcion_cargo, a.encargaduria, a.situacion, a.nombre, a.id_trabajador, a.fecha_ingreso, a.observaciones, a.concepto, a.descripcion, a.tipopersonal, a.unidad_ejecutora, a.frecon, a.nombramiento, a.firmante, a.cargo, a.pie_pagina_uno, a.pie_pagina_dos, a.pie_pagina_tres, a.pie_pagina_cuatro, a.iniciales, a.oficina\n  ORDER BY (a.concepto)::integer");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'text'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 descripcion_cargo

  data_type: 'text'
  is_nullable: 1

=head2 encargaduria

  data_type: 'text'
  is_nullable: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nombre

  data_type: 'text'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 frecon

  data_type: 'integer'
  is_nullable: 1

=head2 nombramiento

  data_type: 'text'
  is_nullable: 1

=head2 firmante

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_uno

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_dos

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_tres

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_cuatro

  data_type: 'text'
  is_nullable: 1

=head2 iniciales

  data_type: 'text'
  is_nullable: 1

=head2 oficina

  data_type: 'text'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nacionalidad",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "text", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "descripcion_cargo",
  { data_type => "text", is_nullable => 1 },
  "encargaduria",
  { data_type => "text", is_nullable => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre",
  { data_type => "text", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "concepto",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "frecon",
  { data_type => "integer", is_nullable => 1 },
  "nombramiento",
  { data_type => "text", is_nullable => 1 },
  "firmante",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_uno",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_dos",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_tres",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_cuatro",
  { data_type => "text", is_nullable => 1 },
  "iniciales",
  { data_type => "text", is_nullable => 1 },
  "oficina",
  { data_type => "text", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eM/MC8O+jjgSqWQX5nCKKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
