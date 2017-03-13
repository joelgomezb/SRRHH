use utf8;
package SRRHH::Schema::Result::Fideicomiso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Fideicomiso

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

=head1 TABLE: C<fideicomiso>

=cut

__PACKAGE__->table("fideicomiso");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 monto_fideicomiso

  data_type: 'double precision'
  is_nullable: 1

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 id_banco

  data_type: 'integer'
  is_nullable: 1

=head2 id_fideicomiso

  data_type: 'integer'
  is_nullable: 0

=head2 anio_abono

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mes_abono

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "monto_fideicomiso",
  { data_type => "double precision", is_nullable => 1 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "id_banco",
  { data_type => "integer", is_nullable => 1 },
  "id_fideicomiso",
  { data_type => "integer", is_nullable => 0 },
  "anio_abono",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes_abono",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_fideicomiso>

=back

=cut

__PACKAGE__->set_primary_key("id_fideicomiso");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:h3CYqLWJvyzmggfpyxp6kg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
