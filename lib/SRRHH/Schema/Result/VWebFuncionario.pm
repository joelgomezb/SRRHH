use utf8;
package SRRHH::Schema::Result::VWebFuncionario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VWebFuncionario

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

=head1 TABLE: C<v_web_funcionarios>

=cut

__PACKAGE__->table("v_web_funcionarios");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.cedula,\n    (((b.primer_nombre)::text || '  '::text) || (b.segundo_nombre)::text) AS nombres,\n    (((b.primer_apellido)::text || '  '::text) || (b.segundo_apellido)::text) AS apellidos,\n    b.telefono_oficina AS telefono,\n    a.fecha_ingreso,\n    a.codigo_nomina,\n        CASE\n            WHEN (a.id_tipo_personal = 12) THEN 'E'::text\n            WHEN (a.id_tipo_personal = 28) THEN 'C'::text\n            WHEN (a.id_tipo_personal = 22) THEN 'CS'::text\n            ELSE NULL::text\n        END AS tipo_personal,\n    substr((e.descripcion_cargo)::text, 1, 30) AS cargo_funcionarios,\n    c.nombre AS dependecia,\n    d.nombre AS direccion,\n    d.nombre AS division,\n    d.nombre AS departamento\n   FROM trabajador a,\n    personal b,\n    dependencia c,\n    lugarpago d,\n    cargo e\n  WHERE ((a.id_personal = b.id_personal) AND ((a.estatus)::text = 'A'::text) AND (a.id_dependencia = c.id_dependencia) AND (a.id_lugar_pago = d.id_lugar_pago) AND ((a.id_tipo_personal = 12) OR (a.id_tipo_personal = 28) OR (a.id_tipo_personal = 10) OR (a.id_tipo_personal = 22)) AND (a.id_cargo = e.id_cargo))");

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

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1

=head2 cargo_funcionarios

  data_type: 'text'
  is_nullable: 1

=head2 dependecia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 division

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 departamento

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
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "text", is_nullable => 1 },
  "cargo_funcionarios",
  { data_type => "text", is_nullable => 1 },
  "dependecia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "division",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "departamento",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GWv2vFApLNWGNkFhJ/pqIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
