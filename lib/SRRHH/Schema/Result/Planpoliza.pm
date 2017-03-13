use utf8;
package SRRHH::Schema::Result::Planpoliza;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Planpoliza

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

=head1 TABLE: C<planpoliza>

=cut

__PACKAGE__->table("planpoliza");

=head1 ACCESSORS

=head2 id_plan_poliza

  data_type: 'integer'
  is_nullable: 0

=head2 cod_plan_poliza

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 beneficiarios

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 prima_unica

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 monto_prima_unica

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cobertura_unica

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 exceso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_poliza

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_plan_poliza",
  { data_type => "integer", is_nullable => 0 },
  "cod_plan_poliza",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "beneficiarios",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "prima_unica",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "monto_prima_unica",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cobertura_unica",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "exceso",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_poliza",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_plan_poliza>

=back

=cut

__PACKAGE__->set_primary_key("id_plan_poliza");

=head1 UNIQUE CONSTRAINTS

=head2 C<planpoliza_cod>

=over 4

=item * L</cod_plan_poliza>

=back

=cut

__PACKAGE__->add_unique_constraint("planpoliza_cod", ["cod_plan_poliza"]);

=head1 RELATIONS

=head2 beneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Beneficiario>

=cut

__PACKAGE__->has_many(
  "beneficiarios",
  "SRRHH::Schema::Result::Beneficiario",
  { "foreign.id_plan_poliza" => "self.id_plan_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepcionbeneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Excepcionbeneficiario>

=cut

__PACKAGE__->has_many(
  "excepcionbeneficiarios",
  "SRRHH::Schema::Result::Excepcionbeneficiario",
  { "foreign.id_plan_poliza" => "self.id_plan_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepciontitulars

Type: has_many

Related object: L<SRRHH::Schema::Result::Excepciontitular>

=cut

__PACKAGE__->has_many(
  "excepciontitulars",
  "SRRHH::Schema::Result::Excepciontitular",
  { "foreign.id_plan_poliza" => "self.id_plan_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_poliza

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Poliza>

=cut

__PACKAGE__->belongs_to(
  "id_poliza",
  "SRRHH::Schema::Result::Poliza",
  { id_poliza => "id_poliza" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 siniestroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Siniestro>

=cut

__PACKAGE__->has_many(
  "siniestroes",
  "SRRHH::Schema::Result::Siniestro",
  { "foreign.id_plan_poliza" => "self.id_plan_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 titulars

Type: has_many

Related object: L<SRRHH::Schema::Result::Titular>

=cut

__PACKAGE__->has_many(
  "titulars",
  "SRRHH::Schema::Result::Titular",
  { "foreign.id_plan_poliza" => "self.id_plan_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bOGogEk81B8PUt4prbXWcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
