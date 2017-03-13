use utf8;
package SRRHH::Schema::Result::Mpdobrero;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Mpdobrero

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

=head1 TABLE: C<mpdobrero>

=cut

__PACKAGE__->table("mpdobrero");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 apellido1

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 apellido2

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombre1

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombre2

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 denom_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sueldo_basico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_profesional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_antiguedad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 otro_serv

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "apellido1",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "apellido2",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombre1",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombre2",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "denom_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "grado",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sueldo_basico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_profesional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_antiguedad",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "otro_serv",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:avEeDfA9CCtfdcyDHkywOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
