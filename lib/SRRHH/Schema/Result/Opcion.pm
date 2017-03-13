use utf8;
package SRRHH::Schema::Result::Opcion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Opcion

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

=head1 TABLE: C<opcion>

=cut

__PACKAGE__->table("opcion");

=head1 ACCESSORS

=head2 id_opcion

  data_type: 'integer'
  is_nullable: 0

=head2 codigo_opcion

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 75

=head2 ruta

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 tipo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_opcion",
  { data_type => "integer", is_nullable => 0 },
  "codigo_opcion",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 75 },
  "ruta",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "tipo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_opcion>

=back

=cut

__PACKAGE__->set_primary_key("id_opcion");

=head1 UNIQUE CONSTRAINTS

=head2 C<opcion_cod>

=over 4

=item * L</codigo_opcion>

=back

=cut

__PACKAGE__->add_unique_constraint("opcion_cod", ["codigo_opcion"]);

=head1 RELATIONS

=head2 rolopcions

Type: has_many

Related object: L<SRRHH::Schema::Result::Rolopcion>

=cut

__PACKAGE__->has_many(
  "rolopcions",
  "SRRHH::Schema::Result::Rolopcion",
  { "foreign.id_opcion" => "self.id_opcion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eqOgzMX1Lo4uOl9YnFKOWQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
