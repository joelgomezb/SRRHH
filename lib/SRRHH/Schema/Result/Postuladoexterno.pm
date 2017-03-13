use utf8;
package SRRHH::Schema::Result::Postuladoexterno;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Postuladoexterno

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

=head1 TABLE: C<postuladoexterno>

=cut

__PACKAGE__->table("postuladoexterno");

=head1 ACCESSORS

=head2 id_postulado_externo

  data_type: 'integer'
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 nacionalidad

  data_type: 'varchar'
  default_value: 'V'
  is_nullable: 0
  size: 1

=head2 estado_civil

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_postulado_externo",
  { data_type => "integer", is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "nacionalidad",
  { data_type => "varchar", default_value => "V", is_nullable => 0, size => 1 },
  "estado_civil",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_postulado_externo>

=back

=cut

__PACKAGE__->set_primary_key("id_postulado_externo");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Wdx+/AUXHVxw+zvirCOBIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
