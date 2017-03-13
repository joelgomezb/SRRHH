use utf8;
package SRRHH::Schema::Result::Accionevaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Accionevaluacion

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

=head1 TABLE: C<accionevaluacion>

=cut

__PACKAGE__->table("accionevaluacion");

=head1 ACCESSORS

=head2 id_accion_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_accion_evaluacion

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_accion_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "cod_accion_evaluacion",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_accion_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_accion_evaluacion");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sYQ3fWZ2lS57MR1riroBzQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
