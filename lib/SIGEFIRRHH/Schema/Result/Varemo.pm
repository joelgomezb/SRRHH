use utf8;
package SIGEFIRRHH::Schema::Result::Varemo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Varemo

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

=head1 TABLE: C<varemos>

=cut

__PACKAGE__->table("varemos");

=head1 ACCESSORS

=head2 id_varemos

  data_type: 'integer'
  is_nullable: 0

=head2 cod_varemos

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 porcentaje

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_varemos",
  { data_type => "integer", is_nullable => 0 },
  "cod_varemos",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "porcentaje",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_varemos>

=back

=cut

__PACKAGE__->set_primary_key("id_varemos");

=head1 UNIQUE CONSTRAINTS

=head2 C<varemos_cod>

=over 4

=item * L</cod_varemos>

=back

=cut

__PACKAGE__->add_unique_constraint("varemos_cod", ["cod_varemos"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hSTNEBe2MYbEbmmpjYbQwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
