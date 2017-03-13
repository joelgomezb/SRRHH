use utf8;
package SRRHH::Schema::Result::Parroquia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parroquia

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

=head1 TABLE: C<parroquia>

=cut

__PACKAGE__->table("parroquia");

=head1 ACCESSORS

=head2 id_parroquia

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_parroquia

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 id_municipio

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "id_parroquia",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_parroquia",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "id_municipio",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parroquia>

=back

=cut

__PACKAGE__->set_primary_key("id_parroquia");

=head1 UNIQUE CONSTRAINTS

=head2 C<parroquia_cod>

=over 4

=item * L</id_municipio>

=item * L</cod_parroquia>

=back

=cut

__PACKAGE__->add_unique_constraint("parroquia_cod", ["id_municipio", "cod_parroquia"]);

=head1 RELATIONS

=head2 id_municipio

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Municipio>

=cut

__PACKAGE__->belongs_to(
  "id_municipio",
  "SRRHH::Schema::Result::Municipio",
  { id_municipio => "id_municipio" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 personals

Type: has_many

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->has_many(
  "personals",
  "SRRHH::Schema::Result::Personal",
  { "foreign.id_parroquia" => "self.id_parroquia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:isRSIFWKlKhavPEeU5QmrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
