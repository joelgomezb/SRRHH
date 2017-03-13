use utf8;
package SRRHH::Schema::Result::Grupoorganismo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Grupoorganismo

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

=head1 TABLE: C<grupoorganismo>

=cut

__PACKAGE__->table("grupoorganismo");

=head1 ACCESSORS

=head2 id_grupo_organismo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_grupo_organismo

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_corto

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "id_grupo_organismo",
  { data_type => "integer", is_nullable => 0 },
  "cod_grupo_organismo",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_corto",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_grupo_organismo>

=back

=cut

__PACKAGE__->set_primary_key("id_grupo_organismo");

=head1 UNIQUE CONSTRAINTS

=head2 C<grupoorganismo_cod>

=over 4

=item * L</id_organismo>

=item * L</cod_grupo_organismo>

=back

=cut

__PACKAGE__->add_unique_constraint("grupoorganismo_cod", ["id_organismo", "cod_grupo_organismo"]);

=head1 RELATIONS

=head2 dependencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SRRHH::Schema::Result::Dependencia",
  { "foreign.id_grupo_organismo" => "self.id_grupo_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 parametrogobierno

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametrogobierno>

=cut

__PACKAGE__->might_have(
  "parametrogobierno",
  "SRRHH::Schema::Result::Parametrogobierno",
  { "foreign.id_grupo_organismo" => "self.id_grupo_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrovarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Parametrovario>

=cut

__PACKAGE__->has_many(
  "parametrovarios",
  "SRRHH::Schema::Result::Parametrovario",
  { "foreign.id_grupo_organismo" => "self.id_grupo_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registro>

=cut

__PACKAGE__->has_many(
  "registroes",
  "SRRHH::Schema::Result::Registro",
  { "foreign.id_grupo_organismo" => "self.id_grupo_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SRRHH::Schema::Result::Tipopersonal",
  { "foreign.id_grupo_organismo" => "self.id_grupo_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JIaWf522SsoDzhwm2y5bdw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
