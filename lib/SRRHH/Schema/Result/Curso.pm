use utf8;
package SRRHH::Schema::Result::Curso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Curso

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

=head1 TABLE: C<curso>

=cut

__PACKAGE__->table("curso");

=head1 ACCESSORS

=head2 id_curso

  data_type: 'integer'
  is_nullable: 0

=head2 cod_curso

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_area_conocimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_curso

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_curso",
  { data_type => "integer", is_nullable => 0 },
  "cod_curso",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_area_conocimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_curso",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_curso>

=back

=cut

__PACKAGE__->set_primary_key("id_curso");

=head1 UNIQUE CONSTRAINTS

=head2 C<curso_cod>

=over 4

=item * L</id_area_conocimiento>

=item * L</cod_curso>

=back

=cut

__PACKAGE__->add_unique_constraint("curso_cod", ["id_area_conocimiento", "cod_curso"]);

=head1 RELATIONS

=head2 cursoentidads

Type: has_many

Related object: L<SRRHH::Schema::Result::Cursoentidad>

=cut

__PACKAGE__->has_many(
  "cursoentidads",
  "SRRHH::Schema::Result::Cursoentidad",
  { "foreign.id_curso" => "self.id_curso" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_area_conocimiento

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Areaconocimiento>

=cut

__PACKAGE__->belongs_to(
  "id_area_conocimiento",
  "SRRHH::Schema::Result::Areaconocimiento",
  { id_area_conocimiento => "id_area_conocimiento" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_curso

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipocurso>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_curso",
  "SRRHH::Schema::Result::Tipocurso",
  { id_tipo_curso => "id_tipo_curso" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vCodwoxiVaCmigBhBgzrSA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
