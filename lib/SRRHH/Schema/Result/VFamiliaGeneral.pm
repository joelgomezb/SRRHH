use utf8;
package SRRHH::Schema::Result::VFamiliaGeneral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VFamiliaGeneral

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

=head1 TABLE: C<v_familia_general>

=cut

__PACKAGE__->table("v_familia_general");
__PACKAGE__->result_source_instance->view_definition(" SELECT a.id_familiar AS indicador_unico,\n    a.sexo,\n    a.primer_nombre AS nombre,\n    a.primer_apellido AS apellido,\n    a.cedula_familiar,\n        CASE\n            WHEN ((a.parentesco)::text = 'H'::text) THEN 'HIJO'::text\n            WHEN ((a.parentesco)::text = 'M'::text) THEN 'MADRE'::text\n            WHEN ((a.parentesco)::text = 'P'::text) THEN 'PADRE'::text\n            WHEN ((a.parentesco)::text = 'C'::text) THEN 'CONYUGE'::text\n            WHEN ((a.parentesco)::text = 'E'::text) THEN 'HERMANO'::text\n            WHEN ((a.parentesco)::text = 'O'::text) THEN 'OTRO'::text\n            ELSE NULL::text\n        END AS parentesco,\n    a.fecha_nacimiento,\n    date_part('year'::text, age((a.fecha_nacimiento)::timestamp with time zone)) AS edad\n   FROM familiar a");

=head1 ACCESSORS

=head2 indicador_unico

  data_type: 'integer'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 parentesco

  data_type: 'text'
  is_nullable: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 edad

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "indicador_unico",
  { data_type => "integer", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "parentesco",
  { data_type => "text", is_nullable => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "edad",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QsyMaDFtqyglfRFX5wXGpg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
