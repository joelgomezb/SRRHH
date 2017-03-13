use utf8;
package SRRHH::Schema::Result::VEducacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VEducacion

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

=head1 TABLE: C<v_educacion>

=cut

__PACKAGE__->table("v_educacion");
__PACKAGE__->result_source_instance->view_definition(" SELECT total.id_tipo_personal,\n    total.nombre,\n    total.cedula,\n    total.trabajador,\n    total.nivel_educativo,\n    total.titulo\n   FROM ( SELECT t.id_tipo_personal,\n            ue.nombre,\n            p.cedula,\n            (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_apellido)::text) || ', '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n            ne.descripcion AS nivel_educativo,\n            ti.descripcion AS titulo\n           FROM (((((((personal p\n             JOIN educacion e ON ((p.id_personal = e.id_personal)))\n             JOIN trabajador t ON ((t.id_personal = p.id_personal)))\n             JOIN niveleducativo ne ON ((e.id_nivel_educativo = ne.id_nivel_educativo)))\n             JOIN titulo ti ON ((ti.id_titulo = e.id_titulo)))\n             JOIN dependencia d ON ((d.id_dependencia = t.id_dependencia)))\n             JOIN administradorauel auel ON ((auel.id_administradora_uel = d.id_administradora_uel)))\n             JOIN unidadejecutora ue ON (((ue.id_unidad_ejecutora = auel.id_unidad_ejecutora) AND ((t.estatus)::text = 'A'::text))))\n        UNION ALL\n         SELECT t.id_tipo_personal,\n            ue.nombre,\n            p.cedula,\n            (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_apellido)::text) || ', '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n            ''::character varying AS \"varchar\",\n            ''::character varying AS \"varchar\"\n           FROM ((((trabajador t\n             JOIN personal p ON ((p.id_personal = t.id_personal)))\n             JOIN dependencia d ON ((d.id_dependencia = t.id_dependencia)))\n             JOIN administradorauel auel ON ((auel.id_administradora_uel = d.id_administradora_uel)))\n             JOIN unidadejecutora ue ON ((ue.id_unidad_ejecutora = auel.id_unidad_ejecutora)))\n          WHERE ((NOT (p.cedula IN ( SELECT p_1.cedula\n                   FROM (((((((personal p_1\n                     JOIN educacion e ON ((p_1.id_personal = e.id_personal)))\n                     JOIN trabajador t_1 ON ((t_1.id_personal = p_1.id_personal)))\n                     JOIN niveleducativo ne ON ((e.id_nivel_educativo = ne.id_nivel_educativo)))\n                     JOIN titulo ti ON ((ti.id_titulo = e.id_titulo)))\n                     JOIN dependencia d_1 ON ((d_1.id_dependencia = t_1.id_dependencia)))\n                     JOIN administradorauel auel_1 ON ((auel_1.id_administradora_uel = d_1.id_administradora_uel)))\n                     JOIN unidadejecutora ue_1 ON ((ue_1.id_unidad_ejecutora = auel_1.id_unidad_ejecutora)))\n                  WHERE ((t_1.id_tipo_personal = 28) AND ((t_1.estatus)::text = 'A'::text))))) AND ((t.estatus)::text = 'A'::text) AND (t.id_tipo_personal = 28))) total\n  ORDER BY total.nombre, total.cedula");

=head1 ACCESSORS

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 nivel_educativo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 titulo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "nivel_educativo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "titulo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fWIB5QFI/W0qhmZ3RXGxaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
