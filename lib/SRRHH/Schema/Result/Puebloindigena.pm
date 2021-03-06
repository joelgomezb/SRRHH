use utf8;
package SRRHH::Schema::Result::Puebloindigena;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Puebloindigena

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

=head1 TABLE: C<puebloindigena>

=cut

__PACKAGE__->table("puebloindigena");

=head1 ACCESSORS

=head2 id_pueblo_indigena

  data_type: 'integer'
  is_nullable: 0

=head2 cod_pueblo_indigena

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=cut

__PACKAGE__->add_columns(
  "id_pueblo_indigena",
  { data_type => "integer", is_nullable => 0 },
  "cod_pueblo_indigena",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_pueblo_indigena>

=back

=cut

__PACKAGE__->set_primary_key("id_pueblo_indigena");

=head1 UNIQUE CONSTRAINTS

=head2 C<pueblo_indigena_cod>

=over 4

=item * L</cod_pueblo_indigena>

=back

=cut

__PACKAGE__->add_unique_constraint("pueblo_indigena_cod", ["cod_pueblo_indigena"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:V3ppdbHNV3U+2jF7S+h4UA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
