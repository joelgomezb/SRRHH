use utf8;
package SRRHH::Schema::Result::Parametrobeca;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parametrobeca

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

=head1 TABLE: C<parametrobeca>

=cut

__PACKAGE__->table("parametrobeca");

=head1 ACCESSORS

=head2 id_parametro_beca

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_nivel_beca

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 anios_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 meses_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edad_maxima

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 promedio_notas

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_becas

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 maximo_trabajador

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_beca

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_excepcional

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_beca",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_nivel_beca",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "meses_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edad_maxima",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "promedio_notas",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_becas",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "maximo_trabajador",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_beca",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_excepcional",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_beca>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_beca");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nacGkrlRQarfMfPm3YV6Eg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
