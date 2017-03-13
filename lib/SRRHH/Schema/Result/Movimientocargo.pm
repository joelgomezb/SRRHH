use utf8;
package SRRHH::Schema::Result::Movimientocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Movimientocargo

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

=head1 TABLE: C<movimientocargo>

=cut

__PACKAGE__->table("movimientocargo");

=head1 ACCESSORS

=head2 id_movimiento_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_movimiento_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 tipo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_movimiento_cargo",
  { data_type => "integer", is_nullable => 0 },
  "cod_movimiento_cargo",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "tipo",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_movimiento_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_movimiento_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<movimientocargo_cod>

=over 4

=item * L</cod_movimiento_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("movimientocargo_cod", ["cod_movimiento_cargo"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Muc/Eb4GDMoP0NI63me1ug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
