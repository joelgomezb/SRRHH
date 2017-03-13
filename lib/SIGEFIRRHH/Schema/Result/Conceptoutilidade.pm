use utf8;
package SIGEFIRRHH::Schema::Result::Conceptoutilidade;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptoutilidade

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

=head1 TABLE: C<conceptoutilidades>

=cut

__PACKAGE__->table("conceptoutilidades");

=head1 ACCESSORS

=head2 id_concepto_utilidades

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo

  data_type: 'varchar'
  default_value: 'B'
  is_nullable: 0
  size: 1

=head2 mes_inicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 factor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 mes_buscar

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 semana_buscar

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mes_final

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_dias

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_meses

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_utilidades",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo",
  { data_type => "varchar", default_value => "B", is_nullable => 0, size => 1 },
  "mes_inicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "factor",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "mes_buscar",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "semana_buscar",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes_final",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_dias",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_meses",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_utilidades>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_utilidades");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptoutilidades_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</id_concepto_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "conceptoutilidades_cod",
  ["id_tipo_personal", "id_concepto_tipo_personal"],
);

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hKs7b1HQevObWsPIBU3tIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
