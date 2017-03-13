use utf8;
package SRRHH::Schema::Result::Elegibleeducacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Elegibleeducacion

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

=head1 TABLE: C<elegibleeducacion>

=cut

__PACKAGE__->table("elegibleeducacion");

=head1 ACCESSORS

=head2 id_elegible_educacion

  data_type: 'integer'
  is_nullable: 0

=head2 anio_fin

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio_inicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anios_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 becado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_carrera

  data_type: 'integer'
  is_nullable: 1

=head2 id_titulo

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 sector

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 meses_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_nivel_educativo

  data_type: 'integer'
  is_nullable: 1

=head2 id_ciudad

  data_type: 'integer'
  is_nullable: 1

=head2 organizacion_becaria

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 registro_titulo

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 reembolso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 nombre_entidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombre_postgrado

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 escala

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 calificacion

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 mencion

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=cut

__PACKAGE__->add_columns(
  "id_elegible_educacion",
  { data_type => "integer", is_nullable => 0 },
  "anio_fin",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_inicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anios_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "becado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_carrera",
  { data_type => "integer", is_nullable => 1 },
  "id_titulo",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "sector",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "meses_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_nivel_educativo",
  { data_type => "integer", is_nullable => 1 },
  "id_ciudad",
  { data_type => "integer", is_nullable => 1 },
  "organizacion_becaria",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "registro_titulo",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "reembolso",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_postgrado",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "escala",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "calificacion",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "mencion",
  { data_type => "varchar", is_nullable => 1, size => 25 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_educacion>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_educacion");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TYtCk0axW3gQlOtCTvq1JQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
