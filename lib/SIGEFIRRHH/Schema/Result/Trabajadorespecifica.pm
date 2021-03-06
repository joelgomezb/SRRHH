use utf8;
package SIGEFIRRHH::Schema::Result::Trabajadorespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Trabajadorespecifica

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

=head1 TABLE: C<trabajadorespecifica>

=cut

__PACKAGE__->table("trabajadorespecifica");

=head1 ACCESSORS

=head2 id_trabajador_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_uel_especifica

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 100
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_trabajador_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_uel_especifica",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 100, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_trabajador_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_trabajador_especifica");

=head1 UNIQUE CONSTRAINTS

=head2 C<uk_trabajador_especifica>

=over 4

=item * L</id_uel_especifica>

=item * L</id_trabajador>

=item * L</anio>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "uk_trabajador_especifica",
  ["id_uel_especifica", "id_trabajador", "anio"],
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R4ORPVteKSaPnDBWVU/uBg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
