use utf8;
package SRRHH::Schema::Result::Usuariorol;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Usuariorol

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

=head1 TABLE: C<usuariorol>

=cut

__PACKAGE__->table("usuariorol");

=head1 ACCESSORS

=head2 id_usuario_rol

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_rol

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario_rol",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_rol",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuario_rol>

=back

=cut

__PACKAGE__->set_primary_key("id_usuario_rol");

=head1 UNIQUE CONSTRAINTS

=head2 C<usuariorol_cod>

=over 4

=item * L</id_usuario>

=item * L</id_rol>

=back

=cut

__PACKAGE__->add_unique_constraint("usuariorol_cod", ["id_usuario", "id_rol"]);

=head1 RELATIONS

=head2 id_rol

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Rol>

=cut

__PACKAGE__->belongs_to(
  "id_rol",
  "SRRHH::Schema::Result::Rol",
  { id_rol => "id_rol" },
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

=head2 id_usuario_2

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Usuario>

=cut

__PACKAGE__->belongs_to(
  "id_usuario_2",
  "SRRHH::Schema::Result::Usuario",
  { id_usuario => "id_usuario" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:17:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cFaXjf4h2wA7FgAsXDknAw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
