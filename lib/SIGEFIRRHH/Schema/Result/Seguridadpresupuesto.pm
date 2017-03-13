use utf8;
package SIGEFIRRHH::Schema::Result::Seguridadpresupuesto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Seguridadpresupuesto

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

=head1 TABLE: C<seguridadpresupuesto>

=cut

__PACKAGE__->table("seguridadpresupuesto");

=head1 ACCESSORS

=head2 id_seguridad_presupuesto

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

=head2 fecha_cierre

  data_type: 'date'
  is_nullable: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 id_categoria_presupuesto

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_seguridad_presupuesto",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_cierre",
  { data_type => "date", is_nullable => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "id_categoria_presupuesto",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_presupuesto>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_presupuesto");

=head1 UNIQUE CONSTRAINTS

=head2 C<seguridadpresupuesto_cod>

=over 4

=item * L</id_categoria_presupuesto>

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "seguridadpresupuesto_cod",
  ["id_categoria_presupuesto", "anio", "mes"],
);

=head1 RELATIONS

=head2 id_categoria_presupuesto

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Categoriapresupuesto>

=cut

__PACKAGE__->belongs_to(
  "id_categoria_presupuesto",
  "SIGEFIRRHH::Schema::Result::Categoriapresupuesto",
  { id_categoria_presupuesto => "id_categoria_presupuesto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XGYxuhtV66tIgjqXPJZgLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
