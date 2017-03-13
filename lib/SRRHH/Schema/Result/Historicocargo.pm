use utf8;
package SRRHH::Schema::Result::Historicocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Historicocargo

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

=head1 TABLE: C<historicocargos>

=cut

__PACKAGE__->table("historicocargos");

=head1 ACCESSORS

=head2 id_historico_cargos

  data_type: 'integer'
  is_nullable: 0

=head2 id_registro

  data_type: 'integer'
  is_nullable: 0

=head2 id_causa_movimiento

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 situacion

  data_type: 'varchar'
  default_value: 'O'
  is_nullable: 0
  size: 1

=head2 movimiento

  data_type: 'varchar'
  default_value: 4
  is_nullable: 0
  size: 1

=head2 fecha_movimiento

  data_type: 'date'
  is_nullable: 1

=head2 horas

  data_type: 'double precision'
  default_value: 8
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_historico_cargos",
  { data_type => "integer", is_nullable => 0 },
  "id_registro",
  { data_type => "integer", is_nullable => 0 },
  "id_causa_movimiento",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "situacion",
  { data_type => "varchar", default_value => "O", is_nullable => 0, size => 1 },
  "movimiento",
  { data_type => "varchar", default_value => 4, is_nullable => 0, size => 1 },
  "fecha_movimiento",
  { data_type => "date", is_nullable => 1 },
  "horas",
  { data_type => "double precision", default_value => 8, is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historico_cargos>

=back

=cut

__PACKAGE__->set_primary_key("id_historico_cargos");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qZ51No880il2EdS6yZittg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
