use utf8;
package SRRHH::Schema::Result::VSeguridad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VSeguridad

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

=head1 TABLE: C<v_seguridad>

=cut

__PACKAGE__->table("v_seguridad");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.cedula,\n    (((b.primer_nombre)::text || '  '::text) || (b.segundo_nombre)::text) AS nombres,\n    (((b.primer_apellido)::text || '  '::text) || (b.segundo_apellido)::text) AS apellidos,\n        CASE\n            WHEN (a.id_tipo_personal = 1) THEN 'EMPLEADO'::text\n            WHEN (a.id_tipo_personal = 5) THEN '0BRERO'::text\n            WHEN (a.id_tipo_personal = 10) THEN 'CONTRATADO'::text\n            WHEN (a.id_tipo_personal = 20) THEN 'J'::text\n            WHEN (a.id_tipo_personal = 25) THEN 'U'::text\n            ELSE NULL::text\n        END AS tipo_personal,\n    c.nombre AS dependecia\n   FROM trabajador a,\n    personal b,\n    dependencia c,\n    conceptofijo cf\n  WHERE ((a.id_personal = b.id_personal) AND ((a.estatus)::text = 'A'::text) AND (a.id_dependencia = c.id_dependencia) AND ((a.id_tipo_personal = 1) OR (a.id_tipo_personal = 5) OR (a.id_tipo_personal = 10)) AND (a.id_trabajador = cf.id_trabajador) AND ((cf.id_concepto_tipo_personal = 11) OR (cf.id_concepto_tipo_personal = 20) OR (cf.id_concepto_tipo_personal = 21) OR (cf.id_concepto_tipo_personal = 22) OR (cf.id_concepto_tipo_personal = 47) OR (cf.id_concepto_tipo_personal = 2175)))");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nombres

  data_type: 'text'
  is_nullable: 1

=head2 apellidos

  data_type: 'text'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1

=head2 dependecia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nombres",
  { data_type => "text", is_nullable => 1 },
  "apellidos",
  { data_type => "text", is_nullable => 1 },
  "tipo_personal",
  { data_type => "text", is_nullable => 1 },
  "dependecia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m5SrUkWLNzQNZzsnG4B/DA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
