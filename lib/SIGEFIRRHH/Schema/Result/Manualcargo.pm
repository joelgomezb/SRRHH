use utf8;
package SIGEFIRRHH::Schema::Result::Manualcargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Manualcargo

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

=head1 TABLE: C<manualcargo>

=cut

__PACKAGE__->table("manualcargo");

=head1 ACCESSORS

=head2 id_manual_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_manual_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 0

=head2 id_tabulador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_manual

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=head2 multiple_descripcion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 cod_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 proceso_seleccion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 tipo_cargo

  data_type: 'varchar'
  default_value: 'TA'
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "id_manual_cargo",
  { data_type => "integer", is_nullable => 0 },
  "cod_manual_cargo",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 0 },
  "id_tabulador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo_manual",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
  "multiple_descripcion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "cod_mpd",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "proceso_seleccion",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "tipo_cargo",
  { data_type => "varchar", default_value => "TA", is_nullable => 1, size => 2 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_manual_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_manual_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<manualcargo_cod>

=over 4

=item * L</id_organismo>

=item * L</cod_manual_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("manualcargo_cod", ["id_organismo", "cod_manual_cargo"]);

=head1 RELATIONS

=head2 cargoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->has_many(
  "cargoes",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { "foreign.id_manual_cargo" => "self.id_manual_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tabulador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tabulador>

=cut

__PACKAGE__->belongs_to(
  "id_tabulador",
  "SIGEFIRRHH::Schema::Result::Tabulador",
  { id_tabulador => "id_tabulador" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 manualpersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Manualpersonal>

=cut

__PACKAGE__->has_many(
  "manualpersonals",
  "SIGEFIRRHH::Schema::Result::Manualpersonal",
  { "foreign.id_manual_cargo" => "self.id_manual_cargo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rBlTKSw9mSxMAfHIwfX4hw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
