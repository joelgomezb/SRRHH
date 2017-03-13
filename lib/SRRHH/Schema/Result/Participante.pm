use utf8;
package SRRHH::Schema::Result::Participante;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Participante

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

=head1 TABLE: C<participante>

=cut

__PACKAGE__->table("participante");

=head1 ACCESSORS

=head2 id_participante

  data_type: 'integer'
  is_nullable: 0

=head2 id_plan_adiestramiento

  data_type: 'integer'
  is_nullable: 0

=head2 asistencia

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 desempenio

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 evaluacion_instructor

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 evaluacion_contenido

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_participante",
  { data_type => "integer", is_nullable => 0 },
  "id_plan_adiestramiento",
  { data_type => "integer", is_nullable => 0 },
  "asistencia",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "estatus",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "desempenio",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "evaluacion_instructor",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "evaluacion_contenido",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_participante>

=back

=cut

__PACKAGE__->set_primary_key("id_participante");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Bj1FVfPB+fGpoMX7MTZWUg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
