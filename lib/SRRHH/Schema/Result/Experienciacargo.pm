use utf8;
package SRRHH::Schema::Result::Experienciacargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Experienciacargo

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

=head1 TABLE: C<experienciacargo>

=cut

__PACKAGE__->table("experienciacargo");

=head1 ACCESSORS

=head2 id_experiencia_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cargo_requerido

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anios_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 meses_experiencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 peso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_experiencia_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cargo_requerido",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anios_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "meses_experiencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "peso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_experiencia_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_experiencia_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<experienciacargo_cod>

=over 4

=item * L</id_cargo>

=item * L</id_cargo_requerido>

=back

=cut

__PACKAGE__->add_unique_constraint("experienciacargo_cod", ["id_cargo", "id_cargo_requerido"]);

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_cargo_requerido

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo_requerido",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo_requerido" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ayLu0enJ/QdDvtofVdC9+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
