use utf8;
package SRRHH::Schema::Result::Sede;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Sede

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

=head1 TABLE: C<sede>

=cut

__PACKAGE__->table("sede");

=head1 ACCESSORS

=head2 id_sede

  data_type: 'integer'
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_cesta

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cod_sede

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 direccion

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_region

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_lugar_pago

  data_type: 'integer'
  is_nullable: 1

=head2 id_turno

  data_type: 'integer'
  is_nullable: 1

=head2 riesgo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 regimen

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 1
  size: 1

=head2 codigo_patronal

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "id_sede",
  { data_type => "integer", is_nullable => 0 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_cesta",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cod_sede",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "direccion",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_region",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_lugar_pago",
  { data_type => "integer", is_nullable => 1 },
  "id_turno",
  { data_type => "integer", is_nullable => 1 },
  "riesgo",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "regimen",
  { data_type => "varchar", default_value => "I", is_nullable => 1, size => 1 },
  "codigo_patronal",
  { data_type => "varchar", is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sede>

=back

=cut

__PACKAGE__->set_primary_key("id_sede");

=head1 UNIQUE CONSTRAINTS

=head2 C<sede_cod>

=over 4

=item * L</id_organismo>

=item * L</cod_sede>

=back

=cut

__PACKAGE__->add_unique_constraint("sede_cod", ["id_organismo", "cod_sede"]);

=head1 RELATIONS

=head2 dependencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SRRHH::Schema::Result::Dependencia",
  { "foreign.id_sede" => "self.id_sede" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historiconominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historiconomina>

=cut

__PACKAGE__->has_many(
  "historiconominas",
  "SRRHH::Schema::Result::Historiconomina",
  { "foreign.id_sede" => "self.id_sede" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_ciudad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_region

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Region>

=cut

__PACKAGE__->belongs_to(
  "id_region",
  "SRRHH::Schema::Result::Region",
  { id_region => "id_region" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 lugarpagoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Lugarpago>

=cut

__PACKAGE__->has_many(
  "lugarpagoes",
  "SRRHH::Schema::Result::Lugarpago",
  { "foreign.id_sede" => "self.id_sede" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SRRHH::Schema::Result::Registrocargo",
  { "foreign.id_sede" => "self.id_sede" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dhdYA2XkVPIraFsabZcKNQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
