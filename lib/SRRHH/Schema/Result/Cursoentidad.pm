use utf8;
package SRRHH::Schema::Result::Cursoentidad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cursoentidad

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

=head1 TABLE: C<cursoentidad>

=cut

__PACKAGE__->table("cursoentidad");

=head1 ACCESSORS

=head2 id_curso_entidad

  data_type: 'integer'
  is_nullable: 0

=head2 costo_participante

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_curso

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_entidad_educativa

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_curso_entidad",
  { data_type => "integer", is_nullable => 0 },
  "costo_participante",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_curso",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_entidad_educativa",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_curso_entidad>

=back

=cut

__PACKAGE__->set_primary_key("id_curso_entidad");

=head1 UNIQUE CONSTRAINTS

=head2 C<cursoentidad_cod>

=over 4

=item * L</id_entidad_educativa>

=item * L</id_curso>

=back

=cut

__PACKAGE__->add_unique_constraint("cursoentidad_cod", ["id_entidad_educativa", "id_curso"]);

=head1 RELATIONS

=head2 id_curso

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Curso>

=cut

__PACKAGE__->belongs_to(
  "id_curso",
  "SRRHH::Schema::Result::Curso",
  { id_curso => "id_curso" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_entidad_educativa

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Entidadeducativa>

=cut

__PACKAGE__->belongs_to(
  "id_entidad_educativa",
  "SRRHH::Schema::Result::Entidadeducativa",
  { id_entidad_educativa => "id_entidad_educativa" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P21MhYPY5EaZ7ony305xBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
