use utf8;
package SRRHH::Schema::Result::Subtipocredencial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Subtipocredencial

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

=head1 TABLE: C<subtipocredencial>

=cut

__PACKAGE__->table("subtipocredencial");

=head1 ACCESSORS

=head2 id_subtipo_credencial

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_credencial

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

=cut

__PACKAGE__->add_columns(
  "id_subtipo_credencial",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_credencial",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_subtipo",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_subtipo_credencial>

=back

=cut

__PACKAGE__->set_primary_key("id_subtipo_credencial");

=head1 UNIQUE CONSTRAINTS

=head2 C<subtipocredencial_cod>

=over 4

=item * L</cod_subtipo>

=back

=cut

__PACKAGE__->add_unique_constraint("subtipocredencial_cod", ["cod_subtipo"]);

=head1 RELATIONS

=head2 credencials

Type: has_many

Related object: L<SRRHH::Schema::Result::Credencial>

=cut

__PACKAGE__->has_many(
  "credencials",
  "SRRHH::Schema::Result::Credencial",
  { "foreign.id_subtipo_credencial" => "self.id_subtipo_credencial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_tipo_credencial

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipocredencial>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_credencial",
  "SRRHH::Schema::Result::Tipocredencial",
  { id_tipo_credencial => "id_tipo_credencial" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yDfq93JZEVrPKOEohuegZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
