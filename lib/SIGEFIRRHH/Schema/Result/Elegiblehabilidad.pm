use utf8;
package SIGEFIRRHH::Schema::Result::Elegiblehabilidad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Elegiblehabilidad

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

=head1 TABLE: C<elegiblehabilidad>

=cut

__PACKAGE__->table("elegiblehabilidad");

=head1 ACCESSORS

=head2 id_elegible_habilidad

  data_type: 'integer'
  is_nullable: 0

=head2 id_elegible

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_habilidad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nivel

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_elegible_habilidad",
  { data_type => "integer", is_nullable => 0 },
  "id_elegible",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_habilidad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nivel",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_habilidad>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_habilidad");

=head1 UNIQUE CONSTRAINTS

=head2 C<elegiblehabilidad_cod>

=over 4

=item * L</id_elegible>

=item * L</id_tipo_habilidad>

=back

=cut

__PACKAGE__->add_unique_constraint("elegiblehabilidad_cod", ["id_elegible", "id_tipo_habilidad"]);

=head1 RELATIONS

=head2 id_elegible

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Elegible>

=cut

__PACKAGE__->belongs_to(
  "id_elegible",
  "SIGEFIRRHH::Schema::Result::Elegible",
  { id_elegible => "id_elegible" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_habilidad

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipohabilidad>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_habilidad",
  "SIGEFIRRHH::Schema::Result::Tipohabilidad",
  { id_tipo_habilidad => "id_tipo_habilidad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kpyQpDfMOuA3u2dqNKvNnA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
