use utf8;
package SRRHH::Schema::Result::Estructura;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Estructura

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

=head1 TABLE: C<estructura>

=cut

__PACKAGE__->table("estructura");

=head1 ACCESSORS

=head2 id_estructura

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_estructura",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_estructura>

=back

=cut

__PACKAGE__->set_primary_key("id_estructura");

=head1 RELATIONS

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5+LN0FVF3LVDIe7Mqu/fZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
