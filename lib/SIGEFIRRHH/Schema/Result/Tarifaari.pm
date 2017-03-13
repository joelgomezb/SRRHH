use utf8;
package SIGEFIRRHH::Schema::Result::Tarifaari;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tarifaari

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

=head1 TABLE: C<tarifaari>

=cut

__PACKAGE__->table("tarifaari");

=head1 ACCESSORS

=head2 id_tarifa_ari

  data_type: 'integer'
  is_nullable: 0

=head2 tarifa

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sustraendo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_tarifa_ari",
  { data_type => "integer", is_nullable => 0 },
  "tarifa",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sustraendo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tarifa_ari>

=back

=cut

__PACKAGE__->set_primary_key("id_tarifa_ari");

=head1 UNIQUE CONSTRAINTS

=head2 C<tarifaari_cod>

=over 4

=item * L</tarifa>

=back

=cut

__PACKAGE__->add_unique_constraint("tarifaari_cod", ["tarifa"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UJ9sPSzOp4s52ghw+NYsgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
