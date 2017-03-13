use utf8;
package SRRHH::Schema::Result::Dotacionentregada;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Dotacionentregada

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

=head1 TABLE: C<dotacionentregada>

=cut

__PACKAGE__->table("dotacionentregada");

=head1 ACCESSORS

=head2 id_dotacion_entregada

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_subtipo_dotacion

  data_type: 'integer'
  is_nullable: 0

=head2 talla

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cantidad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_dotacion_entregada",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_subtipo_dotacion",
  { data_type => "integer", is_nullable => 0 },
  "talla",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cantidad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dotacion_entregada>

=back

=cut

__PACKAGE__->set_primary_key("id_dotacion_entregada");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v86fU5LeXWk1xCQGd2uG6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
