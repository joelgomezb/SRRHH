use utf8;
package SIGEFIRRHH::Schema::Result::VAcumuladoMensualOr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VAcumuladoMensualOr

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

=head1 TABLE: C<v_acumulado_mensual_or>

=cut

__PACKAGE__->table("v_acumulado_mensual_or");

=head1 ACCESSORS

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

=head2 nombreunidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 ingreso

  data_type: 'date'
  is_nullable: 1

=head2 ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 quincenal

  data_type: 'double precision'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "ingreso",
  { data_type => "date", is_nullable => 1 },
  "ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "vacaciones",
  { data_type => "date", is_nullable => 1 },
  "quincenal",
  { data_type => "double precision", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7AdlsB2nW7gdBnFDhqKM1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
