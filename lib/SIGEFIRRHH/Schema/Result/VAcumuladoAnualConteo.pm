use utf8;
package SIGEFIRRHH::Schema::Result::VAcumuladoAnualConteo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VAcumuladoAnualConteo

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

=head1 TABLE: C<v_acumulado_anual_conteo>

=cut

__PACKAGE__->table("v_acumulado_anual_conteo");

=head1 ACCESSORS

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 seriecargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 gradocargo

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "seriecargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gD3vuWqz/wcSqDArau+iRQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
