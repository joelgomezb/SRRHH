use utf8;
package SIGEFIRRHH::Schema::Result::VIntegralidad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VIntegralidad

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_integralidad>

=cut

__PACKAGE__->table("v_integralidad");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 situacion

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cod_uel

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 encargaduria

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 ingreso

  data_type: 'date'
  is_nullable: 1

=head2 vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 f_ant

  data_type: 'date'
  is_nullable: 1

=head2 a_servicio

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bv

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo

  data_type: 'double precision'
  is_nullable: 1

=head2 suplencia

  data_type: 'double precision'
  is_nullable: 1

=head2 labor_especial

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 pension

  data_type: 'double precision'
  is_nullable: 1

=head2 jubilacion

  data_type: 'double precision'
  is_nullable: 1

=head2 otras_ret

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_nocturno

  data_type: 'double precision'
  is_nullable: 1

=head2 jerarquia

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  is_nullable: 1

=head2 antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 normal

  data_type: 'double precision'
  is_nullable: 1

=head2 dias_bfa

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bvaca

  data_type: 'integer'
  is_nullable: 1

=head2 dias_bono

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "situacion",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cod_uel",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "encargaduria",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "ingreso",
  { data_type => "date", is_nullable => 1 },
  "vacaciones",
  { data_type => "date", is_nullable => 1 },
  "f_ant",
  { data_type => "date", is_nullable => 1 },
  "a_servicio",
  { data_type => "integer", is_nullable => 1 },
  "dias_bv",
  { data_type => "integer", is_nullable => 1 },
  "sueldo",
  { data_type => "double precision", is_nullable => 1 },
  "suplencia",
  { data_type => "double precision", is_nullable => 1 },
  "labor_especial",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "pension",
  { data_type => "double precision", is_nullable => 1 },
  "jubilacion",
  { data_type => "double precision", is_nullable => 1 },
  "otras_ret",
  { data_type => "double precision", is_nullable => 1 },
  "bono_nocturno",
  { data_type => "double precision", is_nullable => 1 },
  "jerarquia",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", is_nullable => 1 },
  "antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "normal",
  { data_type => "double precision", is_nullable => 1 },
  "dias_bfa",
  { data_type => "integer", is_nullable => 1 },
  "dias_bvaca",
  { data_type => "integer", is_nullable => 1 },
  "dias_bono",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MBssVg04DpMiuSqF4M0I7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
