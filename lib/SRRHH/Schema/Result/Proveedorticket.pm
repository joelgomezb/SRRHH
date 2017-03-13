use utf8;
package SRRHH::Schema::Result::Proveedorticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Proveedorticket

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

=head1 TABLE: C<proveedorticket>

=cut

__PACKAGE__->table("proveedorticket");

=head1 ACCESSORS

=head2 id_proveedor_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 cod_proveedor_ticket

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 direccion

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_proveedor_ticket",
  { data_type => "integer", is_nullable => 0 },
  "cod_proveedor_ticket",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "direccion",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_proveedor_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_proveedor_ticket");

=head1 UNIQUE CONSTRAINTS

=head2 C<proveedorticket_cod>

=over 4

=item * L</cod_proveedor_ticket>

=back

=cut

__PACKAGE__->add_unique_constraint("proveedorticket_cod", ["cod_proveedor_ticket"]);

=head1 RELATIONS

=head2 calculotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculoticket>

=cut

__PACKAGE__->has_many(
  "calculotickets",
  "SRRHH::Schema::Result::Calculoticket",
  { "foreign.id_proveedor_ticket" => "self.id_proveedor_ticket" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicoticket>

=cut

__PACKAGE__->has_many(
  "historicotickets",
  "SRRHH::Schema::Result::Historicoticket",
  { "foreign.id_proveedor_ticket" => "self.id_proveedor_ticket" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 proveedorubicacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Proveedorubicacion>

=cut

__PACKAGE__->has_many(
  "proveedorubicacions",
  "SRRHH::Schema::Result::Proveedorubicacion",
  { "foreign.id_proveedor_ticket" => "self.id_proveedor_ticket" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ofXR5wDCr4Xx+ZhfhUlqjg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
