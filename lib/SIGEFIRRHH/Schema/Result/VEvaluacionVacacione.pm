use utf8;
package SIGEFIRRHH::Schema::Result::VEvaluacionVacacione;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VEvaluacionVacacione

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_evaluacion_vacaciones>

=cut

__PACKAGE__->table("v_evaluacion_vacaciones");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 dias

  data_type: 'integer'
  is_nullable: 1

=head2 tipo

  data_type: 'text'
  is_nullable: 1

=head2 hora_dia

  data_type: 'text'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "dias",
  { data_type => "integer", is_nullable => 1 },
  "tipo",
  { data_type => "text", is_nullable => 1 },
  "hora_dia",
  { data_type => "text", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0hOyylGJwZpKVl6xUHFpyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
