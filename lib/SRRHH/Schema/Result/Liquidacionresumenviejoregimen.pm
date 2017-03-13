use utf8;
package SRRHH::Schema::Result::Liquidacionresumenviejoregimen;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Liquidacionresumenviejoregimen

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

=head1 TABLE: C<liquidacionresumenviejoregimen>

=cut

__PACKAGE__->table("liquidacionresumenviejoregimen");

=head1 ACCESSORS

=head2 id_liquidacion_resumen_viejo_regimen

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 sueldo_transferencia

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 aniosservicios

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_prestaciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_interes_acumulado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_anticipo_acumulado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_transferencia

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 saldo_al_18061997

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_interes_adicional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_liquidacion_resumen_viejo_regimen",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "sueldo_transferencia",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "aniosservicios",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_prestaciones",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_interes_acumulado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_anticipo_acumulado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_transferencia",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "saldo_al_18061997",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_interes_adicional",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_liquidacion_resumen_viejo_regimen>

=back

=cut

__PACKAGE__->set_primary_key("id_liquidacion_resumen_viejo_regimen");

=head1 RELATIONS

=head2 id_trabajador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ipq5go8ibRDcOHwhDT/OcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
