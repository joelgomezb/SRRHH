use utf8;
package SRRHH::Schema::Result::Conceptodocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Conceptodocente

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

=head1 TABLE: C<conceptodocente>

=cut

__PACKAGE__->table("conceptodocente");

=head1 ACCESSORS

=head2 id_concepto_docente

  data_type: 'integer'
  is_nullable: 0

=head2 id_movimiento

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 variable

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_docente",
  { data_type => "integer", is_nullable => 0 },
  "id_movimiento",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "variable",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_docente");

=head1 RELATIONS

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

=head2 id_frecuencia_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Frecuenciatipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_frecuencia_tipo_personal",
  "SRRHH::Schema::Result::Frecuenciatipopersonal",
  { id_frecuencia_tipo_personal => "id_frecuencia_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4BDk48gnMkwWkXZ2v212+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
