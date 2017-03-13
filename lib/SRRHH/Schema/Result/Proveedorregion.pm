use utf8;
package SRRHH::Schema::Result::Proveedorregion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Proveedorregion

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

=head1 TABLE: C<proveedorregion>

=cut

__PACKAGE__->table("proveedorregion");

=head1 ACCESSORS

=head2 id_proveedor_region

  data_type: 'integer'
  is_nullable: 0

=head2 id_proveedor_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_region

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_ticket

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=cut

__PACKAGE__->add_columns(
  "id_proveedor_region",
  { data_type => "integer", is_nullable => 0 },
  "id_proveedor_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_region",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "cod_ticket",
  { data_type => "varchar", is_nullable => 0, size => 6 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_proveedor_region>

=back

=cut

__PACKAGE__->set_primary_key("id_proveedor_region");

=head1 RELATIONS

=head2 id_region

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Region>

=cut

__PACKAGE__->belongs_to(
  "id_region",
  "SRRHH::Schema::Result::Region",
  { id_region => "id_region" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8x5Vr/eAR2wM9IfjeyVpEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
