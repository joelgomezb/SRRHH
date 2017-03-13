use utf8;
package SRRHH::Schema::Result::Conceptoasociado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Conceptoasociado

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

=head1 TABLE: C<conceptoasociado>

=cut

__PACKAGE__->table("conceptoasociado");

=head1 ACCESSORS

=head2 id_concepto_asociado

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_asociar

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 base

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 factor

  data_type: 'double precision'
  default_value: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_asociado",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto_asociar",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "base",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "factor",
  { data_type => "double precision", default_value => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_asociado>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_asociado");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptoasociado_cod>

=over 4

=item * L</id_concepto_tipo_personal>

=item * L</id_concepto_asociar>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "conceptoasociado_cod",
  ["id_concepto_tipo_personal", "id_concepto_asociar"],
);

=head1 RELATIONS

=head2 id_concepto_asociar

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_asociar",
  "SRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_asociar" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N/9LkiCj1k7hR4vXwm2qsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
