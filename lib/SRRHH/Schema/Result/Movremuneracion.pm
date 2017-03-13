use utf8;
package SRRHH::Schema::Result::Movremuneracion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Movremuneracion

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

=head1 TABLE: C<movremuneracion>

=cut

__PACKAGE__->table("movremuneracion");

=head1 ACCESSORS

=head2 id_mov_remuneracion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_mov_remuneracion

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_mov_remuneracion",
  { data_type => "integer", is_nullable => 0 },
  "cod_mov_remuneracion",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_mov_remuneracion>

=back

=cut

__PACKAGE__->set_primary_key("id_mov_remuneracion");

=head1 UNIQUE CONSTRAINTS

=head2 C<movremuneracion_cod>

=over 4

=item * L</cod_mov_remuneracion>

=back

=cut

__PACKAGE__->add_unique_constraint("movremuneracion_cod", ["cod_mov_remuneracion"]);

=head1 RELATIONS

=head2 historialremuns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SRRHH::Schema::Result::Historialremun",
  { "foreign.id_mov_remuneracion" => "self.id_mov_remuneracion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mlp0IX7rkN07rN/cIej4MQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
