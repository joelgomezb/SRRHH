use utf8;
package SIGEFIRRHH::Schema::Result::Rol;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Rol

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

=head1 TABLE: C<rol>

=cut

__PACKAGE__->table("rol");

=head1 ACCESSORS

=head2 id_rol

  data_type: 'integer'
  is_nullable: 0

=head2 codigo_rol

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_rol",
  { data_type => "integer", is_nullable => 0 },
  "codigo_rol",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_rol>

=back

=cut

__PACKAGE__->set_primary_key("id_rol");

=head1 UNIQUE CONSTRAINTS

=head2 C<rol_cod>

=over 4

=item * L</codigo_rol>

=back

=cut

__PACKAGE__->add_unique_constraint("rol_cod", ["codigo_rol"]);

=head1 RELATIONS

=head2 rolopcions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Rolopcion>

=cut

__PACKAGE__->has_many(
  "rolopcions",
  "SIGEFIRRHH::Schema::Result::Rolopcion",
  { "foreign.id_rol" => "self.id_rol" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariorols

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariorol>

=cut

__PACKAGE__->has_many(
  "usuariorols",
  "SIGEFIRRHH::Schema::Result::Usuariorol",
  { "foreign.id_rol" => "self.id_rol" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F5Dbpwc0s52Ra1Ul5YJO7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
