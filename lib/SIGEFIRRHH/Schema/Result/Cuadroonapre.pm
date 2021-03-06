use utf8;
package SIGEFIRRHH::Schema::Result::Cuadroonapre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cuadroonapre

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

=head1 TABLE: C<cuadroonapre>

=cut

__PACKAGE__->table("cuadroonapre");

=head1 ACCESSORS

=head2 id_cuadro_onapre

  data_type: 'integer'
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_nullable: 0

=head2 id_proyecto

  data_type: 'integer'
  is_nullable: 1

=head2 id_accion_centralizada

  data_type: 'integer'
  is_nullable: 1

=head2 id_clasificacion_personal

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 tipo_cargo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=head2 jornada

  data_type: 'varchar'
  default_value: 'C'
  is_nullable: 0
  size: 1

=head2 sexo_vacante

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 cantidad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tipo

  data_type: 'varchar'
  default_value: 'PROYECTO'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_cuadro_onapre",
  { data_type => "integer", is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_nullable => 0 },
  "id_proyecto",
  { data_type => "integer", is_nullable => 1 },
  "id_accion_centralizada",
  { data_type => "integer", is_nullable => 1 },
  "id_clasificacion_personal",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "tipo_cargo",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
  "jornada",
  { data_type => "varchar", default_value => "C", is_nullable => 0, size => 1 },
  "sexo_vacante",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "cantidad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tipo",
  {
    data_type => "varchar",
    default_value => "PROYECTO",
    is_nullable => 0,
    size => 20,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cuadro_onapre>

=back

=cut

__PACKAGE__->set_primary_key("id_cuadro_onapre");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KDJOpSdSa4KJHMpdfz/gcg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
