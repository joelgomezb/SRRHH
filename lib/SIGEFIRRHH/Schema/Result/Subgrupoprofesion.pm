use utf8;
package SIGEFIRRHH::Schema::Result::Subgrupoprofesion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Subgrupoprofesion

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

=head1 TABLE: C<subgrupoprofesion>

=cut

__PACKAGE__->table("subgrupoprofesion");

=head1 ACCESSORS

=head2 id_subgrupo_profesion

  data_type: 'integer'
  is_nullable: 0

=head2 id_grupo_profesion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_subgrupo_profesion

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 400

=cut

__PACKAGE__->add_columns(
  "id_subgrupo_profesion",
  { data_type => "integer", is_nullable => 0 },
  "id_grupo_profesion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_subgrupo_profesion",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 400 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_subgrupo_profesion>

=back

=cut

__PACKAGE__->set_primary_key("id_subgrupo_profesion");

=head1 UNIQUE CONSTRAINTS

=head2 C<subgrupoprofesion_cod>

=over 4

=item * L</id_grupo_profesion>

=item * L</cod_subgrupo_profesion>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "subgrupoprofesion_cod",
  ["id_grupo_profesion", "cod_subgrupo_profesion"],
);

=head1 RELATIONS

=head2 id_grupo_profesion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Grupoprofesion>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_profesion",
  "SIGEFIRRHH::Schema::Result::Grupoprofesion",
  { id_grupo_profesion => "id_grupo_profesion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 profesions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Profesion>

=cut

__PACKAGE__->has_many(
  "profesions",
  "SIGEFIRRHH::Schema::Result::Profesion",
  { "foreign.id_subgrupo_profesion" => "self.id_subgrupo_profesion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1Y4A9D/f5iDdVozBm7JSjw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
