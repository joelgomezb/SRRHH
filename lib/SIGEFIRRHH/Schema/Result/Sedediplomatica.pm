use utf8;
package SIGEFIRRHH::Schema::Result::Sedediplomatica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Sedediplomatica

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

=head1 TABLE: C<sedediplomatica>

=cut

__PACKAGE__->table("sedediplomatica");

=head1 ACCESSORS

=head2 id_sede_diplomatica

  data_type: 'integer'
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_sede

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 id_tipo_sede

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_viejo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cod_biblio

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 direccion

  data_type: 'text'
  is_nullable: 1

=head2 telefono1

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono2

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 fax

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 observacion

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_sede_diplomatica",
  { data_type => "integer", is_nullable => 0 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_sede",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "id_tipo_sede",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_viejo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cod_biblio",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "direccion",
  { data_type => "text", is_nullable => 1 },
  "telefono1",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono2",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "fax",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "observacion",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sede_diplomatica>

=back

=cut

__PACKAGE__->set_primary_key("id_sede_diplomatica");

=head1 UNIQUE CONSTRAINTS

=head2 C<sedediplomatica_cod>

=over 4

=item * L</cod_sede>

=back

=cut

__PACKAGE__->add_unique_constraint("sedediplomatica_cod", ["cod_sede"]);

=head1 RELATIONS

=head2 id_ciudad

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SIGEFIRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_sede

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tiposede>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_sede",
  "SIGEFIRRHH::Schema::Result::Tiposede",
  { id_tipo_sede => "id_tipo_sede" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RI4iviF8WC+0b16A69g6Hw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
