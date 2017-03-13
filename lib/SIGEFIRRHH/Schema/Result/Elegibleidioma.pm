use utf8;
package SIGEFIRRHH::Schema::Result::Elegibleidioma;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Elegibleidioma

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

=head1 TABLE: C<elegibleidioma>

=cut

__PACKAGE__->table("elegibleidioma");

=head1 ACCESSORS

=head2 id_elegible_idioma

  data_type: 'integer'
  is_nullable: 0

=head2 escribe

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 habla

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 lee

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_idioma

  data_type: 'integer'
  is_nullable: 0

=head2 examen_suficiencia

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 entidad_suficiencia

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 fecha_suficiencia

  data_type: 'date'
  is_nullable: 1

=head2 examen_academico

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 entidad_academica

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 fecha_academica

  data_type: 'date'
  is_nullable: 1

=head2 nombre_entidad

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_elegible_idioma",
  { data_type => "integer", is_nullable => 0 },
  "escribe",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "habla",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "lee",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_idioma",
  { data_type => "integer", is_nullable => 0 },
  "examen_suficiencia",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "entidad_suficiencia",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "fecha_suficiencia",
  { data_type => "date", is_nullable => 1 },
  "examen_academico",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "entidad_academica",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "fecha_academica",
  { data_type => "date", is_nullable => 1 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_idioma>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_idioma");

=head1 UNIQUE CONSTRAINTS

=head2 C<elegibleidioma_cod>

=over 4

=item * L</id_elegible>

=item * L</id_tipo_idioma>

=back

=cut

__PACKAGE__->add_unique_constraint("elegibleidioma_cod", ["id_elegible", "id_tipo_idioma"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6b+yMtfU9fNiHZpi1gHdwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
