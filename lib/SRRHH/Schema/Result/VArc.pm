use utf8;
package SRRHH::Schema::Result::VArc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VArc

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

=head1 TABLE: C<v_arc>

=cut

__PACKAGE__->table("v_arc");
__PACKAGE__->result_source_instance->view_definition(" SELECT retenciones.cedula,\n    p.numero_rif,\n    (p.primer_nombre)::text AS primer_nombre,\n    (p.segundo_nombre)::text AS segundo_nombre,\n    (p.primer_apellido)::text AS primer_apellido,\n    (p.segundo_apellido)::text AS segundo_apellido,\n    ((btrim(array_to_string(ARRAY[p.primer_apellido, p.segundo_apellido], ' '::text)) || ', '::text) || btrim(array_to_string(ARRAY[p.primer_nombre, p.segundo_nombre], ' '::text))) AS nombre_completo,\n    retenciones.anio,\n    retenciones.nro_mes,\n    retenciones.nombre_mes,\n    (retenciones.devengado)::numeric AS devengado,\n    (retenciones.retencion)::numeric AS retencion,\n    COALESCE(retenciones.porcentaje_retencion, (0)::numeric) AS porcentaje_retencion\n   FROM (( SELECT tr.cedula,\n            pa.anio,\n            '01'::text AS nro_mes,\n            'ENERO'::text AS nombre_mes,\n            sum(pa.devengado_enero) AS devengado,\n            sum(pa.retencion_enero) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_enero) > (0)::double precision) THEN round((((sum(pa.retencion_enero) * (100)::double precision) / sum(pa.devengado_enero)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '02'::text AS nro_mes,\n            'FEBRERO'::text AS nombre_mes,\n            sum(pa.devengado_febrero) AS devengado,\n            sum(pa.retencion_febrero) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_febrero) > (0)::double precision) THEN round((((sum(pa.retencion_febrero) * (100)::double precision) / sum(pa.devengado_febrero)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '03'::text AS nro_mes,\n            'MARZO'::text AS nombre_mes,\n            sum(pa.devengado_marzo) AS devengado,\n            sum(pa.retencion_marzo) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_marzo) > (0)::double precision) THEN round((((sum(pa.retencion_marzo) * (100)::double precision) / sum(pa.devengado_marzo)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '04'::text AS nro_mes,\n            'ABRIL'::text AS nombre_mes,\n            sum(pa.devengado_abril) AS devengado,\n            sum(pa.retencion_abril) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_abril) > (0)::double precision) THEN round((((sum(pa.retencion_abril) * (100)::double precision) / sum(pa.devengado_abril)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '05'::text AS nro_mes,\n            'MAYO'::text AS nombre_mes,\n            sum(pa.devengado_mayo) AS devengado,\n            sum(pa.retencion_mayo) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_mayo) > (0)::double precision) THEN round((((sum(pa.retencion_mayo) * (100)::double precision) / sum(pa.devengado_mayo)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '06'::text AS nro_mes,\n            'JUNIO'::text AS nombre_mes,\n            sum(pa.devengado_junio) AS devengado,\n            sum(pa.retencion_junio) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_junio) > (0)::double precision) THEN round((((sum(pa.retencion_junio) * (100)::double precision) / sum(pa.devengado_junio)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '07'::text AS nro_mes,\n            'JULIO'::text AS nombre_mes,\n            sum(pa.devengado_julio) AS devengado,\n            sum(pa.retencion_julio) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_julio) > (0)::double precision) THEN round((((sum(pa.retencion_julio) * (100)::double precision) / sum(pa.devengado_julio)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '08'::text AS nro_mes,\n            'AGOSTO'::text AS nombre_mes,\n            sum(pa.devengado_agosto) AS devengado,\n            sum(pa.retencion_agosto) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_agosto) > (0)::double precision) THEN round((((sum(pa.retencion_agosto) * (100)::double precision) / sum(pa.devengado_agosto)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '09'::text AS nro_mes,\n            'SEPTIEMBRE'::text AS nombre_mes,\n            sum(pa.devengado_septiembre) AS devengado,\n            sum(pa.retencion_septiembre) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_septiembre) > (0)::double precision) THEN round((((sum(pa.retencion_septiembre) * (100)::double precision) / sum(pa.devengado_septiembre)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '10'::text AS nro_mes,\n            'OCTUBRE'::text AS nombre_mes,\n            sum(pa.devengado_octubre) AS devengado,\n            sum(pa.retencion_octubre) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_octubre) > (0)::double precision) THEN round((((sum(pa.retencion_octubre) * (100)::double precision) / sum(pa.devengado_octubre)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '11'::text AS nro_mes,\n            'NOVIEMBRE'::text AS nombre_mes,\n            sum(pa.devengado_noviembre) AS devengado,\n            sum(pa.retencion_noviembre) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_noviembre) > (0)::double precision) THEN round((((sum(pa.retencion_noviembre) * (100)::double precision) / sum(pa.devengado_noviembre)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio\n        UNION\n         SELECT tr.cedula,\n            pa.anio,\n            '12'::text AS nro_mes,\n            'DICIEMBRE'::text AS nombre_mes,\n            sum(pa.devengado_diciembre) AS devengado,\n            sum(pa.retencion_diciembre) AS retencion,\n                CASE\n                    WHEN (sum(pa.devengado_diciembre) > (0)::double precision) THEN round((((sum(pa.retencion_diciembre) * (100)::double precision) / sum(pa.devengado_diciembre)))::numeric, 2)\n                    ELSE NULL::numeric\n                END AS porcentaje_retencion\n           FROM (planillaarc pa\n             JOIN trabajador tr USING (id_trabajador))\n          GROUP BY tr.cedula, pa.anio) retenciones\n     JOIN personal p USING (cedula))\n  ORDER BY retenciones.anio, retenciones.nro_mes, retenciones.cedula");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 numero_rif

  data_type: 'varchar'
  is_nullable: 1
  size: 15

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

=head2 nombre_completo

  data_type: 'text'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 nro_mes

  data_type: 'text'
  is_nullable: 1

=head2 nombre_mes

  data_type: 'text'
  is_nullable: 1

=head2 devengado

  data_type: 'numeric'
  is_nullable: 1

=head2 retencion

  data_type: 'numeric'
  is_nullable: 1

=head2 porcentaje_retencion

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "numero_rif",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nombre_completo",
  { data_type => "text", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "nro_mes",
  { data_type => "text", is_nullable => 1 },
  "nombre_mes",
  { data_type => "text", is_nullable => 1 },
  "devengado",
  { data_type => "numeric", is_nullable => 1 },
  "retencion",
  { data_type => "numeric", is_nullable => 1 },
  "porcentaje_retencion",
  { data_type => "numeric", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QE08QUFIBzjFNbSievnrpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
