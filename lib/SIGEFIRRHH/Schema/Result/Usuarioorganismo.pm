use utf8;
package SIGEFIRRHH::Schema::Result::Usuarioorganismo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Usuarioorganismo

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

=head1 TABLE: C<usuarioorganismo>

=cut

__PACKAGE__->table("usuarioorganismo");

=head1 ACCESSORS

=head2 id_usuario_organismo

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario_organismo",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_organismo",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuario_organismo>

=back

=cut

__PACKAGE__->set_primary_key("id_usuario_organismo");

=head1 UNIQUE CONSTRAINTS

=head2 C<usuarioorganismo_cod>

=over 4

=item * L</id_usuario>

=item * L</id_organismo>

=back

=cut

__PACKAGE__->add_unique_constraint("usuarioorganismo_cod", ["id_usuario", "id_organismo"]);

=head1 RELATIONS

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ALdaXRT/2D+NO0DdcTfDeQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
