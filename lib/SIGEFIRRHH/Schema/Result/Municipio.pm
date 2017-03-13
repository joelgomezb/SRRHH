use utf8;
package SIGEFIRRHH::Schema::Result::Municipio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Municipio

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

=head1 TABLE: C<municipio>

=cut

__PACKAGE__->table("municipio");

=head1 ACCESSORS

=head2 id_municipio

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_municipio

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 id_estado

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "id_municipio",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_municipio",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "id_estado",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_municipio>

=back

=cut

__PACKAGE__->set_primary_key("id_municipio");

=head1 UNIQUE CONSTRAINTS

=head2 C<municipio_cod>

=over 4

=item * L</id_estado>

=item * L</cod_municipio>

=back

=cut

__PACKAGE__->add_unique_constraint("municipio_cod", ["id_estado", "cod_municipio"]);

=head1 RELATIONS

=head2 id_estado

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Estado>

=cut

__PACKAGE__->belongs_to(
  "id_estado",
  "SIGEFIRRHH::Schema::Result::Estado",
  { id_estado => "id_estado" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 parroquias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Parroquia>

=cut

__PACKAGE__->has_many(
  "parroquias",
  "SIGEFIRRHH::Schema::Result::Parroquia",
  { "foreign.id_municipio" => "self.id_municipio" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 proyectoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Proyecto>

=cut

__PACKAGE__->has_many(
  "proyectoes",
  "SIGEFIRRHH::Schema::Result::Proyecto",
  { "foreign.id_municipio" => "self.id_municipio" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XbypDeA9AGNo8xIABpfl2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
