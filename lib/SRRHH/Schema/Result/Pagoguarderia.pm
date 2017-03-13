use utf8;
package SRRHH::Schema::Result::Pagoguarderia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Pagoguarderia

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

=head1 TABLE: C<pagoguarderia>

=cut

__PACKAGE__->table("pagoguarderia");

=head1 ACCESSORS

=head2 id_pago_guarderia

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_familiar

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_guarderia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 inscripcion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_pago_guarderia",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_familiar",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_guarderia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "integer", is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "inscripcion",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_pago_guarderia>

=back

=cut

__PACKAGE__->set_primary_key("id_pago_guarderia");

=head1 UNIQUE CONSTRAINTS

=head2 C<pagoguarderia_cod>

=over 4

=item * L</id_personal>

=item * L</id_familiar>

=item * L</anio>

=item * L</mes>

=item * L</inscripcion>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "pagoguarderia_cod",
  ["id_personal", "id_familiar", "anio", "mes", "inscripcion"],
);

=head1 RELATIONS

=head2 id_familiar

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Familiar>

=cut

__PACKAGE__->belongs_to(
  "id_familiar",
  "SRRHH::Schema::Result::Familiar",
  { id_familiar => "id_familiar" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_guarderia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Guarderia>

=cut

__PACKAGE__->belongs_to(
  "id_guarderia",
  "SRRHH::Schema::Result::Guarderia",
  { id_guarderia => "id_guarderia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MJ5E56snO+CLWZZgLmIq7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
