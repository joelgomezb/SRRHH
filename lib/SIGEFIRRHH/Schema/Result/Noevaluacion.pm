use utf8;
package SIGEFIRRHH::Schema::Result::Noevaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Noevaluacion

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

=head1 TABLE: C<noevaluacion>

=cut

__PACKAGE__->table("noevaluacion");

=head1 ACCESSORS

=head2 id_no_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 motivo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cedula_supervisor

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_supervisor

  data_type: 'varchar'
  default_value: 'H'
  is_nullable: 0
  size: 50

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_no_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "motivo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cedula_supervisor",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_supervisor",
  { data_type => "varchar", default_value => "H", is_nullable => 0, size => 50 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_no_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_no_evaluacion");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:l5qQJ1IuPJbbK98PvOVmJA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
