use utf8;
package SRRHH::Schema::Result::Tipodotacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipodotacion

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

=head1 TABLE: C<tipodotacion>

=cut

__PACKAGE__->table("tipodotacion");

=head1 ACCESSORS

=head2 id_tipo_dotacion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_dotacion

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_dotacion",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_dotacion",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_dotacion>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_dotacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipodotacion_cod>

=over 4

=item * L</cod_tipo_dotacion>

=back

=cut

__PACKAGE__->add_unique_constraint("tipodotacion_cod", ["cod_tipo_dotacion"]);

=head1 RELATIONS

=head2 subtipodotacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Subtipodotacion>

=cut

__PACKAGE__->has_many(
  "subtipodotacions",
  "SRRHH::Schema::Result::Subtipodotacion",
  { "foreign.id_tipo_dotacion" => "self.id_tipo_dotacion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5BCmwVekNqeYnXdBvBUE3A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
