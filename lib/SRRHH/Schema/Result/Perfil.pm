use utf8;
package SRRHH::Schema::Result::Perfil;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Perfil

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

=head1 TABLE: C<perfil>

=cut

__PACKAGE__->table("perfil");

=head1 ACCESSORS

=head2 id_perfil

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_cargo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 naturaleza

  data_type: 'text'
  is_nullable: 1

=head2 responsabilidades

  data_type: 'text'
  is_nullable: 1

=head2 propositos

  data_type: 'text'
  is_nullable: 1

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_perfil",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo_cargo",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "naturaleza",
  { data_type => "text", is_nullable => 1 },
  "responsabilidades",
  { data_type => "text", is_nullable => 1 },
  "propositos",
  { data_type => "text", is_nullable => 1 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_perfil>

=back

=cut

__PACKAGE__->set_primary_key("id_perfil");

=head1 UNIQUE CONSTRAINTS

=head2 C<perfil_cod>

=over 4

=item * L</id_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("perfil_cod", ["id_cargo"]);

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xL1Etm0S/1FHNU0iiB8OGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
