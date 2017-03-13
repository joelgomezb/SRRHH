use utf8;
package SIGEFIRRHH::Schema::Result::Elegibleactividaddocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Elegibleactividaddocente

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

=head1 TABLE: C<elegibleactividaddocente>

=cut

__PACKAGE__->table("elegibleactividaddocente");

=head1 ACCESSORS

=head2 id_elegible_actividad_docente

  data_type: 'integer'
  is_nullable: 0

=head2 nivel_educativo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 anio_inicio

  data_type: 'integer'
  is_nullable: 0

=head2 anio_fin

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_carrera

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_elegible

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 sector

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 relacion_laboral

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 nombre_entidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 asignatura

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_elegible_actividad_docente",
  { data_type => "integer", is_nullable => 0 },
  "nivel_educativo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "anio_inicio",
  { data_type => "integer", is_nullable => 0 },
  "anio_fin",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "estatus",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_carrera",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_elegible",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "sector",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "relacion_laboral",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "asignatura",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_actividad_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_actividad_docente");

=head1 RELATIONS

=head2 id_carrera

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Carrera>

=cut

__PACKAGE__->belongs_to(
  "id_carrera",
  "SIGEFIRRHH::Schema::Result::Carrera",
  { id_carrera => "id_carrera" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_elegible

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_elegible",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_elegible" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ed6BDReIEhpc3vaStXzqKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
