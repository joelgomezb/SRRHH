use utf8;
package SRRHH::Schema::Result::Tipocurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipocurso

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

=head1 TABLE: C<tipocurso>

=cut

__PACKAGE__->table("tipocurso");

=head1 ACCESSORS

=head2 id_tipo_curso

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_curso

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_curso",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_curso",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_curso>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_curso");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipocurso_cod>

=over 4

=item * L</cod_tipo_curso>

=back

=cut

__PACKAGE__->add_unique_constraint("tipocurso_cod", ["cod_tipo_curso"]);

=head1 RELATIONS

=head2 cursoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Curso>

=cut

__PACKAGE__->has_many(
  "cursoes",
  "SRRHH::Schema::Result::Curso",
  { "foreign.id_tipo_curso" => "self.id_tipo_curso" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estudios

Type: has_many

Related object: L<SRRHH::Schema::Result::Estudio>

=cut

__PACKAGE__->has_many(
  "estudios",
  "SRRHH::Schema::Result::Estudio",
  { "foreign.id_tipo_curso" => "self.id_tipo_curso" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planadiestramientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Planadiestramiento>

=cut

__PACKAGE__->has_many(
  "planadiestramientoes",
  "SRRHH::Schema::Result::Planadiestramiento",
  { "foreign.id_tipo_curso" => "self.id_tipo_curso" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8rbL2tPIMSriMhJjA/hKSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
