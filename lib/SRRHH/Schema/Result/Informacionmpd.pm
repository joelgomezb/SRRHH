use utf8;
package SRRHH::Schema::Result::Informacionmpd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Informacionmpd

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

=head1 TABLE: C<informacionmpd>

=cut

__PACKAGE__->table("informacionmpd");

=head1 ACCESSORS

=head2 codigo_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 cedula

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 sueldo1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 sueldo2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "codigo_nomina",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "cedula",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_apellido",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "sueldo1",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion1",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "sueldo2",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion2",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eKvyXSgAyfIO9+ss7d9cAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
