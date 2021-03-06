use utf8;
package SIGEFIRRHH::Schema::Result::Contratosplan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Contratosplan

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

=head1 TABLE: C<contratosplan>

=cut

__PACKAGE__->table("contratosplan");

=head1 ACCESSORS

=head2 id_contratos_plan

  data_type: 'integer'
  is_nullable: 0

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_region

  data_type: 'integer'
  is_nullable: 0

=head2 cantidad_aprobados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cantidad_realizados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_contratos_plan",
  { data_type => "integer", is_nullable => 0 },
  "id_plan_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_region",
  { data_type => "integer", is_nullable => 0 },
  "cantidad_aprobados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cantidad_realizados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_contratos_plan>

=back

=cut

__PACKAGE__->set_primary_key("id_contratos_plan");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FDkb8ku45Gm6xxyFfMzmzQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
