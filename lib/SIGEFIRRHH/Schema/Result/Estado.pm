use utf8;
package SIGEFIRRHH::Schema::Result::Estado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Estado

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

=head1 TABLE: C<estado>

=cut

__PACKAGE__->table("estado");

=head1 ACCESSORS

=head2 id_estado

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_estado

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 id_pais

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_estado",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_estado",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "id_pais",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_estado>

=back

=cut

__PACKAGE__->set_primary_key("id_estado");

=head1 UNIQUE CONSTRAINTS

=head2 C<estado_cod>

=over 4

=item * L</id_pais>

=item * L</cod_estado>

=back

=cut

__PACKAGE__->add_unique_constraint("estado_cod", ["id_pais", "cod_estado"]);

=head1 RELATIONS

=head2 ciudads

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->has_many(
  "ciudads",
  "SIGEFIRRHH::Schema::Result::Ciudad",
  { "foreign.id_estado" => "self.id_estado" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 entidadeducativas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Entidadeducativa>

=cut

__PACKAGE__->has_many(
  "entidadeducativas",
  "SIGEFIRRHH::Schema::Result::Entidadeducativa",
  { "foreign.id_estado" => "self.id_estado" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_pai

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Pai>

=cut

__PACKAGE__->belongs_to(
  "id_pai",
  "SIGEFIRRHH::Schema::Result::Pai",
  { id_pais => "id_pais" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 municipios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Municipio>

=cut

__PACKAGE__->has_many(
  "municipios",
  "SIGEFIRRHH::Schema::Result::Municipio",
  { "foreign.id_estado" => "self.id_estado" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qtjHVJr13E/+rJ5FAZJPCQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
