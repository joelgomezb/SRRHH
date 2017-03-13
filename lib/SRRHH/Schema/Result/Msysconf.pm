use utf8;
package SRRHH::Schema::Result::Msysconf;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Msysconf

=head1 DESCRIPTION

The MSysConf table contains global settings for the Microsoft Jet Engine.

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

=head1 TABLE: C<msysconf>

=cut

__PACKAGE__->table("msysconf");

=head1 ACCESSORS

=head2 config

  data_type: 'integer'
  is_nullable: 0

=head2 chvalue

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 nvalue

  data_type: 'integer'
  is_nullable: 1

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "config",
  { data_type => "integer", is_nullable => 0 },
  "chvalue",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "nvalue",
  { data_type => "integer", is_nullable => 1 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0FqAWDGi0grmZcEEMC+jnQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
