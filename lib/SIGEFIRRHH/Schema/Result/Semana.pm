use utf8;
package SIGEFIRRHH::Schema::Result::Semana;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Semana

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

=head1 TABLE: C<semana>

=cut

__PACKAGE__->table("semana");

=head1 ACCESSORS

=head2 id_semana

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 semana_anio

  data_type: 'integer'
  is_nullable: 0

=head2 semana_mes

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 2

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 0

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 0

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_semana",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "semana_anio",
  { data_type => "integer", is_nullable => 0 },
  "semana_mes",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 2 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 0 },
  "fecha_fin",
  { data_type => "date", is_nullable => 0 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_semana>

=back

=cut

__PACKAGE__->set_primary_key("id_semana");

=head1 UNIQUE CONSTRAINTS

=head2 C<semana_cod>

=over 4

=item * L</id_grupo_nomina>

=item * L</anio>

=item * L</semana_anio>

=back

=cut

__PACKAGE__->add_unique_constraint("semana_cod", ["id_grupo_nomina", "anio", "semana_anio"]);

=head1 RELATIONS

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SIGEFIRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5x8oKmB/qKNMkBbn6EPb8g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
