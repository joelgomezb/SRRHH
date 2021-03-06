use utf8;
package SIGEFIRRHH::Schema::Result::Liquidacioninteresviejoregimen;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Liquidacioninteresviejoregimen

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

=head1 TABLE: C<liquidacioninteresviejoregimen>

=cut

__PACKAGE__->table("liquidacioninteresviejoregimen");

=head1 ACCESSORS

=head2 id_liquidacion_interes_viejo_regimen

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo_integral

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tasa_interes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 anios_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_prestaciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_capital

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_interes_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_interes_acumulado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_anticipo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_anticipo_acumulado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_liquidacion_interes_viejo_regimen",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo_integral",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tasa_interes",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_prestaciones",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_capital",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_interes_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_interes_acumulado",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_anticipo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_anticipo_acumulado",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_liquidacion_interes_viejo_regimen>

=back

=cut

__PACKAGE__->set_primary_key("id_liquidacion_interes_viejo_regimen");

=head1 RELATIONS

=head2 id_trabajador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:40f8FR4OiRWUlEsEA/RQtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
