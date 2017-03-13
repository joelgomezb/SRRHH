use utf8;
package SIGEFIRRHH::Schema::Result::Descuentoticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Descuentoticket

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

=head1 TABLE: C<descuentoticket>

=cut

__PACKAGE__->table("descuentoticket");

=head1 ACCESSORS

=head2 id_descuento_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 referencia_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 referencia_embargo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 referencia_ausencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descuento_ausencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descuento_reposo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descuento_permiso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descuento_vacaciones

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 descuento_otros

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 pagado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_descuento_ticket",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "referencia_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "referencia_embargo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "referencia_ausencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descuento_ausencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descuento_reposo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descuento_permiso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descuento_vacaciones",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "descuento_otros",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "pagado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_descuento_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_descuento_ticket");

=head1 UNIQUE CONSTRAINTS

=head2 C<descuentoticket_1>

=over 4

=item * L</id_trabajador>

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint("descuentoticket_1", ["id_trabajador", "anio", "mes"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gJ5+I6sOsK9LlXf21ecZvQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
