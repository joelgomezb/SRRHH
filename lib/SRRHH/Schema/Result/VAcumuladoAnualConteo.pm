use utf8;
package SRRHH::Schema::Result::VAcumuladoAnualConteo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VAcumuladoAnualConteo

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_acumulado_anual_conteo>

=cut

__PACKAGE__->table("v_acumulado_anual_conteo");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.cod_unidad_ejecutora,\n    v_recibos_conjuntos.uel,\n    v_recibos_conjuntos.id_region,\n    v_recibos_conjuntos.region,\n    v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.codtno,\n    v_recibos_conjuntos.tipopersonal,\n    v_recibos_conjuntos.id_serie_cargo,\n    v_recibos_conjuntos.seriecargo,\n    v_recibos_conjuntos.cargo,\n    v_recibos_conjuntos.gradocargo,\n    v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.sexo,\n    v_recibos_conjuntos.semana_quincena\n   FROM v_recibos_conjuntos\n  GROUP BY v_recibos_conjuntos.cod_unidad_ejecutora, v_recibos_conjuntos.uel, v_recibos_conjuntos.id_region, v_recibos_conjuntos.region, v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.codtno, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.id_serie_cargo, v_recibos_conjuntos.seriecargo, v_recibos_conjuntos.cargo, v_recibos_conjuntos.gradocargo, v_recibos_conjuntos.cedula, v_recibos_conjuntos.sexo, v_recibos_conjuntos.semana_quincena\n  ORDER BY v_recibos_conjuntos.cod_unidad_ejecutora, v_recibos_conjuntos.uel, v_recibos_conjuntos.id_region, v_recibos_conjuntos.region, v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.codtno, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.id_serie_cargo, v_recibos_conjuntos.seriecargo, v_recibos_conjuntos.cargo, v_recibos_conjuntos.gradocargo, v_recibos_conjuntos.cedula, v_recibos_conjuntos.sexo, v_recibos_conjuntos.semana_quincena");

=head1 ACCESSORS

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 uel

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 id_region

  data_type: 'integer'
  is_nullable: 1

=head2 region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 seriecargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 gradocargo

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "uel",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "id_region",
  { data_type => "integer", is_nullable => 1 },
  "region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "seriecargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "gradocargo",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N++/gEWgwqxbPs9t1JliRA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
