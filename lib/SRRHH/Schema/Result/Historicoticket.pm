use utf8;
package SRRHH::Schema::Result::Historicoticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Historicoticket

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

=head1 TABLE: C<historicoticket>

=cut

__PACKAGE__->table("historicoticket");

=head1 ACCESSORS

=head2 id_historico_ticket

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

=head2 cantidad_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 denominacion_ticket

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_cobrar

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_descuentos_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 neto_cantidad_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 neto_monto_cobrar

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 especial

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 anio_proceso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes_proceso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cod_ticket

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_trabajador

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_proveedor_ticket

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_historico_ticket",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cantidad_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "denominacion_ticket",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_cobrar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_descuentos_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "neto_cantidad_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "neto_monto_cobrar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "especial",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "anio_proceso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes_proceso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cod_ticket",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_trabajador",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_proveedor_ticket",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_tipo_personal",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_dependencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historico_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_historico_ticket");

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_proveedor_ticket

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Proveedorticket>

=cut

__PACKAGE__->belongs_to(
  "id_proveedor_ticket",
  "SRRHH::Schema::Result::Proveedorticket",
  { id_proveedor_ticket => "id_proveedor_ticket" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6RQbdRYQQQ22hFRVATlHvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
