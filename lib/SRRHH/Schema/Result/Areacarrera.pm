use utf8;
package SRRHH::Schema::Result::Areacarrera;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Areacarrera

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

=head1 TABLE: C<areacarrera>

=cut

__PACKAGE__->table("areacarrera");

=head1 ACCESSORS

=head2 id_area_carrera

  data_type: 'integer'
  is_nullable: 0

=head2 cod_area_carrera

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_area_carrera",
  { data_type => "integer", is_nullable => 0 },
  "cod_area_carrera",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_area_carrera>

=back

=cut

__PACKAGE__->set_primary_key("id_area_carrera");

=head1 UNIQUE CONSTRAINTS

=head2 C<areacarrera_cod>

=over 4

=item * L</cod_area_carrera>

=back

=cut

__PACKAGE__->add_unique_constraint("areacarrera_cod", ["cod_area_carrera"]);

=head1 RELATIONS

=head2 carreraareas

Type: has_many

Related object: L<SRRHH::Schema::Result::Carreraarea>

=cut

__PACKAGE__->has_many(
  "carreraareas",
  "SRRHH::Schema::Result::Carreraarea",
  { "foreign.id_area_carrera" => "self.id_area_carrera" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P0s9AVc9QmJXAZ9QMu99RQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
