use utf8;
package SRRHH::Schema::Result::Jubilado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Jubilado

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

=head1 TABLE: C<jubilado>

=cut

__PACKAGE__->table("jubilado");

=head1 ACCESSORS

=head2 id_jubilado

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_jubilacion

  data_type: 'date'
  is_nullable: 1

=head2 tipo_jubilacion

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 base_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 porcentaje_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 id_institucion

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_jubilado",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "fecha_jubilacion",
  { data_type => "date", is_nullable => 1 },
  "tipo_jubilacion",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "grado",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "base_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "porcentaje_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "id_institucion",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_jubilado>

=back

=cut

__PACKAGE__->set_primary_key("id_jubilado");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2kZBx+TIgPBfyhsZ+ZjkBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
