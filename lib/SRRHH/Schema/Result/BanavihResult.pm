use utf8;
package SRRHH::Schema::Result::BanavihResult;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::BanavihResult

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

=head1 TABLE: C<banavih_result>

=cut

__PACKAGE__->table("banavih_result");

=head1 ACCESSORS

=head2 dependencia

  data_type: 'text'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'text'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 apellido

  data_type: 'text'
  is_nullable: 1

=head2 apellido2

  data_type: 'text'
  is_nullable: 1

=head2 nombre

  data_type: 'text'
  is_nullable: 1

=head2 nombre2

  data_type: 'text'
  is_nullable: 1

=head2 idtp

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'text'
  is_nullable: 1

=head2 fingreso

  data_type: 'date'
  is_nullable: 1

=head2 fegreso

  data_type: 'date'
  is_nullable: 1

=head2 unidadejecutora

  data_type: 'text'
  is_nullable: 1

=head2 sueldobasico

  data_type: 'double precision'
  is_nullable: 1

=head2 bonos

  data_type: 'double precision'
  is_nullable: 1

=head2 alicuotavacacional

  data_type: 'double precision'
  is_nullable: 1

=head2 alicuotafinanio

  data_type: 'double precision'
  is_nullable: 1

=head2 total

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dependencia",
  { data_type => "text", is_nullable => 1 },
  "nacionalidad",
  { data_type => "text", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "apellido",
  { data_type => "text", is_nullable => 1 },
  "apellido2",
  { data_type => "text", is_nullable => 1 },
  "nombre",
  { data_type => "text", is_nullable => 1 },
  "nombre2",
  { data_type => "text", is_nullable => 1 },
  "idtp",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "text", is_nullable => 1 },
  "fingreso",
  { data_type => "date", is_nullable => 1 },
  "fegreso",
  { data_type => "date", is_nullable => 1 },
  "unidadejecutora",
  { data_type => "text", is_nullable => 1 },
  "sueldobasico",
  { data_type => "double precision", is_nullable => 1 },
  "bonos",
  { data_type => "double precision", is_nullable => 1 },
  "alicuotavacacional",
  { data_type => "double precision", is_nullable => 1 },
  "alicuotafinanio",
  { data_type => "double precision", is_nullable => 1 },
  "total",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uUsSXrD+gNzFH0Dv9wemvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
