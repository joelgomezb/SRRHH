use utf8;
package SIGEFIRRHH::Schema::Result::Usuariounidadfuncional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Usuariounidadfuncional

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

=head1 TABLE: C<usuariounidadfuncional>

=cut

__PACKAGE__->table("usuariounidadfuncional");

=head1 ACCESSORS

=head2 id_usuario_unidad_funcional

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_unidad_funcional

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario_unidad_funcional",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_unidad_funcional",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuario_unidad_funcional>

=back

=cut

__PACKAGE__->set_primary_key("id_usuario_unidad_funcional");

=head1 UNIQUE CONSTRAINTS

=head2 C<usuariounidadfuncional_cod>

=over 4

=item * L</id_usuario>

=item * L</id_unidad_funcional>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "usuariounidadfuncional_cod",
  ["id_usuario", "id_unidad_funcional"],
);

=head1 RELATIONS

=head2 id_unidad_funcional

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Unidadfuncional>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_funcional",
  "SIGEFIRRHH::Schema::Result::Unidadfuncional",
  { id_unidad_funcional => "id_unidad_funcional" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_usuario

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Usuario>

=cut

__PACKAGE__->belongs_to(
  "id_usuario",
  "SIGEFIRRHH::Schema::Result::Usuario",
  { id_usuario => "id_usuario" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lSU/5o7bHU0xRYjJPBmUng


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
