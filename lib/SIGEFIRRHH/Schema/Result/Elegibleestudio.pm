use utf8;
package SIGEFIRRHH::Schema::Result::Elegibleestudio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Elegibleestudio

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

=head1 TABLE: C<elegibleestudio>

=cut

__PACKAGE__->table("elegibleestudio");

=head1 ACCESSORS

=head2 id_elegible_estudio

  data_type: 'integer'
  is_nullable: 0

=head2 anios_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 certifico

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 duracion

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 meses_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 origen_curso

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 participacion

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 unidad_tiempo

  data_type: 'varchar'
  default_value: 'H'
  is_nullable: 0
  size: 1

=head2 becado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 financiamiento

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_pais

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_tipo_curso

  data_type: 'integer'
  is_nullable: 0

=head2 id_area_conocimiento

  data_type: 'integer'
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 nombre_curso

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombre_entidad

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 anio

  data_type: 'integer'
  default_value: 0
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
  "id_elegible_estudio",
  { data_type => "integer", is_nullable => 0 },
  "anios_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "certifico",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "duracion",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "meses_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "origen_curso",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "participacion",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "unidad_tiempo",
  { data_type => "varchar", default_value => "H", is_nullable => 0, size => 1 },
  "becado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "financiamiento",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_pais",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_tipo_curso",
  { data_type => "integer", is_nullable => 0 },
  "id_area_conocimiento",
  { data_type => "integer", is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "nombre_curso",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_estudio>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_estudio");

=head1 RELATIONS

=head2 id_pai

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Pai>

=cut

__PACKAGE__->belongs_to(
  "id_pai",
  "SIGEFIRRHH::Schema::Result::Pai",
  { id_pais => "id_pais" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0Yw1oC7ggxSWgmFDoEnNQA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
