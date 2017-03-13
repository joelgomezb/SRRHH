use utf8;
package SRRHH::Schema::Result::Partidauelespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Partidauelespecifica

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

=head1 TABLE: C<partidauelespecifica>

=cut

__PACKAGE__->table("partidauelespecifica");

=head1 ACCESSORS

=head2 id_partida_uel_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_uel_especifica

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cuenta_presupuesto

  data_type: 'integer'
  is_nullable: 0

=head2 id_fuente_financiamiento

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_partida_uel_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_uel_especifica",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cuenta_presupuesto",
  { data_type => "integer", is_nullable => 0 },
  "id_fuente_financiamiento",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_partida_uel_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_partida_uel_especifica");

=head1 UNIQUE CONSTRAINTS

=head2 C<partidauelespecifica_cod>

=over 4

=item * L</id_uel_especifica>

=item * L</id_cuenta_presupuesto>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "partidauelespecifica_cod",
  ["id_uel_especifica", "id_cuenta_presupuesto"],
);

=head1 RELATIONS

=head2 id_uel_especifica

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Uelespecifica>

=cut

__PACKAGE__->belongs_to(
  "id_uel_especifica",
  "SRRHH::Schema::Result::Uelespecifica",
  { id_uel_especifica => "id_uel_especifica" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+jODNhV32YAazJuxmPpc/A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
