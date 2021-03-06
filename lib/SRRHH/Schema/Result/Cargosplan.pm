use utf8;
package SRRHH::Schema::Result::Cargosplan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cargosplan

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

=head1 TABLE: C<cargosplan>

=cut

__PACKAGE__->table("cargosplan");

=head1 ACCESSORS

=head2 id_cargos_plan

  data_type: 'integer'
  is_nullable: 0

=head2 id_plan_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_movimiento_cargo

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
  "id_cargos_plan",
  { data_type => "integer", is_nullable => 0 },
  "id_plan_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_movimiento_cargo",
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

=item * L</id_cargos_plan>

=back

=cut

__PACKAGE__->set_primary_key("id_cargos_plan");

=head1 RELATIONS

=head2 id_plan_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Planpersonal>

=cut

__PACKAGE__->belongs_to(
  "id_plan_personal",
  "SRRHH::Schema::Result::Planpersonal",
  { id_plan_personal => "id_plan_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7271rFJb6C9N3JRPf91s2g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
