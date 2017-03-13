use utf8;
package SIGEFIRRHH::Schema::Result::Acreencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Acreencia

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

=head1 TABLE: C<acreencia>

=cut

__PACKAGE__->table("acreencia");

=head1 ACCESSORS

=head2 id_acreencia

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_acreencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 monto_acreencia

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_acreencia",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_acreencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "monto_acreencia",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_acreencia>

=back

=cut

__PACKAGE__->set_primary_key("id_acreencia");

=head1 RELATIONS

=head2 id_tipo_acreencia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipoacreencia>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_acreencia",
  "SIGEFIRRHH::Schema::Result::Tipoacreencia",
  { id_tipo_acreencia => "id_tipo_acreencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kjsDKJnsTNmVur4GYHwGcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
