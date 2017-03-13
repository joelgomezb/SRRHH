use utf8;
package SRRHH::Schema::Result::Frecuenciatipopersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Frecuenciatipopersonal

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

=head1 TABLE: C<frecuenciatipopersonal>

=cut

__PACKAGE__->table("frecuenciatipopersonal");

=head1 ACCESSORS

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_frecuencia_pago

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_frecuencia_pago

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_frecuencia_pago",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_frecuencia_pago",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_frecuencia_tipo_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_frecuencia_tipo_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<frecuenciatipopersonal_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</id_frecuencia_pago>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "frecuenciatipopersonal_cod",
  ["id_tipo_personal", "id_frecuencia_pago"],
);

=head1 RELATIONS

=head2 conceptodocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptodocente>

=cut

__PACKAGE__->has_many(
  "conceptodocentes",
  "SRRHH::Schema::Result::Conceptodocente",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptofijoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptofijo>

=cut

__PACKAGE__->has_many(
  "conceptofijoes",
  "SRRHH::Schema::Result::Conceptofijo",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoliquidacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptoliquidacion>

=cut

__PACKAGE__->has_many(
  "conceptoliquidacions",
  "SRRHH::Schema::Result::Conceptoliquidacion",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptomovimientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptomovimiento>

=cut

__PACKAGE__->has_many(
  "conceptomovimientoes",
  "SRRHH::Schema::Result::Conceptomovimiento",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptotipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->has_many(
  "conceptotipopersonals",
  "SRRHH::Schema::Result::Conceptotipopersonal",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovariables

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptovariable>

=cut

__PACKAGE__->has_many(
  "conceptovariables",
  "SRRHH::Schema::Result::Conceptovariable",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_frecuencia_pago

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Frecuenciapago>

=cut

__PACKAGE__->belongs_to(
  "id_frecuencia_pago",
  "SRRHH::Schema::Result::Frecuenciapago",
  { id_frecuencia_pago => "id_frecuencia_pago" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 prestamoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Prestamo>

=cut

__PACKAGE__->has_many(
  "prestamoes",
  "SRRHH::Schema::Result::Prestamo",
  {
    "foreign.id_frecuencia_tipo_personal" => "self.id_frecuencia_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RKnu4u/HzbUYDS83Ia8UGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
