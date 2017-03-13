use utf8;
package SIGEFIRRHH::Schema::Result::VBienestarSocial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VBienestarSocial

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

=head1 TABLE: C<v_bienestar_social>

=cut

__PACKAGE__->table("v_bienestar_social");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 asegurado

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 edad

  data_type: 'double precision'
  is_nullable: 1

=head2 mes_edad

  data_type: 'double precision'
  is_nullable: 1

=head2 parentesco

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 nivel_educativo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 grado

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 carga

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 dependencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 tipopersonal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "asegurado",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "edad",
  { data_type => "double precision", is_nullable => 1 },
  "mes_edad",
  { data_type => "double precision", is_nullable => 1 },
  "parentesco",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "nivel_educativo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "grado",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "carga",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "dependencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "tipopersonal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5W9M3kK6Pvqc+cktI0G4OQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
