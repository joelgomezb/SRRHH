use utf8;
package SRRHH::Schema::Result::Postuladoconcurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Postuladoconcurso

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

=head1 TABLE: C<postuladoconcurso>

=cut

__PACKAGE__->table("postuladoconcurso");

=head1 ACCESSORS

=head2 id_postulado_concurso

  data_type: 'integer'
  is_nullable: 0

=head2 id_concurso_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_nullable: 1

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 1

=head2 id_postulado_externo

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 origen

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 resultado

  data_type: 'integer'
  is_nullable: 0

=head2 observacion

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_postulado_concurso",
  { data_type => "integer", is_nullable => 0 },
  "id_concurso_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_nullable => 1 },
  "id_elegible",
  { data_type => "integer", is_nullable => 1 },
  "id_postulado_externo",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "estatus",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "origen",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "resultado",
  { data_type => "integer", is_nullable => 0 },
  "observacion",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_postulado_concurso>

=back

=cut

__PACKAGE__->set_primary_key("id_postulado_concurso");

=head1 UNIQUE CONSTRAINTS

=head2 C<pk_cedula>

=over 4

=item * L</cedula>

=back

=cut

__PACKAGE__->add_unique_constraint("pk_cedula", ["cedula"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yRMoMb6abzPuZWuckS7ZsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
