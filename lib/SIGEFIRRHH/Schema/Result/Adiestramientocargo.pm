use utf8;
package SIGEFIRRHH::Schema::Result::Adiestramientocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Adiestramientocargo

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

=head1 TABLE: C<adiestramientocargo>

=cut

__PACKAGE__->table("adiestramientocargo");

=head1 ACCESSORS

=head2 id_adiestramiento_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_area_conocimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nivel

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

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
  "id_adiestramiento_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_area_conocimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nivel",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "peso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_adiestramiento_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_adiestramiento_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<adiestramientocargo_cod>

=over 4

=item * L</id_cargo>

=item * L</id_area_conocimiento>

=item * L</nivel>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "adiestramientocargo_cod",
  ["id_cargo", "id_area_conocimiento", "nivel"],
);

=head1 RELATIONS

=head2 id_area_conocimiento

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Areaconocimiento>

=cut

__PACKAGE__->belongs_to(
  "id_area_conocimiento",
  "SIGEFIRRHH::Schema::Result::Areaconocimiento",
  { id_area_conocimiento => "id_area_conocimiento" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1Jl+VsiNiv4Fp5v61NZvwA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
