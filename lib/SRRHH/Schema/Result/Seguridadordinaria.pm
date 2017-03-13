use utf8;
package SRRHH::Schema::Result::Seguridadordinaria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Seguridadordinaria

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

=head1 TABLE: C<seguridadordinaria>

=cut

__PACKAGE__->table("seguridadordinaria");

=head1 ACCESSORS

=head2 id_seguridad_ordinaria

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 id_grupo_nomina

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 cierre_diplomatico

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_seguridad_ordinaria",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "id_grupo_nomina",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "cierre_diplomatico",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_ordinaria>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_ordinaria");

=head1 UNIQUE CONSTRAINTS

=head2 C<seguridadordinaria_cod>

=over 4

=item * L</id_grupo_nomina>

=item * L</anio>

=item * L</mes>

=item * L</semana_quincena>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "seguridadordinaria_cod",
  ["id_grupo_nomina", "anio", "mes", "semana_quincena"],
);

=head1 RELATIONS

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RGNYdjypXODKkNbJi8Ymog


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;