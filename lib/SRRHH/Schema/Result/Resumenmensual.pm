use utf8;
package SRRHH::Schema::Result::Resumenmensual;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Resumenmensual

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

=head1 TABLE: C<resumenmensual>

=cut

__PACKAGE__->table("resumenmensual");

=head1 ACCESSORS

=head2 id_resumen_mensual

  data_type: 'integer'
  is_nullable: 0

=head2 id_unidad_administradora

  data_type: 'integer'
  is_nullable: 0

=head2 id_encabezado_resumen_mensual

  data_type: 'integer'
  is_nullable: 0

=head2 id_uel_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_cuenta_presupuesto

  data_type: 'integer'
  is_nullable: 0

=head2 id_unidad_ejecutora

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 categoria_presupuesto

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_resumen_mensual",
  { data_type => "integer", is_nullable => 0 },
  "id_unidad_administradora",
  { data_type => "integer", is_nullable => 0 },
  "id_encabezado_resumen_mensual",
  { data_type => "integer", is_nullable => 0 },
  "id_uel_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_cuenta_presupuesto",
  { data_type => "integer", is_nullable => 0 },
  "id_unidad_ejecutora",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "categoria_presupuesto",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_resumen_mensual>

=back

=cut

__PACKAGE__->set_primary_key("id_resumen_mensual");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:98wcLW7lzk8aLKbAmKjU7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
