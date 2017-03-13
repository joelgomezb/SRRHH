use utf8;
package SIGEFIRRHH::Schema::Result::Credencial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Credencial

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

=head1 TABLE: C<credencial>

=cut

__PACKAGE__->table("credencial");

=head1 ACCESSORS

=head2 id_credencial

  data_type: 'integer'
  is_nullable: 0

=head2 id_subtipo_credencial

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 numero

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 color

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 fecha_entrega

  data_type: 'date'
  is_nullable: 1

=head2 fecha_retiro

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 motivo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_credencial",
  { data_type => "integer", is_nullable => 0 },
  "id_subtipo_credencial",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "numero",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "color",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "fecha_entrega",
  { data_type => "date", is_nullable => 1 },
  "fecha_retiro",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "motivo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_credencial>

=back

=cut

__PACKAGE__->set_primary_key("id_credencial");

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_subtipo_credencial

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Subtipocredencial>

=cut

__PACKAGE__->belongs_to(
  "id_subtipo_credencial",
  "SIGEFIRRHH::Schema::Result::Subtipocredencial",
  { id_subtipo_credencial => "id_subtipo_credencial" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7L9LrpJXhRkJoxcbfEfCJQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
