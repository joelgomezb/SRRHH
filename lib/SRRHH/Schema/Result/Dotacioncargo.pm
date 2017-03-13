use utf8;
package SRRHH::Schema::Result::Dotacioncargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Dotacioncargo

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

=head1 TABLE: C<dotacioncargo>

=cut

__PACKAGE__->table("dotacioncargo");

=head1 ACCESSORS

=head2 id_dotacion_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_subtipo_dotacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 unidad

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 cantidad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_dotacion_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_subtipo_dotacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "unidad",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "cantidad",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dotacion_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_dotacion_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<dotacioncargo_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</id_cargo>

=item * L</id_dotacion_cargo>

=item * L</id_subtipo_dotacion>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "dotacioncargo_cod",
  [
    "id_tipo_personal",
    "id_cargo",
    "id_dotacion_cargo",
    "id_subtipo_dotacion",
  ],
);

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_subtipo_dotacion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Subtipodotacion>

=cut

__PACKAGE__->belongs_to(
  "id_subtipo_dotacion",
  "SRRHH::Schema::Result::Subtipodotacion",
  { id_subtipo_dotacion => "id_subtipo_dotacion" },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tnn2SonOy7JzBIyuk6CdhA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
