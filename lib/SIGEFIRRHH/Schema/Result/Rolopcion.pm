use utf8;
package SIGEFIRRHH::Schema::Result::Rolopcion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Rolopcion

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

=head1 TABLE: C<rolopcion>

=cut

__PACKAGE__->table("rolopcion");

=head1 ACCESSORS

=head2 id_rol_opcion

  data_type: 'integer'
  is_nullable: 0

=head2 id_rol

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_opcion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 consultar

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 agregar

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 modificar

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 eliminar

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 ejecutar

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_rol_opcion",
  { data_type => "integer", is_nullable => 0 },
  "id_rol",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_opcion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "consultar",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "agregar",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "modificar",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "eliminar",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "ejecutar",
  { data_type => "varchar", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_rol_opcion>

=back

=cut

__PACKAGE__->set_primary_key("id_rol_opcion");

=head1 UNIQUE CONSTRAINTS

=head2 C<rolopcion_cod>

=over 4

=item * L</id_rol>

=item * L</id_opcion>

=back

=cut

__PACKAGE__->add_unique_constraint("rolopcion_cod", ["id_rol", "id_opcion"]);

=head1 RELATIONS

=head2 id_opcion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Opcion>

=cut

__PACKAGE__->belongs_to(
  "id_opcion",
  "SIGEFIRRHH::Schema::Result::Opcion",
  { id_opcion => "id_opcion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "SET DEFAULT" },
);

=head2 id_rol

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Rol>

=cut

__PACKAGE__->belongs_to(
  "id_rol",
  "SIGEFIRRHH::Schema::Result::Rol",
  { id_rol => "id_rol" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ss7+r5h7Nnv2tJN3xhJbZQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
