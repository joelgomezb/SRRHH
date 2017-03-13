use utf8;
package SIGEFIRRHH::Schema::Result::Titulo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Titulo

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

=head1 TABLE: C<titulo>

=cut

__PACKAGE__->table("titulo");

=head1 ACCESSORS

=head2 id_titulo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_titulo

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 id_nivel_educativo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_grupo_profesion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_titulo",
  { data_type => "integer", is_nullable => 0 },
  "cod_titulo",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "id_nivel_educativo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_profesion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_titulo>

=back

=cut

__PACKAGE__->set_primary_key("id_titulo");

=head1 UNIQUE CONSTRAINTS

=head2 C<titulo_cod>

=over 4

=item * L</cod_titulo>

=back

=cut

__PACKAGE__->add_unique_constraint("titulo_cod", ["cod_titulo"]);

=head1 RELATIONS

=head2 educacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Educacion>

=cut

__PACKAGE__->has_many(
  "educacions",
  "SIGEFIRRHH::Schema::Result::Educacion",
  { "foreign.id_titulo" => "self.id_titulo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

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

=head2 id_nivel_educativo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Niveleducativo>

=cut

__PACKAGE__->belongs_to(
  "id_nivel_educativo",
  "SIGEFIRRHH::Schema::Result::Niveleducativo",
  { id_nivel_educativo => "id_nivel_educativo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qBAubijMzcOwittOSbZgCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
