use utf8;
package SIGEFIRRHH::Schema::Result::Prestacionesonapre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Prestacionesonapre

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

=head1 TABLE: C<prestacionesonapre>

=cut

__PACKAGE__->table("prestacionesonapre");

=head1 ACCESSORS

=head2 id_prestaciones_onapre

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

=head2 fecha_prestaciones

  data_type: 'date'
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 primas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_fin_anio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_vacacional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 otros

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 sueldo_integral

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 dias_mensuales

  data_type: 'double precision'
  default_value: 5
  is_nullable: 0

=head2 dias_adicionales

  data_type: 'integer'
  is_nullable: 0

=head2 abono_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 base_adicional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 abono_adicional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_prestaciones_onapre",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "integer", is_nullable => 0 },
  "fecha_prestaciones",
  { data_type => "date", is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "primas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_fin_anio",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_vacacional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "otros",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "sueldo_integral",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "dias_mensuales",
  { data_type => "double precision", default_value => 5, is_nullable => 0 },
  "dias_adicionales",
  { data_type => "integer", is_nullable => 0 },
  "abono_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "base_adicional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "abono_adicional",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_prestaciones_onapre>

=back

=cut

__PACKAGE__->set_primary_key("id_prestaciones_onapre");

=head1 UNIQUE CONSTRAINTS

=head2 C<prestonapre_cod>

=over 4

=item * L</id_trabajador>

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint("prestonapre_cod", ["id_trabajador", "anio", "mes"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8B+zp5no6CAFAoYzzkBU7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
