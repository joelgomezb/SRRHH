use utf8;
package SRRHH::Schema::Result::Usuariotipopersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Usuariotipopersonal

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

=head1 TABLE: C<usuariotipopersonal>

=cut

__PACKAGE__->table("usuariotipopersonal");

=head1 ACCESSORS

=head2 id_usuario_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_tipo_personal",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuario_tipo_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_usuario_tipo_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<usuariotipopersonal_cod>

=over 4

=item * L</id_usuario>

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("usuariotipopersonal_cod", ["id_usuario", "id_tipo_personal"]);

=head1 RELATIONS

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

=head2 id_usuario

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Usuario>

=cut

__PACKAGE__->belongs_to(
  "id_usuario",
  "SRRHH::Schema::Result::Usuario",
  { id_usuario => "id_usuario" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IAhsBo3cSg84S7xoZDtGIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
