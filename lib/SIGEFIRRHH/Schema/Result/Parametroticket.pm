use utf8;
package SIGEFIRRHH::Schema::Result::Parametroticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametroticket

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

=head1 TABLE: C<parametroticket>

=cut

__PACKAGE__->table("parametroticket");

=head1 ACCESSORS

=head2 id_parametro_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 dias_habiles

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 incluye_sabados

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 deducir_ausencias

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cierre_ausencias

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 dias_fijos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_fijo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 monto_unico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 pago_nomina

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 pago_tarjeta

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 tickets_por_dia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 maximo_tickets

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo_basico_integral

  data_type: 'varchar'
  default_value: 'B'
  is_nullable: 0
  size: 1

=head2 sueldo_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 varias_denominaciones

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 distribucion

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_ticket",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "dias_habiles",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "incluye_sabados",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "deducir_ausencias",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cierre_ausencias",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "dias_fijos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_fijo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "monto_unico",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "pago_nomina",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "pago_tarjeta",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "tickets_por_dia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "maximo_tickets",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo_basico_integral",
  { data_type => "varchar", default_value => "B", is_nullable => 0, size => 1 },
  "sueldo_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "varias_denominaciones",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "distribucion",
  { data_type => "varchar", default_value => "D", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_ticket");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametroticket_cod>

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("parametroticket_cod", ["id_tipo_personal"]);

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YnkT2aH8zVfmrVX01eRkAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
