use utf8;
package SIGEFIRRHH::Schema::Result::Accionespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Accionespecifica

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

=head1 TABLE: C<accionespecifica>

=cut

__PACKAGE__->table("accionespecifica");

=head1 ACCESSORS

=head2 id_accion_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 cod_accion_especifica

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 tipo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 denominacion

  data_type: 'varchar'
  is_nullable: 0
  size: 500

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_proyecto

  data_type: 'integer'
  is_nullable: 1

=head2 id_accion_centralizada

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_accion_especifica",
  { data_type => "integer", is_nullable => 0 },
  "cod_accion_especifica",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "tipo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "denominacion",
  { data_type => "varchar", is_nullable => 0, size => 500 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_proyecto",
  { data_type => "integer", is_nullable => 1 },
  "id_accion_centralizada",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_accion_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_accion_especifica");

=head1 RELATIONS

=head2 uelespecificas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Uelespecifica>

=cut

__PACKAGE__->has_many(
  "uelespecificas",
  "SIGEFIRRHH::Schema::Result::Uelespecifica",
  { "foreign.id_accion_especifica" => "self.id_accion_especifica" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:verEjEbuGtn3V+0uNwlpNg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
