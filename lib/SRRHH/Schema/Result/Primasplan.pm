use utf8;
package SRRHH::Schema::Result::Primasplan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Primasplan

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

=head1 TABLE: C<primasplan>

=cut

__PACKAGE__->table("primasplan");

=head1 ACCESSORS

=head2 id_primas_plan

  data_type: 'integer'
  is_nullable: 0

=head2 parentesco

  data_type: 'varchar'
  default_value: 'T'
  is_nullable: 0
  size: 1

=head2 edad_minima

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edad_maxima

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 prima_femenino

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 prima_masculino

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cobertura_parentesco

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 maximo_beneficiarios

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_plan_poliza

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_primas_plan",
  { data_type => "integer", is_nullable => 0 },
  "parentesco",
  { data_type => "varchar", default_value => "T", is_nullable => 0, size => 1 },
  "edad_minima",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edad_maxima",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "prima_femenino",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "prima_masculino",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cobertura_parentesco",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "maximo_beneficiarios",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_plan_poliza",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_primas_plan>

=back

=cut

__PACKAGE__->set_primary_key("id_primas_plan");

=head1 UNIQUE CONSTRAINTS

=head2 C<primasplan_cod>

=over 4

=item * L</id_plan_poliza>

=item * L</parentesco>

=item * L</edad_minima>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "primasplan_cod",
  ["id_plan_poliza", "parentesco", "edad_minima"],
);

=head1 RELATIONS

=head2 beneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Beneficiario>

=cut

__PACKAGE__->has_many(
  "beneficiarios",
  "SRRHH::Schema::Result::Beneficiario",
  { "foreign.id_primas_plan" => "self.id_primas_plan" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 primascargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Primascargo>

=cut

__PACKAGE__->has_many(
  "primascargoes",
  "SRRHH::Schema::Result::Primascargo",
  { "foreign.id_primas_plan" => "self.id_primas_plan" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 titulars

Type: has_many

Related object: L<SRRHH::Schema::Result::Titular>

=cut

__PACKAGE__->has_many(
  "titulars",
  "SRRHH::Schema::Result::Titular",
  { "foreign.id_primas_plan" => "self.id_primas_plan" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3VcsudMWX1rZzcwAHwUeCw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
