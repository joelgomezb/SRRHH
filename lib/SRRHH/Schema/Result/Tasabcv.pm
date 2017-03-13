use utf8;
package SRRHH::Schema::Result::Tasabcv;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tasabcv

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

=head1 TABLE: C<tasabcv>

=cut

__PACKAGE__->table("tasabcv");

=head1 ACCESSORS

=head2 id_tasa_bcv

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

=head2 tasa_promedio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tasa_activa

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tasa_fideicomiso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_tasa_bcv",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tasa_promedio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tasa_activa",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tasa_fideicomiso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tasa_bcv>

=back

=cut

__PACKAGE__->set_primary_key("id_tasa_bcv");

=head1 UNIQUE CONSTRAINTS

=head2 C<tasabcv_cod>

=over 4

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint("tasabcv_cod", ["anio", "mes"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mq6G2x2pxKFrB7wPfVYJTA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
