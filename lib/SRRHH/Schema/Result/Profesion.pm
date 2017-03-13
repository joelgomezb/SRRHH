use utf8;
package SRRHH::Schema::Result::Profesion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Profesion

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

=head1 TABLE: C<profesion>

=cut

__PACKAGE__->table("profesion");

=head1 ACCESSORS

=head2 id_profesion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_profesion

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 id_subgrupo_profesion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_profesion",
  { data_type => "integer", is_nullable => 0 },
  "cod_profesion",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "id_subgrupo_profesion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_profesion>

=back

=cut

__PACKAGE__->set_primary_key("id_profesion");

=head1 UNIQUE CONSTRAINTS

=head2 C<profesion_cod>

=over 4

=item * L</cod_profesion>

=back

=cut

__PACKAGE__->add_unique_constraint("profesion_cod", ["cod_profesion"]);

=head1 RELATIONS

=head2 id_subgrupo_profesion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Subgrupoprofesion>

=cut

__PACKAGE__->belongs_to(
  "id_subgrupo_profesion",
  "SRRHH::Schema::Result::Subgrupoprofesion",
  { id_subgrupo_profesion => "id_subgrupo_profesion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 profesioncargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Profesioncargo>

=cut

__PACKAGE__->has_many(
  "profesioncargoes",
  "SRRHH::Schema::Result::Profesioncargo",
  { "foreign.id_profesion" => "self.id_profesion" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profesiontrabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Profesiontrabajador>

=cut

__PACKAGE__->has_many(
  "profesiontrabajadors",
  "SRRHH::Schema::Result::Profesiontrabajador",
  { "foreign.id_profesion" => "self.id_profesion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Yb0SmB8N86GzDwayolHTAw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
