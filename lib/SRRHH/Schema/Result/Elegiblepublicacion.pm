use utf8;
package SRRHH::Schema::Result::Elegiblepublicacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Elegiblepublicacion

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

=head1 TABLE: C<elegiblepublicacion>

=cut

__PACKAGE__->table("elegiblepublicacion");

=head1 ACCESSORS

=head2 id_elegible_publicacion

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio_publicacion

  data_type: 'integer'
  is_nullable: 0

=head2 editorial

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 propiedad_intelectual

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 titulo

  data_type: 'text'
  is_nullable: 1

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

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
  "id_elegible_publicacion",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_publicacion",
  { data_type => "integer", is_nullable => 0 },
  "editorial",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "propiedad_intelectual",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "titulo",
  { data_type => "text", is_nullable => 1 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_publicacion>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_publicacion");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nogn8Xa2s54iYJYVUPFhjw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
