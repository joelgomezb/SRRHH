use utf8;
package SRRHH::Schema::Result::Escalacuadroonapre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Escalacuadroonapre

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

=head1 TABLE: C<escalacuadroonapre>

=cut

__PACKAGE__->table("escalacuadroonapre");

=head1 ACCESSORS

=head2 id_escalacuadroonapre

  data_type: 'integer'
  is_nullable: 0

=head2 cod_escala

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 desde

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 hasta

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_escalacuadroonapre",
  { data_type => "integer", is_nullable => 0 },
  "cod_escala",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "desde",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "hasta",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_escalacuadroonapre>

=back

=cut

__PACKAGE__->set_primary_key("id_escalacuadroonapre");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hxgmcU1cO9+VF59e3sExOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
