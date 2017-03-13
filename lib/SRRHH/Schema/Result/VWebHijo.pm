use utf8;
package SRRHH::Schema::Result::VWebHijo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VWebHijo

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

=head1 TABLE: C<v_web_hijos>

=cut

__PACKAGE__->table("v_web_hijos");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.id_familiar AS ipk_id_hijos,\n    c.cedula AS ifk_cedula_funcionarios,\n    a.cedula_familiar AS c_cedula_hijos,\n    a.primer_nombre AS c_nombre_hijos,\n    a.primer_apellido AS c_apell_hijos,\n    a.fecha_nacimiento AS c_fecha_nac_hijos,\n        CASE\n            WHEN ((b.estatus_beca)::text = 'A'::text) THEN 'S'::text\n            WHEN ((b.estatus_beca)::text = 'R'::text) THEN 'N'::text\n            WHEN ((b.estatus_beca)::text = 'S'::text) THEN 'N'::text\n            ELSE NULL::text\n        END AS c_estatu_becado_hijos,\n    b.estatus_beca AS c_estatu_solici_hijos,\n    'N'::text AS c_tipo_solici_hijos,\n    b.fecha AS c_fecha_solici_hijos\n   FROM familiar a,\n    becafamiliar b,\n    trabajador c\n  WHERE ((a.id_familiar = b.id_familiar) AND ((a.parentesco)::text = 'H'::text) AND (a.id_personal = c.id_personal))\nUNION\n SELECT a.id_familiar AS ipk_id_hijos,\n    c.cedula AS ifk_cedula_funcionarios,\n    a.cedula_familiar AS c_cedula_hijos,\n    a.primer_nombre AS c_nombre_hijos,\n    a.primer_apellido AS c_apell_hijos,\n    a.fecha_nacimiento AS c_fecha_nac_hijos,\n    'N'::text AS c_estatu_becado_hijos,\n    ' '::character varying AS c_estatu_solici_hijos,\n    'N'::text AS c_tipo_solici_hijos,\n    a.fecha_nacimiento AS c_fecha_solici_hijos\n   FROM familiar a,\n    trabajador c\n  WHERE (((a.parentesco)::text = 'H'::text) AND (a.id_personal = c.id_personal) AND (NOT (a.id_familiar IN ( SELECT becafamiliar.id_familiar\n           FROM becafamiliar))))");

=head1 ACCESSORS

=head2 ipk_id_hijos

  data_type: 'integer'
  is_nullable: 1

=head2 ifk_cedula_funcionarios

  data_type: 'integer'
  is_nullable: 1

=head2 c_cedula_hijos

  data_type: 'integer'
  is_nullable: 1

=head2 c_nombre_hijos

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 c_apell_hijos

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 c_fecha_nac_hijos

  data_type: 'date'
  is_nullable: 1

=head2 c_estatu_becado_hijos

  data_type: 'text'
  is_nullable: 1

=head2 c_estatu_solici_hijos

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 c_tipo_solici_hijos

  data_type: 'text'
  is_nullable: 1

=head2 c_fecha_solici_hijos

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ipk_id_hijos",
  { data_type => "integer", is_nullable => 1 },
  "ifk_cedula_funcionarios",
  { data_type => "integer", is_nullable => 1 },
  "c_cedula_hijos",
  { data_type => "integer", is_nullable => 1 },
  "c_nombre_hijos",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "c_apell_hijos",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "c_fecha_nac_hijos",
  { data_type => "date", is_nullable => 1 },
  "c_estatu_becado_hijos",
  { data_type => "text", is_nullable => 1 },
  "c_estatu_solici_hijos",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "c_tipo_solici_hijos",
  { data_type => "text", is_nullable => 1 },
  "c_fecha_solici_hijos",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N633UJpf29C0NgvGvYYOiQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
