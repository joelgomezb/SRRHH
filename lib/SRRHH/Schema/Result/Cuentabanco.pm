use utf8;
package SRRHH::Schema::Result::Cuentabanco;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cuentabanco

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

=head1 TABLE: C<cuentabanco>

=cut

__PACKAGE__->table("cuentabanco");

=head1 ACCESSORS

=head2 id_cuenta_banco

  data_type: 'integer'
  is_nullable: 0

=head2 id_banco

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_cuenta_banco

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 agencia

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_cuenta_banco",
  { data_type => "integer", is_nullable => 0 },
  "id_banco",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_cuenta_banco",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "agencia",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cuenta_banco>

=back

=cut

__PACKAGE__->set_primary_key("id_cuenta_banco");

=head1 UNIQUE CONSTRAINTS

=head2 C<cuentabanco_cod>

=over 4

=item * L</cod_cuenta_banco>

=back

=cut

__PACKAGE__->add_unique_constraint("cuentabanco_cod", ["cod_cuenta_banco"]);

=head1 RELATIONS

=head2 id_banco

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco",
  "SRRHH::Schema::Result::Banco",
  { id_banco => "id_banco" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_ciudad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SjEeTCXnWVSiTChLJuLvhA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
