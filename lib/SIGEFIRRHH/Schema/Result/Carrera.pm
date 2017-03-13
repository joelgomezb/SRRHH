use utf8;
package SIGEFIRRHH::Schema::Result::Carrera;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Carrera

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

=head1 TABLE: C<carrera>

=cut

__PACKAGE__->table("carrera");

=head1 ACCESSORS

=head2 id_carrera

  data_type: 'integer'
  is_nullable: 0

=head2 cod_carrera

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_carrera",
  { data_type => "integer", is_nullable => 0 },
  "cod_carrera",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_carrera>

=back

=cut

__PACKAGE__->set_primary_key("id_carrera");

=head1 UNIQUE CONSTRAINTS

=head2 C<carrera_cod>

=over 4

=item * L</cod_carrera>

=back

=cut

__PACKAGE__->add_unique_constraint("carrera_cod", ["cod_carrera"]);

=head1 RELATIONS

=head2 actividaddocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Actividaddocente>

=cut

__PACKAGE__->has_many(
  "actividaddocentes",
  "SIGEFIRRHH::Schema::Result::Actividaddocente",
  { "foreign.id_carrera" => "self.id_carrera" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 carreraareas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Carreraarea>

=cut

__PACKAGE__->has_many(
  "carreraareas",
  "SIGEFIRRHH::Schema::Result::Carreraarea",
  { "foreign.id_carrera" => "self.id_carrera" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 educacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Educacion>

=cut

__PACKAGE__->has_many(
  "educacions",
  "SIGEFIRRHH::Schema::Result::Educacion",
  { "foreign.id_carrera" => "self.id_carrera" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 elegibleactividaddocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Elegibleactividaddocente>

=cut

__PACKAGE__->has_many(
  "elegibleactividaddocentes",
  "SIGEFIRRHH::Schema::Result::Elegibleactividaddocente",
  { "foreign.id_carrera" => "self.id_carrera" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DXJ2fKltQM6idEEqkFDFaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
