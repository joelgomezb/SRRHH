use utf8;
package SRRHH::Schema::Result::Dotaciontrabajador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Dotaciontrabajador

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

=head1 TABLE: C<dotaciontrabajador>

=cut

__PACKAGE__->table("dotaciontrabajador");

=head1 ACCESSORS

=head2 id_dotacion_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_subtipo_dotacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 talla

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cantidad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_dotacion_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_subtipo_dotacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "talla",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cantidad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dotacion_trabajador>

=back

=cut

__PACKAGE__->set_primary_key("id_dotacion_trabajador");

=head1 RELATIONS

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

=head2 id_trabajador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mLRpF9iEoip7aF7ltehxFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
