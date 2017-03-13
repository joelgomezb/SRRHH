use utf8;
package SIGEFIRRHH::Schema::Result::Denominacionticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Denominacionticket

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

=head1 TABLE: C<denominacionticket>

=cut

__PACKAGE__->table("denominacionticket");

=head1 ACCESSORS

=head2 id_denominacion_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_proveedor_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 valor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tickets_por_dia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 costo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_denominacion_ticket",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_proveedor_ticket",
  { data_type => "integer", is_nullable => 0 },
  "valor",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tickets_por_dia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "estatus",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "costo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_denominacion_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_denominacion_ticket");

=head1 UNIQUE CONSTRAINTS

=head2 C<denominacionticket_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</valor>

=back

=cut

__PACKAGE__->add_unique_constraint("denominacionticket_cod", ["id_tipo_personal", "valor"]);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SEarRYDLM0BrABA81Wxf+g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
