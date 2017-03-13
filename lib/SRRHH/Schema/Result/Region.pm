use utf8;
package SRRHH::Schema::Result::Region;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Region

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

=head1 TABLE: C<region>

=cut

__PACKAGE__->table("region");

=head1 ACCESSORS

=head2 id_region

  data_type: 'integer'
  is_nullable: 0

=head2 cod_region

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_region",
  { data_type => "integer", is_nullable => 0 },
  "cod_region",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_region>

=back

=cut

__PACKAGE__->set_primary_key("id_region");

=head1 RELATIONS

=head2 historiconominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historiconomina>

=cut

__PACKAGE__->has_many(
  "historiconominas",
  "SRRHH::Schema::Result::Historiconomina",
  { "foreign.id_region" => "self.id_region" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 proveedorregions

Type: has_many

Related object: L<SRRHH::Schema::Result::Proveedorregion>

=cut

__PACKAGE__->has_many(
  "proveedorregions",
  "SRRHH::Schema::Result::Proveedorregion",
  { "foreign.id_region" => "self.id_region" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargosaprobadoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargosaprobado>

=cut

__PACKAGE__->has_many(
  "registrocargosaprobadoes",
  "SRRHH::Schema::Result::Registrocargosaprobado",
  { "foreign.id_region" => "self.id_region" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sedes

Type: has_many

Related object: L<SRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->has_many(
  "sedes",
  "SRRHH::Schema::Result::Sede",
  { "foreign.id_region" => "self.id_region" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ejjq4LTMeIfFbIdvgDj+Cw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
