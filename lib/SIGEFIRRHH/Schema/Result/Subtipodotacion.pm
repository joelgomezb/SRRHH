use utf8;
package SIGEFIRRHH::Schema::Result::Subtipodotacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Subtipodotacion

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

=head1 TABLE: C<subtipodotacion>

=cut

__PACKAGE__->table("subtipodotacion");

=head1 ACCESSORS

=head2 id_subtipo_dotacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_dotacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_subtipo

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 sexo

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 costo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 color

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_subtipo_dotacion",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_dotacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_subtipo",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "sexo",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "costo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "color",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_subtipo_dotacion>

=back

=cut

__PACKAGE__->set_primary_key("id_subtipo_dotacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<subtipodotacion_cod>

=over 4

=item * L</cod_subtipo>

=back

=cut

__PACKAGE__->add_unique_constraint("subtipodotacion_cod", ["cod_subtipo"]);

=head1 RELATIONS

=head2 dotacioncargoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dotacioncargo>

=cut

__PACKAGE__->has_many(
  "dotacioncargoes",
  "SIGEFIRRHH::Schema::Result::Dotacioncargo",
  { "foreign.id_subtipo_dotacion" => "self.id_subtipo_dotacion" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dotaciontrabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dotaciontrabajador>

=cut

__PACKAGE__->has_many(
  "dotaciontrabajadors",
  "SIGEFIRRHH::Schema::Result::Dotaciontrabajador",
  { "foreign.id_subtipo_dotacion" => "self.id_subtipo_dotacion" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_tipo_dotacion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipodotacion>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_dotacion",
  "SIGEFIRRHH::Schema::Result::Tipodotacion",
  { id_tipo_dotacion => "id_tipo_dotacion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vtOH8RAhekNG9uj4o+KSUw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
