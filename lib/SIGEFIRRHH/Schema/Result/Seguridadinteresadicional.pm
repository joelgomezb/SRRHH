use utf8;
package SIGEFIRRHH::Schema::Result::Seguridadinteresadicional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Seguridadinteresadicional

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

=head1 TABLE: C<seguridadinteresadicional>

=cut

__PACKAGE__->table("seguridadinteresadicional");

=head1 ACCESSORS

=head2 id_seguridad_interes_adicional

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

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

=head2 tasa_aplicada

  data_type: 'double precision'
  is_nullable: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=cut

__PACKAGE__->add_columns(
  "id_seguridad_interes_adicional",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tasa_aplicada",
  { data_type => "double precision", is_nullable => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 25 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_interes_adicional>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_interes_adicional");

=head1 UNIQUE CONSTRAINTS

=head2 C<seguridadinteresadicional_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "seguridadinteresadicional_cod",
  ["id_tipo_personal", "anio", "mes"],
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i/FrYCtvCvu5y0nej++Lfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
