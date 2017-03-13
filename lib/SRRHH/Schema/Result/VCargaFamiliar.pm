use utf8;
package SRRHH::Schema::Result::VCargaFamiliar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VCargaFamiliar

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

=head1 TABLE: C<v_carga_familiar>

=cut

__PACKAGE__->table("v_carga_familiar");
__PACKAGE__->result_source_instance->view_definition(" SELECT tp.nombre AS tipopersonal,\n    t.estatus,\n    t.cedula AS cedula_trabajador,\n    p.primer_nombre AS primer_nombre_trabajador,\n    p.segundo_nombre AS segundo_nombre_trabajador,\n    p.primer_apellido AS primer_apellido_trabajador,\n    p.segundo_apellido AS segundo_apellido_trabajador,\n    f.cedula_familiar,\n    f.primer_nombre,\n    f.segundo_nombre,\n    f.primer_apellido,\n    f.segundo_apellido,\n    f.sexo,\n    f.fecha_nacimiento,\n        CASE\n            WHEN ((f.parentesco)::text = 'H'::text) THEN 'HIJO'::text\n            WHEN ((f.parentesco)::text = 'M'::text) THEN 'MADRE'::text\n            WHEN ((f.parentesco)::text = 'P'::text) THEN 'PADRE'::text\n            WHEN ((f.parentesco)::text = 'C'::text) THEN 'CONYUGE'::text\n            WHEN ((f.parentesco)::text = 'E'::text) THEN 'HERMANO'::text\n            WHEN ((f.parentesco)::text = 'O'::text) THEN 'OTRO'::text\n            WHEN ((f.parentesco)::text = 'T'::text) THEN 'TITULAR'::text\n            ELSE NULL::text\n        END AS parentescos\n   FROM (((personal p\n     JOIN trabajador t USING (id_personal))\n     JOIN familiar f USING (id_personal))\n     JOIN tipopersonal tp USING (id_tipo_personal))\n  ORDER BY t.cedula, f.parentesco");

=head1 ACCESSORS

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_apellido_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 parentescos

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_apellido_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "parentescos",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nvW4CPKs49pxZkt87h8kqw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
