use utf8;
package SRRHH::Schema::Result::Establecimientosalud;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Establecimientosalud

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

=head1 TABLE: C<establecimientosalud>

=cut

__PACKAGE__->table("establecimientosalud");

=head1 ACCESSORS

=head2 id_establecimiento_salud

  data_type: 'integer'
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_establecimiento_salud

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 sector

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 sso

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "id_establecimiento_salud",
  { data_type => "integer", is_nullable => 0 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cod_establecimiento_salud",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "sector",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "sso",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_establecimiento_salud>

=back

=cut

__PACKAGE__->set_primary_key("id_establecimiento_salud");

=head1 UNIQUE CONSTRAINTS

=head2 C<establecimientosalud_cod>

=over 4

=item * L</cod_establecimiento_salud>

=back

=cut

__PACKAGE__->add_unique_constraint("establecimientosalud_cod", ["cod_establecimiento_salud"]);

=head1 RELATIONS

=head2 id_ciudad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 siniestroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Siniestro>

=cut

__PACKAGE__->has_many(
  "siniestroes",
  "SRRHH::Schema::Result::Siniestro",
  {
    "foreign.id_establecimiento_salud" => "self.id_establecimiento_salud",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7GjyKSbPWo5ZyXxfxctKQw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
