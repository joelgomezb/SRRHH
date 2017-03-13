use utf8;
package SRRHH::Schema::Result::Primahijo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Primahijo

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

=head1 TABLE: C<primahijo>

=cut

__PACKAGE__->table("primahijo");

=head1 ACCESSORS

=head2 id_prima_hijo

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 edad_minima

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 edad_maxima

  data_type: 'integer'
  default_value: 18
  is_nullable: 1

=head2 edad_excepcional

  data_type: 'integer'
  default_value: 99
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 edad_estudiante

  data_type: 'integer'
  default_value: 25
  is_nullable: 1

=head2 numero_maximo_hijos

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_prima_hijo",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "edad_minima",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "edad_maxima",
  { data_type => "integer", default_value => 18, is_nullable => 1 },
  "edad_excepcional",
  { data_type => "integer", default_value => 99, is_nullable => 1 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "edad_estudiante",
  { data_type => "integer", default_value => 25, is_nullable => 1 },
  "numero_maximo_hijos",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_prima_hijo>

=back

=cut

__PACKAGE__->set_primary_key("id_prima_hijo");

=head1 UNIQUE CONSTRAINTS

=head2 C<primahijo_cod>

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("primahijo_cod", ["id_tipo_personal"]);

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IVtUOkYuK3zhpdFjRUqpAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
