use utf8;
package SIGEFIRRHH::Schema::Result::Cuenta;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cuenta

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

=head1 TABLE: C<cuenta>

=cut

__PACKAGE__->table("cuenta");

=head1 ACCESSORS

=head2 cedula

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cuentano

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cuentano",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T+V5khO3lSnu21rTXTExjg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
