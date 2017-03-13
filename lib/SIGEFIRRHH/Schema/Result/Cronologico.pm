use utf8;
package SIGEFIRRHH::Schema::Result::Cronologico;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cronologico

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

=head1 TABLE: C<cronologico>

=cut

__PACKAGE__->table("cronologico");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codigo

  data_type: 'text'
  is_nullable: 1

=head2 concepto

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 enero

  data_type: 'numeric'
  is_nullable: 1

=head2 febrero

  data_type: 'numeric'
  is_nullable: 1

=head2 marzo

  data_type: 'numeric'
  is_nullable: 1

=head2 abril

  data_type: 'numeric'
  is_nullable: 1

=head2 mayo

  data_type: 'numeric'
  is_nullable: 1

=head2 junio

  data_type: 'numeric'
  is_nullable: 1

=head2 julio

  data_type: 'numeric'
  is_nullable: 1

=head2 agosto

  data_type: 'numeric'
  is_nullable: 1

=head2 septiembre

  data_type: 'numeric'
  is_nullable: 1

=head2 octubre

  data_type: 'numeric'
  is_nullable: 1

=head2 noviembre

  data_type: 'numeric'
  is_nullable: 1

=head2 diciembre

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
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
  "codigo",
  { data_type => "text", is_nullable => 1 },
  "concepto",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "enero",
  { data_type => "numeric", is_nullable => 1 },
  "febrero",
  { data_type => "numeric", is_nullable => 1 },
  "marzo",
  { data_type => "numeric", is_nullable => 1 },
  "abril",
  { data_type => "numeric", is_nullable => 1 },
  "mayo",
  { data_type => "numeric", is_nullable => 1 },
  "junio",
  { data_type => "numeric", is_nullable => 1 },
  "julio",
  { data_type => "numeric", is_nullable => 1 },
  "agosto",
  { data_type => "numeric", is_nullable => 1 },
  "septiembre",
  { data_type => "numeric", is_nullable => 1 },
  "octubre",
  { data_type => "numeric", is_nullable => 1 },
  "noviembre",
  { data_type => "numeric", is_nullable => 1 },
  "diciembre",
  { data_type => "numeric", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:au64h+0AVBzP1zIqkTah1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
