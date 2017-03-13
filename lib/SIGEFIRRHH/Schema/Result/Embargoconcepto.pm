use utf8;
package SIGEFIRRHH::Schema::Result::Embargoconcepto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Embargoconcepto

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

=head1 TABLE: C<embargoconcepto>

=cut

__PACKAGE__->table("embargoconcepto");

=head1 ACCESSORS

=head2 id_embargo_concepto

  data_type: 'integer'
  is_nullable: 0

=head2 id_embargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 banco

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 cedula_beneficiario

  data_type: 'integer'
  is_nullable: 1

=head2 cuenta

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 rif_beneficiario

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=cut

__PACKAGE__->add_columns(
  "id_embargo_concepto",
  { data_type => "integer", is_nullable => 0 },
  "id_embargo",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "banco",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "cedula_beneficiario",
  { data_type => "integer", is_nullable => 1 },
  "cuenta",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "rif_beneficiario",
  { data_type => "varchar", is_nullable => 1, size => 12 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_embargo_concepto>

=back

=cut

__PACKAGE__->set_primary_key("id_embargo_concepto");

=head1 UNIQUE CONSTRAINTS

=head2 C<embargoconcepto_cod>

=over 4

=item * L</id_embargo>

=item * L</id_concepto>

=back

=cut

__PACKAGE__->add_unique_constraint("embargoconcepto_cod", ["id_embargo", "id_concepto"]);

=head1 RELATIONS

=head2 id_concepto

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/VEQrOwySx1ItRs/beBPBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
