use utf8;
package SIGEFIRRHH::Schema::Result::VIntegral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VIntegral

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

=head1 TABLE: C<v_integral>

=cut

__PACKAGE__->table("v_integral");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_antiguedad

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 jubilacion

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  is_nullable: 1

=head2 nivelacion_sueldo_minimo

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_sueldo

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_prima_antig

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_prima_responsabilidad_jerarq

  data_type: 'double precision'
  is_nullable: 1

=head2 otras_retribuciones

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_otras_retribuciones_encargaduria

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_antiguedad_encargaduria

  data_type: 'double precision'
  is_nullable: 1

=head2 dif_otras_retribuciones

  data_type: 'double precision'
  is_nullable: 1

=head2 bono_compensatorio

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 reponsabilidad_jerarquia

  data_type: 'double precision'
  is_nullable: 1

=head2 normal

  data_type: 'double precision'
  is_nullable: 1

=head2 integral

  data_type: 'double precision'
  is_nullable: 1

=head2 bonos

  data_type: 'double precision'
  is_nullable: 1

=head2 aportescaja

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_antiguedad",
  { data_type => "date", is_nullable => 1 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "jubilacion",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", is_nullable => 1 },
  "nivelacion_sueldo_minimo",
  { data_type => "double precision", is_nullable => 1 },
  "dif_sueldo",
  { data_type => "double precision", is_nullable => 1 },
  "dif_prima_antig",
  { data_type => "double precision", is_nullable => 1 },
  "dif_prima_responsabilidad_jerarq",
  { data_type => "double precision", is_nullable => 1 },
  "otras_retribuciones",
  { data_type => "double precision", is_nullable => 1 },
  "dif_otras_retribuciones_encargaduria",
  { data_type => "double precision", is_nullable => 1 },
  "dif_antiguedad_encargaduria",
  { data_type => "double precision", is_nullable => 1 },
  "dif_otras_retribuciones",
  { data_type => "double precision", is_nullable => 1 },
  "bono_compensatorio",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "reponsabilidad_jerarquia",
  { data_type => "double precision", is_nullable => 1 },
  "normal",
  { data_type => "double precision", is_nullable => 1 },
  "integral",
  { data_type => "double precision", is_nullable => 1 },
  "bonos",
  { data_type => "double precision", is_nullable => 1 },
  "aportescaja",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2MU5yJ86fTENtFgpyzWW4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
