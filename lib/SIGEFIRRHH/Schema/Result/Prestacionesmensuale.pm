use utf8;
package SIGEFIRRHH::Schema::Result::Prestacionesmensuale;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Prestacionesmensuale

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

=head1 TABLE: C<prestacionesmensuales>

=cut

__PACKAGE__->table("prestacionesmensuales");

=head1 ACCESSORS

=head2 id_prestaciones_mensuales

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  is_nullable: 0

=head2 dias_mensuales

  data_type: 'double precision'
  default_value: 5
  is_nullable: 0

=head2 dias_adicionales

  data_type: 'integer'
  is_nullable: 0

=head2 base_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 base_adicional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_prestaciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_adicional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 fideicomiso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 dias_cancelados

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_prestaciones_mensuales",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "integer", is_nullable => 0 },
  "dias_mensuales",
  { data_type => "double precision", default_value => 5, is_nullable => 0 },
  "dias_adicionales",
  { data_type => "integer", is_nullable => 0 },
  "base_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "base_adicional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_prestaciones",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_adicional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "fideicomiso",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "dias_cancelados",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_prestaciones_mensuales>

=back

=cut

__PACKAGE__->set_primary_key("id_prestaciones_mensuales");

=head1 UNIQUE CONSTRAINTS

=head2 C<prestmen_cod>

=over 4

=item * L</id_trabajador>

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint("prestmen_cod", ["id_trabajador", "anio", "mes"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:S5cE25hxUbWyAw8o66+qyQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
