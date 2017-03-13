use utf8;
package SRRHH::Schema::Result::Cuentacontable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cuentacontable

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

=head1 TABLE: C<cuentacontable>

=cut

__PACKAGE__->table("cuentacontable");

=head1 ACCESSORS

=head2 id_cuenta_contable

  data_type: 'integer'
  is_nullable: 0

=head2 cod_contable

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 tipo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 indicador

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_cuenta_contable",
  { data_type => "integer", is_nullable => 0 },
  "cod_contable",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "tipo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "indicador",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cuenta_contable>

=back

=cut

__PACKAGE__->set_primary_key("id_cuenta_contable");

=head1 UNIQUE CONSTRAINTS

=head2 C<cuentacontable_cod>

=over 4

=item * L</cod_contable>

=back

=cut

__PACKAGE__->add_unique_constraint("cuentacontable_cod", ["cod_contable"]);

=head1 RELATIONS

=head2 conceptocuentacontables

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptocuentacontable>

=cut

__PACKAGE__->has_many(
  "conceptocuentacontables",
  "SRRHH::Schema::Result::Conceptocuentacontable",
  { "foreign.id_cuenta_contable" => "self.id_cuenta_contable" },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:89aBzJxb9zG5qpNzR2ZiGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
