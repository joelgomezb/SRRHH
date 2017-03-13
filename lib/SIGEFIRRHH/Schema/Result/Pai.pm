use utf8;
package SIGEFIRRHH::Schema::Result::Pai;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Pai

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

=head1 TABLE: C<pais>

=cut

__PACKAGE__->table("pais");

=head1 ACCESSORS

=head2 id_pais

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_pais

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 moneda

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 moneda_sing

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 moneda_plur

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 simbolo

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 fraccion

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_region_continente

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_pais",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_pais",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "moneda",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "moneda_sing",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "moneda_plur",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "simbolo",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "fraccion",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_region_continente",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_pais>

=back

=cut

__PACKAGE__->set_primary_key("id_pais");

=head1 UNIQUE CONSTRAINTS

=head2 C<pais_cod>

=over 4

=item * L</cod_pais>

=back

=cut

__PACKAGE__->add_unique_constraint("pais_cod", ["cod_pais"]);

=head1 RELATIONS

=head2 elegibleestudios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Elegibleestudio>

=cut

__PACKAGE__->has_many(
  "elegibleestudios",
  "SIGEFIRRHH::Schema::Result::Elegibleestudio",
  { "foreign.id_pais" => "self.id_pais" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estadoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Estado>

=cut

__PACKAGE__->has_many(
  "estadoes",
  "SIGEFIRRHH::Schema::Result::Estado",
  { "foreign.id_pais" => "self.id_pais" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estudios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Estudio>

=cut

__PACKAGE__->has_many(
  "estudios",
  "SIGEFIRRHH::Schema::Result::Estudio",
  { "foreign.id_pais" => "self.id_pais" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_region_continente

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Regioncontinente>

=cut

__PACKAGE__->belongs_to(
  "id_region_continente",
  "SIGEFIRRHH::Schema::Result::Regioncontinente",
  { id_region_continente => "id_region_continente" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_region_continente_2

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Regioncontinente>

=cut

__PACKAGE__->belongs_to(
  "id_region_continente_2",
  "SIGEFIRRHH::Schema::Result::Regioncontinente",
  { id_region_continente => "id_region_continente" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 personals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->has_many(
  "personals",
  "SIGEFIRRHH::Schema::Result::Personal",
  { "foreign.id_pais_nacionalidad" => "self.id_pais" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SawRh0395XsAY9SOOH+EEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
