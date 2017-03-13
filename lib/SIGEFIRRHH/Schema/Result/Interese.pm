use utf8;
package SIGEFIRRHH::Schema::Result::Interese;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Interese

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

=head1 TABLE: C<intereses>

=cut

__PACKAGE__->table("intereses");

=head1 ACCESSORS

=head2 concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 cedula

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "concepto",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "cedula",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FB5us8tkI4YBHPefnJbF9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
