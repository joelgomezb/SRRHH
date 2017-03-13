use utf8;
package SIGEFIRRHH::Schema::Result::Cargamasivatrabajador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cargamasivatrabajador

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

=head1 TABLE: C<cargamasivatrabajador>

=cut

__PACKAGE__->table("cargamasivatrabajador");

=head1 ACCESSORS

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 0

=head2 fecha_ingreso_apn

  data_type: 'date'
  is_nullable: 0

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 0

=head2 fecha_prestaciones

  data_type: 'date'
  is_nullable: 0

=head2 fecha_antiguedad

  data_type: 'date'
  is_nullable: 0

=head2 id_banco_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 tipo_cta_nomina

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cuenta_nomina

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 id_banco_lph

  data_type: 'integer'
  is_nullable: 0

=head2 cuenta_lph

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_banco_fid

  data_type: 'integer'
  is_nullable: 0

=head2 cuenta_fid

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 porcentaje_islr

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 cotiza_sso

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cotiza_spf

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cotiza_lph

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cotiza_fju

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 id_causa_movimiento

  data_type: 'integer'
  is_nullable: 0

=head2 id_registro

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 0 },
  "fecha_ingreso_apn",
  { data_type => "date", is_nullable => 0 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 0 },
  "fecha_prestaciones",
  { data_type => "date", is_nullable => 0 },
  "fecha_antiguedad",
  { data_type => "date", is_nullable => 0 },
  "id_banco_nomina",
  { data_type => "integer", is_nullable => 0 },
  "tipo_cta_nomina",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cuenta_nomina",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "id_banco_lph",
  { data_type => "integer", is_nullable => 0 },
  "cuenta_lph",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_banco_fid",
  { data_type => "integer", is_nullable => 0 },
  "cuenta_fid",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "porcentaje_islr",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "cotiza_sso",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cotiza_spf",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cotiza_lph",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cotiza_fju",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "id_causa_movimiento",
  { data_type => "integer", is_nullable => 0 },
  "id_registro",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kjEk5dWqu0Qw2A0gkHidSA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
