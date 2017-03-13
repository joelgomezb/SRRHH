use utf8;
package SRRHH::Schema::Result::Jerarquiacategoriadocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Jerarquiacategoriadocente

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

=head1 TABLE: C<jerarquiacategoriadocente>

=cut

__PACKAGE__->table("jerarquiacategoriadocente");

=head1 ACCESSORS

=head2 id_jerarquia_categoria_docente

  data_type: 'integer'
  is_nullable: 0

=head2 id_jerarquia_docente

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_categoria_docente

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_jerarquia_categoria_docente",
  { data_type => "integer", is_nullable => 0 },
  "id_jerarquia_docente",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_categoria_docente",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_jerarquia_categoria_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_jerarquia_categoria_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<jerarquiacategoriadocente_cod>

=over 4

=item * L</id_jerarquia_docente>

=item * L</id_categoria_docente>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "jerarquiacategoriadocente_cod",
  ["id_jerarquia_docente", "id_categoria_docente"],
);

=head1 RELATIONS

=head2 id_categoria_docente

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Categoriadocente>

=cut

__PACKAGE__->belongs_to(
  "id_categoria_docente",
  "SRRHH::Schema::Result::Categoriadocente",
  { id_categoria_docente => "id_categoria_docente" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_jerarquia_docente

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Jerarquiadocente>

=cut

__PACKAGE__->belongs_to(
  "id_jerarquia_docente",
  "SRRHH::Schema::Result::Jerarquiadocente",
  { id_jerarquia_docente => "id_jerarquia_docente" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Z/Fl4Yw5Vah50XLASCu80A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
