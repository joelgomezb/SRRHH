use utf8;
package SIGEFIRRHH::Schema::Result::Conceptotipopersonalhist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptotipopersonalhist

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

=head1 TABLE: C<conceptotipopersonalhist>

=cut

__PACKAGE__->table("conceptotipopersonalhist");

=head1 ACCESSORS

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 tipo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 valor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 automatico_ingreso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 tope_minimo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_anual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_escenario

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 formula_concepto

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 multiplicador_formula

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 otra_moneda

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 homologacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 cod_tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_frecuencia_pago

  data_type: 'integer'
  is_nullable: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 anual

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 ocurrencia

  data_type: 'double precision'
  default_value: 1
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 id_contrato_colectivo

  data_type: 'integer'
  is_nullable: 1

=head2 refleja_movimiento

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 recalculo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 distribucion

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 base_jubilacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "tipo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "valor",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "automatico_ingreso",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "tope_minimo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_anual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_escenario",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "formula_concepto",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "multiplicador_formula",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "otra_moneda",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "homologacion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "cod_tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_frecuencia_pago",
  { data_type => "integer", is_nullable => 1 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "anual",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "ocurrencia",
  { data_type => "double precision", default_value => 1, is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "id_contrato_colectivo",
  { data_type => "integer", is_nullable => 1 },
  "refleja_movimiento",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "recalculo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "distribucion",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "base_jubilacion",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AYcFJo176uGbt94Ypuhm0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
