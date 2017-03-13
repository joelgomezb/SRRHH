use utf8;
package SIGEFIRRHH::Schema::Result::Guarderia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Guarderia

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

=head1 TABLE: C<guarderia>

=cut

__PACKAGE__->table("guarderia");

=head1 ACCESSORS

=head2 id_guarderia

  data_type: 'integer'
  is_nullable: 0

=head2 cod_guarderia

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 direccion

  data_type: 'text'
  is_nullable: 1

=head2 id_ciudad

  data_type: 'integer'
  is_nullable: 1

=head2 telefono1

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono2

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 persona_contacto

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 numero_rif

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 permiso_inam

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 beneficiario_cheque

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 seguro_medico

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 monto_inscripcion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_mensualidad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 2

=cut

__PACKAGE__->add_columns(
  "id_guarderia",
  { data_type => "integer", is_nullable => 0 },
  "cod_guarderia",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "direccion",
  { data_type => "text", is_nullable => 1 },
  "id_ciudad",
  { data_type => "integer", is_nullable => 1 },
  "telefono1",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono2",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "persona_contacto",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "numero_rif",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "permiso_inam",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "beneficiario_cheque",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "seguro_medico",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "monto_inscripcion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_mensualidad",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 2 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_guarderia>

=back

=cut

__PACKAGE__->set_primary_key("id_guarderia");

=head1 UNIQUE CONSTRAINTS

=head2 C<guarderia_cod>

=over 4

=item * L</cod_guarderia>

=back

=cut

__PACKAGE__->add_unique_constraint("guarderia_cod", ["cod_guarderia"]);

=head1 RELATIONS

=head2 guarderiafamiliar_id_guarderias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Guarderiafamiliar>

=cut

__PACKAGE__->has_many(
  "guarderiafamiliar_id_guarderias",
  "SIGEFIRRHH::Schema::Result::Guarderiafamiliar",
  { "foreign.id_guarderia" => "self.id_guarderia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 guarderiafamiliar_id_guarderias_2s

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Guarderiafamiliar>

=cut

__PACKAGE__->has_many(
  "guarderiafamiliar_id_guarderias_2s",
  "SIGEFIRRHH::Schema::Result::Guarderiafamiliar",
  { "foreign.id_guarderia" => "self.id_guarderia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pagoguarderias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Pagoguarderia>

=cut

__PACKAGE__->has_many(
  "pagoguarderias",
  "SIGEFIRRHH::Schema::Result::Pagoguarderia",
  { "foreign.id_guarderia" => "self.id_guarderia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:govt4bmvzQjZoviwNM4zOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
