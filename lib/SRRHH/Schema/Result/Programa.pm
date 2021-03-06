use utf8;
package SRRHH::Schema::Result::Programa;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Programa

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

=head1 TABLE: C<programa>

=cut

__PACKAGE__->table("programa");

=head1 ACCESSORS

=head2 id_programa

  data_type: 'integer'
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_programa

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 id_unidad_administradora

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_programa",
  { data_type => "integer", is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_programa",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "id_unidad_administradora",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_programa>

=back

=cut

__PACKAGE__->set_primary_key("id_programa");

=head1 UNIQUE CONSTRAINTS

=head2 C<programa_cod>

=over 4

=item * L</cod_programa>

=back

=cut

__PACKAGE__->add_unique_constraint("programa_cod", ["cod_programa"]);

=head1 RELATIONS

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

=head2 unidadejecutoras

Type: has_many

Related object: L<SRRHH::Schema::Result::Unidadejecutora>

=cut

__PACKAGE__->has_many(
  "unidadejecutoras",
  "SRRHH::Schema::Result::Unidadejecutora",
  { "foreign.id_programa" => "self.id_programa" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YDUdpTr9/iwtB4OUG1uxRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
