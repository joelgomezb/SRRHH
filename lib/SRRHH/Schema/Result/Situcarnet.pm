use utf8;
package SRRHH::Schema::Result::Situcarnet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Situcarnet - situación del carnet por cada trabajador

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

=head1 TABLE: C<situcarnet>

=cut

__PACKAGE__->table("situcarnet");

=head1 ACCESSORS

=head2 id_situacion_carnet

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'situcarnet_id_situacion_carnet_seq'

=head2 nombre

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_situacion_carnet",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "situcarnet_id_situacion_carnet_seq",
  },
  "nombre",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_situacion_carnet>

=back

=cut

__PACKAGE__->set_primary_key("id_situacion_carnet");

=head1 RELATIONS

=head2 carnets

Type: has_many

Related object: L<SRRHH::Schema::Result::Carnet>

=cut

__PACKAGE__->has_many(
  "carnets",
  "SRRHH::Schema::Result::Carnet",
  { "foreign.situacion" => "self.id_situacion_carnet" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fRSxHWtYE6Xtr4VypNp3sA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
