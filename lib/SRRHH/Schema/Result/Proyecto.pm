use utf8;
package SRRHH::Schema::Result::Proyecto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Proyecto

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

=head1 TABLE: C<proyecto>

=cut

__PACKAGE__->table("proyecto");

=head1 ACCESSORS

=head2 id_proyecto

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 cod_proyecto

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 enunciado

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=head2 descripcion

  data_type: 'text'
  is_nullable: 1

=head2 objetivo_estrategico

  data_type: 'text'
  is_nullable: 1

=head2 objetivos_especificos

  data_type: 'text'
  is_nullable: 1

=head2 resultado

  data_type: 'text'
  is_nullable: 1

=head2 meta

  accessor: 'column_meta'
  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_suspension

  data_type: 'date'
  is_nullable: 1

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_municipio

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_proyecto",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "cod_proyecto",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "enunciado",
  { data_type => "varchar", is_nullable => 1, size => 500 },
  "descripcion",
  { data_type => "text", is_nullable => 1 },
  "objetivo_estrategico",
  { data_type => "text", is_nullable => 1 },
  "objetivos_especificos",
  { data_type => "text", is_nullable => 1 },
  "resultado",
  { data_type => "text", is_nullable => 1 },
  "meta",
  {
    accessor      => "column_meta",
    data_type     => "double precision",
    default_value => 0,
    is_nullable   => 0,
  },
  "estatus",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_suspension",
  { data_type => "date", is_nullable => 1 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_municipio",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_proyecto>

=back

=cut

__PACKAGE__->set_primary_key("id_proyecto");

=head1 UNIQUE CONSTRAINTS

=head2 C<proyecto_cod>

=over 4

=item * L</anio>

=item * L</cod_proyecto>

=back

=cut

__PACKAGE__->add_unique_constraint("proyecto_cod", ["anio", "cod_proyecto"]);

=head1 RELATIONS

=head2 id_ciudad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_municipio

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Municipio>

=cut

__PACKAGE__->belongs_to(
  "id_municipio",
  "SRRHH::Schema::Result::Municipio",
  { id_municipio => "id_municipio" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:njgn7RU7uD49lcGoBIZKmg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
