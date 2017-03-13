use utf8;
package SIGEFIRRHH::Schema::Result::Catmenel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Catmenel

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

=head1 TABLE: C<catmenel>

=cut

__PACKAGE__->table("catmenel");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gR+80FJUkRsH9P7sVCz+yg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
