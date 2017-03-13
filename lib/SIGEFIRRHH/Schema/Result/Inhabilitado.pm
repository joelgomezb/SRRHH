use utf8;
package SIGEFIRRHH::Schema::Result::Inhabilitado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Inhabilitado

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

=head1 TABLE: C<inhabilitado>

=cut

__PACKAGE__->table("inhabilitado");

=head1 ACCESSORS

=head2 id_inhabilitado

  data_type: 'integer'
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_inhabilitado",
  { data_type => "integer", is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_inhabilitado>

=back

=cut

__PACKAGE__->set_primary_key("id_inhabilitado");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gA7gwjPxhZxxZoLgtofFIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
