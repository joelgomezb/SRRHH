use utf8;
package SIGEFIRRHH::Schema::Result::Institucion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Institucion

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

=head1 TABLE: C<institucion>

=cut

__PACKAGE__->table("institucion");

=head1 ACCESSORS

=head2 id_institucion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_institucion

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 nombre_corto

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 ley_estatuto

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_institucion",
  { data_type => "integer", is_nullable => 0 },
  "cod_institucion",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "nombre_corto",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "ley_estatuto",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_institucion>

=back

=cut

__PACKAGE__->set_primary_key("id_institucion");

=head1 UNIQUE CONSTRAINTS

=head2 C<institucion_cod>

=over 4

=item * L</cod_institucion>

=back

=cut

__PACKAGE__->add_unique_constraint("institucion_cod", ["cod_institucion"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bB9Em5Qw5GQ8yzBL/nQKJQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
