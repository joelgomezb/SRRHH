use utf8;
package SIGEFIRRHH::Schema::Result::Conceptocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptocargo

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

=head1 TABLE: C<conceptocargo>

=cut

__PACKAGE__->table("conceptocargo");

=head1 ACCESSORS

=head2 id_concepto_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 excluir

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 automatico_ingreso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 id_sitp

  data_type: 'integer'
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_nullable => 0 },
  "excluir",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "automatico_ingreso",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "id_sitp",
  { data_type => "integer", is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptoc_cod>

=over 4

=item * L</id_concepto_tipo_personal>

=item * L</id_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("conceptoc_cod", ["id_concepto_tipo_personal", "id_cargo"]);

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/yGAikk6U/L2xda/uVrR3Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
