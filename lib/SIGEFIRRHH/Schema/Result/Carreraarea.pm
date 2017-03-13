use utf8;
package SIGEFIRRHH::Schema::Result::Carreraarea;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Carreraarea

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

=head1 TABLE: C<carreraarea>

=cut

__PACKAGE__->table("carreraarea");

=head1 ACCESSORS

=head2 id_carrera_area

  data_type: 'integer'
  is_nullable: 0

=head2 id_carrera

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_area_carrera

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_carrera_area",
  { data_type => "integer", is_nullable => 0 },
  "id_carrera",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_area_carrera",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_carrera_area>

=back

=cut

__PACKAGE__->set_primary_key("id_carrera_area");

=head1 UNIQUE CONSTRAINTS

=head2 C<carreraarea_cod>

=over 4

=item * L</id_area_carrera>

=item * L</id_carrera>

=back

=cut

__PACKAGE__->add_unique_constraint("carreraarea_cod", ["id_area_carrera", "id_carrera"]);

=head1 RELATIONS

=head2 id_area_carrera

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Areacarrera>

=cut

__PACKAGE__->belongs_to(
  "id_area_carrera",
  "SIGEFIRRHH::Schema::Result::Areacarrera",
  { id_area_carrera => "id_area_carrera" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_carrera

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Carrera>

=cut

__PACKAGE__->belongs_to(
  "id_carrera",
  "SIGEFIRRHH::Schema::Result::Carrera",
  { id_carrera => "id_carrera" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8N7gGHFIkmEJhMm7biND3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
