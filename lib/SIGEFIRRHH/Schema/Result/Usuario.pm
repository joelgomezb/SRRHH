use utf8;
package SIGEFIRRHH::Schema::Result::Usuario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Usuario

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

=head1 TABLE: C<usuario>

=cut

__PACKAGE__->table("usuario");

=head1 ACCESSORS

=head2 id_usuario

  data_type: 'integer'
  is_nullable: 0

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 250

=head2 administrador

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 apellidos

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 nombres

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 activo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cambio_password

  data_type: 'date'
  default_value: current_timestamp
  is_nullable: 1
  original: {default_value => \"now()"}

=head2 fecha_vence

  data_type: 'date'
  is_nullable: 1

=head2 intentos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario",
  { data_type => "integer", is_nullable => 0 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 250 },
  "administrador",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "apellidos",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "nombres",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "activo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "id_organismo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cambio_password",
  {
    data_type     => "date",
    default_value => \"current_timestamp",
    is_nullable   => 1,
    original      => { default_value => \"now()" },
  },
  "fecha_vence",
  { data_type => "date", is_nullable => 1 },
  "intentos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_usuario>

=back

=cut

__PACKAGE__->set_primary_key("id_usuario");

=head1 UNIQUE CONSTRAINTS

=head2 C<usuario_cod>

=over 4

=item * L</usuario>

=back

=cut

__PACKAGE__->add_unique_constraint("usuario_cod", ["usuario"]);

=head1 RELATIONS

=head2 usuarioorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuarioorganismo>

=cut

__PACKAGE__->has_many(
  "usuarioorganismoes",
  "SIGEFIRRHH::Schema::Result::Usuarioorganismo",
  { "foreign.id_usuario" => "self.id_usuario" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariorols

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariorol>

=cut

__PACKAGE__->has_many(
  "usuariorols",
  "SIGEFIRRHH::Schema::Result::Usuariorol",
  { "foreign.id_usuario" => "self.id_usuario" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariorols_2s

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariorol>

=cut

__PACKAGE__->has_many(
  "usuariorols_2s",
  "SIGEFIRRHH::Schema::Result::Usuariorol",
  { "foreign.id_usuario" => "self.id_usuario" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariotipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariotipopersonal>

=cut

__PACKAGE__->has_many(
  "usuariotipopersonals",
  "SIGEFIRRHH::Schema::Result::Usuariotipopersonal",
  { "foreign.id_usuario" => "self.id_usuario" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariounidadfuncionals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuariounidadfuncional>

=cut

__PACKAGE__->has_many(
  "usuariounidadfuncionals",
  "SIGEFIRRHH::Schema::Result::Usuariounidadfuncional",
  { "foreign.id_usuario" => "self.id_usuario" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:55:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m4JXY7LybctpPTDaAXfbXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
