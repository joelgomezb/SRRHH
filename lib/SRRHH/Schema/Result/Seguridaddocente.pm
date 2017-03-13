use utf8;
package SRRHH::Schema::Result::Seguridaddocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Seguridaddocente

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

=head1 TABLE: C<seguridaddocente>

=cut

__PACKAGE__->table("seguridaddocente");

=head1 ACCESSORS

=head2 id_seguridad_docente

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 cerrado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 fecha_cierre

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_seguridad_docente",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "cerrado",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "fecha_cierre",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_docente");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DmU3s0+PBvYK7ajujEdZhw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
