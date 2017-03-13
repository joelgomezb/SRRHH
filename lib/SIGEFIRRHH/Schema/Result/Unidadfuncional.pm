use utf8;
package SIGEFIRRHH::Schema::Result::Unidadfuncional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Unidadfuncional

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

=head1 TABLE: C<unidadfuncional>

=cut

__PACKAGE__->table("unidadfuncional");

=head1 ACCESSORS

=head2 id_unidad_funcional

  data_type: 'integer'
  is_nullable: 0

=head2 cod_unidad_funcional

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_unidad_funcional",
  { data_type => "integer", is_nullable => 0 },
  "cod_unidad_funcional",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_unidad_funcional>

=back

=cut

__PACKAGE__->set_primary_key("id_unidad_funcional");

=head1 UNIQUE CONSTRAINTS

=head2 C<unidadfuncional_cod>

=over 4

=item * L</cod_unidad_funcional>

=back

=cut

__PACKAGE__->add_unique_constraint("unidadfuncional_cod", ["cod_unidad_funcional"]);

=head1 RELATIONS

=head2 dependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { "foreign.id_unidad_funcional" => "self.id_unidad_funcional" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 planadiestramientoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Planadiestramiento>

=cut

__PACKAGE__->has_many(
  "planadiestramientoes",
  "SIGEFIRRHH::Schema::Result::Planadiestramiento",
  { "foreign.id_unidad_funcional" => "self.id_unidad_funcional" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariounidadfuncionals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariounidadfuncional>

=cut

__PACKAGE__->has_many(
  "usuariounidadfuncionals",
  "SIGEFIRRHH::Schema::Result::Usuariounidadfuncional",
  { "foreign.id_unidad_funcional" => "self.id_unidad_funcional" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GWVwMEUORedvTMddpNhnSQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
