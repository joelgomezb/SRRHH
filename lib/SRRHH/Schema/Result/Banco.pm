use utf8;
package SRRHH::Schema::Result::Banco;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Banco

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

=head1 TABLE: C<banco>

=cut

__PACKAGE__->table("banco");

=head1 ACCESSORS

=head2 id_banco

  data_type: 'integer'
  is_nullable: 0

=head2 cod_banco

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 identificador_ahorro

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 identificador_corriente

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 correlativo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_banco",
  { data_type => "integer", is_nullable => 0 },
  "cod_banco",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "identificador_ahorro",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "identificador_corriente",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "correlativo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_banco>

=back

=cut

__PACKAGE__->set_primary_key("id_banco");

=head1 UNIQUE CONSTRAINTS

=head2 C<banco_cod>

=over 4

=item * L</cod_banco>

=back

=cut

__PACKAGE__->add_unique_constraint("banco_cod", ["cod_banco"]);

=head1 RELATIONS

=head2 cuentabancoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Cuentabanco>

=cut

__PACKAGE__->has_many(
  "cuentabancoes",
  "SRRHH::Schema::Result::Cuentabanco",
  { "foreign.id_banco" => "self.id_banco" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 disquetes

Type: has_many

Related object: L<SRRHH::Schema::Result::Disquete>

=cut

__PACKAGE__->has_many(
  "disquetes",
  "SRRHH::Schema::Result::Disquete",
  { "foreign.id_banco" => "self.id_banco" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_banco_fids

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_banco_fids",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_banco_fid" => "self.id_banco" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_banco_lphs

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_banco_lphs",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_banco_lph" => "self.id_banco" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_banco_nominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_banco_nominas",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_banco_nomina" => "self.id_banco" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OPmf0mxMcf6OH84T6NSDRA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
