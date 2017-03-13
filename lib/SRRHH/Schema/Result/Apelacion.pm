use utf8;
package SRRHH::Schema::Result::Apelacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Apelacion

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

=head1 TABLE: C<apelacion>

=cut

__PACKAGE__->table("apelacion");

=head1 ACCESSORS

=head2 id_apelacion

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 0

=head2 resultado

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cedula_supervisor

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_supervisor

  data_type: 'varchar'
  default_value: 'H'
  is_nullable: 0
  size: 50

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_apelacion",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
  "resultado",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cedula_supervisor",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_supervisor",
  { data_type => "varchar", default_value => "H", is_nullable => 0, size => 50 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_apelacion>

=back

=cut

__PACKAGE__->set_primary_key("id_apelacion");

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:e4Fn5pjpqywFJF5qQNP3xg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
