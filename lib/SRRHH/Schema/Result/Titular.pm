use utf8;
package SRRHH::Schema::Result::Titular;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Titular

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

=head1 TABLE: C<titular>

=cut

__PACKAGE__->table("titular");

=head1 ACCESSORS

=head2 id_titular

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_plan_poliza

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_primas_plan

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 monto_prima

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cobertura

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cobertura_extra

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 prima_extra

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_inclusion

  data_type: 'date'
  is_nullable: 1

=head2 fecha_exclusion

  data_type: 'date'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_titular",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_plan_poliza",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_primas_plan",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "monto_prima",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cobertura",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cobertura_extra",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "prima_extra",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_inclusion",
  { data_type => "date", is_nullable => 1 },
  "fecha_exclusion",
  { data_type => "date", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_titular>

=back

=cut

__PACKAGE__->set_primary_key("id_titular");

=head1 UNIQUE CONSTRAINTS

=head2 C<titular_cod>

=over 4

=item * L</id_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("titular_cod", ["id_personal"]);

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_plan_poliza

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Planpoliza>

=cut

__PACKAGE__->belongs_to(
  "id_plan_poliza",
  "SRRHH::Schema::Result::Planpoliza",
  { id_plan_poliza => "id_plan_poliza" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_primas_plan

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Primasplan>

=cut

__PACKAGE__->belongs_to(
  "id_primas_plan",
  "SRRHH::Schema::Result::Primasplan",
  { id_primas_plan => "id_primas_plan" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 siniestroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Siniestro>

=cut

__PACKAGE__->has_many(
  "siniestroes",
  "SRRHH::Schema::Result::Siniestro",
  { "foreign.id_titular" => "self.id_titular" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NKUTCZf8IFFlprpQOstYAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
