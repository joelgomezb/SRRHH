use utf8;
package SRRHH::Schema::Result::Seguridadaniversario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Seguridadaniversario

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

=head1 TABLE: C<seguridadaniversario>

=cut

__PACKAGE__->table("seguridadaniversario");

=head1 ACCESSORS

=head2 id_seguridad_aniversario

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_ultimo

  data_type: 'date'
  is_nullable: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 id_tipo_personal

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_seguridad_aniversario",
  { data_type => "integer", is_nullable => 0 },
  "fecha_ultimo",
  { data_type => "date", is_nullable => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "id_tipo_personal",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_concepto",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_aniversario>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_aniversario");

=head1 UNIQUE CONSTRAINTS

=head2 C<seguridadaniversario_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</id_concepto>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "seguridadaniversario_cod",
  ["id_tipo_personal", "id_concepto"],
);

=head1 RELATIONS

=head2 id_concepto

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto",
  "SRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zFFx42kF+5mx1RPmepEX+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
