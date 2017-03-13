use utf8;
package SIGEFIRRHH::Schema::Result::Cajaahorro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cajaahorro

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

=head1 TABLE: C<cajaahorro>

=cut

__PACKAGE__->table("cajaahorro");

=head1 ACCESSORS

=head2 id_caja_ahorro

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 porcentaje_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 aporte_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 aporte_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_retiros

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 acumulado_haberes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_caja_ahorro",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "porcentaje_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "aporte_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "aporte_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_retiros",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "acumulado_haberes",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_caja_ahorro>

=back

=cut

__PACKAGE__->set_primary_key("id_caja_ahorro");

=head1 UNIQUE CONSTRAINTS

=head2 C<cajaahorrocod>

=over 4

=item * L</id_trabajador>

=item * L</id_concepto_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "cajaahorrocod",
  ["id_trabajador", "id_concepto_tipo_personal"],
);

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4P4Pqb1n7O7VFvjja1nPKQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
