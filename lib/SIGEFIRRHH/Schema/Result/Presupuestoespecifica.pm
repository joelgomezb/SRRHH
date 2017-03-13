use utf8;
package SIGEFIRRHH::Schema::Result::Presupuestoespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Presupuestoespecifica

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

=head1 TABLE: C<presupuestoespecifica>

=cut

__PACKAGE__->table("presupuestoespecifica");

=head1 ACCESSORS

=head2 id_presupuesto_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_uel_especifica

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cuenta_presupuesto

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_presupuestado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_ejecutado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_presupuesto_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_uel_especifica",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cuenta_presupuesto",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_presupuestado",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_ejecutado",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_presupuesto_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_presupuesto_especifica");

=head1 UNIQUE CONSTRAINTS

=head2 C<preespecifica_cod>

=over 4

=item * L</anio>

=item * L</id_uel_especifica>

=item * L</id_cuenta_presupuesto>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "preespecifica_cod",
  ["anio", "id_uel_especifica", "id_cuenta_presupuesto"],
);

=head1 RELATIONS

=head2 id_cuenta_presupuesto

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cuentapresupuesto>

=cut

__PACKAGE__->belongs_to(
  "id_cuenta_presupuesto",
  "SIGEFIRRHH::Schema::Result::Cuentapresupuesto",
  { id_cuenta_presupuesto => "id_cuenta_presupuesto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_uel_especifica

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Uelespecifica>

=cut

__PACKAGE__->belongs_to(
  "id_uel_especifica",
  "SIGEFIRRHH::Schema::Result::Uelespecifica",
  { id_uel_especifica => "id_uel_especifica" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C5oYCV7aqhaIeeMw/nI/CA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
