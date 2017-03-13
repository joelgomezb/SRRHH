use utf8;
package SRRHH::Schema::Result::Primascargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Primascargo

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

=head1 TABLE: C<primascargo>

=cut

__PACKAGE__->table("primascargo");

=head1 ACCESSORS

=head2 id_primas_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 porcentaje_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_primas_plan

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_primas_cargo",
  { data_type => "integer", is_nullable => 0 },
  "porcentaje_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_primas_plan",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_primas_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_primas_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<primascargo_cod>

=over 4

=item * L</id_primas_plan>

=item * L</id_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("primascargo_cod", ["id_primas_plan", "id_cargo"]);

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_primas_plan

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Primasplan>

=cut

__PACKAGE__->belongs_to(
  "id_primas_plan",
  "SRRHH::Schema::Result::Primasplan",
  { id_primas_plan => "id_primas_plan" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9HpIOP61zla+mvL29BUphg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
