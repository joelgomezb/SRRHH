use utf8;
package SRRHH::Schema::Result::Movimientosplan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Movimientosplan

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

=head1 TABLE: C<movimientosplan>

=cut

__PACKAGE__->table("movimientosplan");

=head1 ACCESSORS

=head2 id_movimientos_plan

  data_type: 'integer'
  is_nullable: 0

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_causa_movimiento

  data_type: 'integer'
  is_nullable: 0

=head2 cantidad_planificados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cantidad_realizados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cantidad_aprobados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cantidad_devueltos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_movimientos_plan",
  { data_type => "integer", is_nullable => 0 },
  "id_plan_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_causa_movimiento",
  { data_type => "integer", is_nullable => 0 },
  "cantidad_planificados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cantidad_realizados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cantidad_aprobados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cantidad_devueltos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_movimientos_plan>

=back

=cut

__PACKAGE__->set_primary_key("id_movimientos_plan");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ck0NMyhuo0NLC4wuvQ1WHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
