use utf8;
package SRRHH::Schema::Result::Carnet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Carnet - Registro y Control del proceso de carnetización en el MPPEE.

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

=head1 TABLE: C<carnet>

=cut

__PACKAGE__->table("carnet");

=head1 ACCESSORS

=head2 id_carnet

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'carnet_id_carnet_seq'

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'text'
  default_value: 'A'
  is_nullable: 0
  original: {data_type => "varchar"}

=head2 situacion

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_carnet",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "carnet_id_carnet_seq",
  },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  {
    data_type     => "text",
    default_value => "A",
    is_nullable   => 0,
    original      => { data_type => "varchar" },
  },
  "situacion",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_carnet>

=back

=cut

__PACKAGE__->set_primary_key("id_carnet");

=head1 RELATIONS

=head2 situacion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Situcarnet>

=cut

__PACKAGE__->belongs_to(
  "situacion",
  "SRRHH::Schema::Result::Situcarnet",
  { id_situacion_carnet => "situacion" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:awYdStbvoUXFGheCZw2FfQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
