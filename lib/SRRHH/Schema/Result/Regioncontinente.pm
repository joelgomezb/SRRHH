use utf8;
package SRRHH::Schema::Result::Regioncontinente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Regioncontinente

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

=head1 TABLE: C<regioncontinente>

=cut

__PACKAGE__->table("regioncontinente");

=head1 ACCESSORS

=head2 id_region_continente

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_region_continente

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 id_continente

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_region_continente",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_region_continente",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "id_continente",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_region_continente>

=back

=cut

__PACKAGE__->set_primary_key("id_region_continente");

=head1 UNIQUE CONSTRAINTS

=head2 C<regioncontinente_cod>

=over 4

=item * L</cod_region_continente>

=back

=cut

__PACKAGE__->add_unique_constraint("regioncontinente_cod", ["cod_region_continente"]);

=head1 RELATIONS

=head2 id_continente

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Continente>

=cut

__PACKAGE__->belongs_to(
  "id_continente",
  "SRRHH::Schema::Result::Continente",
  { id_continente => "id_continente" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 pais_id_region_continentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Pai>

=cut

__PACKAGE__->has_many(
  "pais_id_region_continentes",
  "SRRHH::Schema::Result::Pai",
  { "foreign.id_region_continente" => "self.id_region_continente" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pais_id_region_continentes_2s

Type: has_many

Related object: L<SRRHH::Schema::Result::Pai>

=cut

__PACKAGE__->has_many(
  "pais_id_region_continentes_2s",
  "SRRHH::Schema::Result::Pai",
  { "foreign.id_region_continente" => "self.id_region_continente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:l70EaFnMKFfj+tnnGHg38g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
