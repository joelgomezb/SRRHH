use utf8;
package SIGEFIRRHH::Schema::Result::Me;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Me

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

=head1 TABLE: C<mes>

=cut

__PACKAGE__->table("mes");

=head1 ACCESSORS

=head2 id_mes

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 mes

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 2

=head2 lunes_pr_quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 lunes_se_quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias_habiles

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 con_sabados

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_mes",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "mes",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 2 },
  "lunes_pr_quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "lunes_se_quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias_habiles",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "con_sabados",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_mes>

=back

=cut

__PACKAGE__->set_primary_key("id_mes");

=head1 UNIQUE CONSTRAINTS

=head2 C<mes_cod>

=over 4

=item * L</anio>

=item * L</mes>

=back

=cut

__PACKAGE__->add_unique_constraint("mes_cod", ["anio", "mes"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6XhIVivv7RZgu1/0uPvyWQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
