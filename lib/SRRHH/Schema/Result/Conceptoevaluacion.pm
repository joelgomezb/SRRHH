use utf8;
package SRRHH::Schema::Result::Conceptoevaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Conceptoevaluacion

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

=head1 TABLE: C<conceptoevaluacion>

=cut

__PACKAGE__->table("conceptoevaluacion");

=head1 ACCESSORS

=head2 id_concepto_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 eliminar_despues_aumento

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "eliminar_despues_aumento",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_evaluacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptoevaluacion_cod>

=over 4

=item * L</id_concepto_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("conceptoevaluacion_cod", ["id_concepto_tipo_personal"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QdlSxevRhE5+/QdeeVk9oQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
