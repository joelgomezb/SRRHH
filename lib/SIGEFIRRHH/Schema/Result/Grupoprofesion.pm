use utf8;
package SIGEFIRRHH::Schema::Result::Grupoprofesion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Grupoprofesion

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

=head1 TABLE: C<grupoprofesion>

=cut

__PACKAGE__->table("grupoprofesion");

=head1 ACCESSORS

=head2 id_grupo_profesion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_grupo_profesion

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
  "id_grupo_profesion",
  { data_type => "integer", is_nullable => 0 },
  "cod_grupo_profesion",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 400 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_grupo_profesion>

=back

=cut

__PACKAGE__->set_primary_key("id_grupo_profesion");

=head1 UNIQUE CONSTRAINTS

=head2 C<grupoprofesion_cod>

=over 4

=item * L</cod_grupo_profesion>

=back

=cut

__PACKAGE__->add_unique_constraint("grupoprofesion_cod", ["cod_grupo_profesion"]);

=head1 RELATIONS

=head2 subgrupoprofesions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Subgrupoprofesion>

=cut

__PACKAGE__->has_many(
  "subgrupoprofesions",
  "SIGEFIRRHH::Schema::Result::Subgrupoprofesion",
  { "foreign.id_grupo_profesion" => "self.id_grupo_profesion" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tituloes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Titulo>

=cut

__PACKAGE__->has_many(
  "tituloes",
  "SIGEFIRRHH::Schema::Result::Titulo",
  { "foreign.id_grupo_profesion" => "self.id_grupo_profesion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NWYYTi2b8/5ImtjeMJa5Vg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
