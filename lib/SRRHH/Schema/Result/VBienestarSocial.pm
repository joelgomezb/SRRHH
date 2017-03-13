use utf8;
package SRRHH::Schema::Result::VBienestarSocial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VBienestarSocial

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

=head1 TABLE: C<v_bienestar_social>

=cut

__PACKAGE__->table("v_bienestar_social");
__PACKAGE__->result_source_instance->view_definition(" SELECT electricidad.cedula,\n    electricidad.cedula_familiar,\n    electricidad.asegurado,\n    electricidad.sexo,\n    electricidad.fecha_nacimiento,\n    electricidad.edad,\n    electricidad.mes_edad,\n    electricidad.parentesco,\n    electricidad.nivel_educativo,\n    electricidad.grado,\n    electricidad.carga,\n    electricidad.dependencia,\n    electricidad.cargo,\n    electricidad.tipopersonal\n   FROM ( SELECT asegurados_hcm.cedula,\n            asegurados_hcm.cedula_familiar,\n            asegurados_hcm.trabajador AS asegurado,\n            asegurados_hcm.sexo,\n            asegurados_hcm.fecha_nacimiento,\n            asegurados_hcm.edad,\n            asegurados_hcm.mes_edad,\n            asegurados_hcm.parentesco,\n            asegurados_hcm.nivel_educativo,\n            asegurados_hcm.grado,\n            'NOMINA_MPPEE'::character varying AS carga,\n            asegurados_hcm.dependencia,\n            asegurados_hcm.cargo,\n            asegurados_hcm.tipopersonal\n           FROM ( SELECT hcm.cedula,\n                    hcm.cedula_familiar,\n                    hcm.trabajador,\n                    hcm.sexo,\n                    hcm.fecha_nacimiento,\n                    hcm.edad,\n                    hcm.mes_edad,\n                    hcm.parentesco,\n                    hcm.nivel_educativo,\n                    hcm.grado,\n                    hcm.dependencia,\n                    hcm.cargo,\n                    hcm.tipopersonal\n                   FROM ( SELECT p.cedula,\n                            p.cedula AS cedula_familiar,\n                            (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_nombre)::text) || ' '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n                            p.sexo,\n                            p.fecha_nacimiento,\n                            date_part('year'::text, age(now(), (p.fecha_nacimiento)::timestamp with time zone)) AS edad,\n                            date_part('month'::text, age(now(), (p.fecha_nacimiento)::timestamp with time zone)) AS mes_edad,\n                            'T'::character varying AS parentesco,\n                            'N'::character varying AS nivel_educativo,\n                            '0'::character varying AS grado,\n                            d.nombre AS dependencia,\n                            c.descripcion_cargo AS cargo,\n                            tp.nombre AS tipopersonal\n                           FROM personal p,\n                            trabajador t,\n                            cargo c,\n                            dependencia d,\n                            tipopersonal tp\n                          WHERE ((t.cedula = p.cedula) AND (t.id_dependencia = d.id_dependencia) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_cargo = c.id_cargo) AND ((t.estatus)::text = 'A'::text))\n                        UNION ALL\n                         SELECT t.cedula,\n                            f.cedula_familiar,\n                            (((((((f.primer_nombre)::text || ' '::text) || (f.segundo_nombre)::text) || ' '::text) || (f.primer_apellido)::text) || ' '::text) || (f.segundo_apellido)::text) AS familiar,\n                            f.sexo,\n                            f.fecha_nacimiento,\n                            date_part('year'::text, age(now(), (f.fecha_nacimiento)::timestamp with time zone)) AS edad,\n                            date_part('month'::text, age(now(), (f.fecha_nacimiento)::timestamp with time zone)) AS mes_edad,\n                            f.parentesco,\n                            f.nivel_educativo,\n                            f.grado,\n                            d.nombre AS dependencia,\n                            c.descripcion_cargo AS cargo,\n                            tp.nombre AS tipopersonal\n                           FROM personal p,\n                            trabajador t,\n                            familiar f,\n                            cargo c,\n                            dependencia d,\n                            tipopersonal tp\n                          WHERE ((t.id_personal = f.id_personal) AND (t.id_dependencia = d.id_dependencia) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_cargo = c.id_cargo) AND (t.cedula = p.cedula) AND ((t.estatus)::text = 'A'::text))) hcm\n                  ORDER BY hcm.cedula, hcm.parentesco DESC) asegurados_hcm\n        UNION ALL\n         SELECT asegurados_hcm.cedula,\n            asegurados_hcm.cedula_familiar,\n            asegurados_hcm.trabajador AS asegurado,\n            asegurados_hcm.sexo,\n            asegurados_hcm.fecha_nacimiento,\n            asegurados_hcm.edad,\n            asegurados_hcm.mes_edad,\n            asegurados_hcm.parentesco,\n            'FUNDELEC'::character varying AS carga,\n            asegurados_hcm.nivel_educativo,\n            asegurados_hcm.grado,\n            asegurados_hcm.dependencia,\n            asegurados_hcm.cargo,\n            asegurados_hcm.tipopersonal\n           FROM ( SELECT hcm.cedula,\n                    hcm.cedula_familiar,\n                    hcm.trabajador,\n                    hcm.sexo,\n                    hcm.fecha_nacimiento,\n                    hcm.edad,\n                    hcm.mes_edad,\n                    hcm.parentesco,\n                    hcm.nivel_educativo,\n                    hcm.grado,\n                    hcm.dependencia,\n                    hcm.cargo,\n                    hcm.tipopersonal\n                   FROM ( SELECT p.cedula,\n                            p.cedula AS cedula_familiar,\n                            (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_nombre)::text) || ' '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n                            p.sexo,\n                            p.fecha_nacimiento,\n                            date_part('year'::text, age(now(), (p.fecha_nacimiento)::timestamp with time zone)) AS edad,\n                            date_part('month'::text, age(now(), (p.fecha_nacimiento)::timestamp with time zone)) AS mes_edad,\n                            'T'::character varying AS parentesco,\n                            'N'::character varying AS nivel_educativo,\n                            '0'::character varying AS grado,\n                            ''::text AS dependencia,\n                            ''::text AS cargo,\n                            ''::text AS tipopersonal\n                           FROM personal p\n                          WHERE (NOT (p.cedula IN ( SELECT trabajador.cedula\n                                   FROM trabajador)))\n                        UNION ALL\n                         SELECT p.cedula,\n                            f.cedula_familiar,\n                            (((((((f.primer_nombre)::text || ' '::text) || (f.segundo_nombre)::text) || ' '::text) || (f.primer_apellido)::text) || ' '::text) || (f.segundo_apellido)::text) AS familiar,\n                            f.sexo,\n                            f.fecha_nacimiento,\n                            date_part('year'::text, age(now(), (f.fecha_nacimiento)::timestamp with time zone)) AS edad,\n                            date_part('month'::text, age(now(), (f.fecha_nacimiento)::timestamp with time zone)) AS mes_edad,\n                            f.parentesco,\n                            f.nivel_educativo,\n                            f.grado,\n                            ''::text AS dependencia,\n                            ''::text AS cargo,\n                            ''::text AS tipopersonal\n                           FROM personal p,\n                            familiar f\n                          WHERE ((p.id_personal = f.id_personal) AND (NOT (p.cedula IN ( SELECT trabajador.cedula\n                                   FROM trabajador))))) hcm\n                  ORDER BY hcm.cedula, hcm.parentesco DESC) asegurados_hcm) electricidad");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 asegurado

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 edad

  data_type: 'double precision'
  is_nullable: 1

=head2 mes_edad

  data_type: 'double precision'
  is_nullable: 1

=head2 parentesco

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 nivel_educativo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 grado

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 carga

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 dependencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 tipopersonal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "asegurado",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "edad",
  { data_type => "double precision", is_nullable => 1 },
  "mes_edad",
  { data_type => "double precision", is_nullable => 1 },
  "parentesco",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "nivel_educativo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "grado",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "carga",
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
  "cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "tipopersonal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dqP84WRbLvOmwxa9wG7wXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
