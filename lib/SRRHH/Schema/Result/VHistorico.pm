use utf8;
package SRRHH::Schema::Result::VHistorico;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VHistorico

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

=head1 TABLE: C<v_historico>

=cut

__PACKAGE__->table("v_historico");
__PACKAGE__->result_source_instance->view_definition(" SELECT historicoquincena.id_historico_quincena,\n    historicoquincena.id_trabajador,\n    historicoquincena.id_concepto_tipo_personal,\n    historicoquincena.id_frecuencia_tipo_personal,\n    historicoquincena.numero_nomina,\n    historicoquincena.anio,\n    historicoquincena.mes,\n    historicoquincena.semana_quincena,\n    historicoquincena.fecha,\n    historicoquincena.unidades,\n    historicoquincena.monto_asigna,\n    historicoquincena.monto_deduce,\n    historicoquincena.origen,\n    historicoquincena.documento_soporte,\n    historicoquincena.id_tipo_personal,\n    historicoquincena.id_grupo_nomina,\n    historicoquincena.id_nomina_especial,\n    historicoquincena.id_historico_nomina,\n    historicoquincena.id_concepto,\n    historicoquincena.monto_aporte,\n    historicoquincena.id_concepto_aporte,\n    historicoquincena.mes_sobretiempo,\n    historicoquincena.anio_sobretiempo\n   FROM historicoquincena\nUNION\n SELECT historicosemana.id_historico_semana AS id_historico_quincena,\n    historicosemana.id_trabajador,\n    historicosemana.id_concepto_tipo_personal,\n    historicosemana.id_frecuencia_tipo_personal,\n    historicosemana.numero_nomina,\n    historicosemana.anio,\n    historicosemana.mes,\n    historicosemana.semana_quincena,\n    historicosemana.fecha,\n    historicosemana.unidades,\n    historicosemana.monto_asigna,\n    historicosemana.monto_deduce,\n    historicosemana.origen,\n    historicosemana.documento_soporte,\n    historicosemana.id_tipo_personal,\n    historicosemana.id_grupo_nomina,\n    historicosemana.id_nomina_especial,\n    historicosemana.id_historico_nomina,\n    historicosemana.id_concepto,\n    historicosemana.monto_aporte,\n    historicosemana.id_concepto_aporte,\n    historicosemana.mes_sobretiempo,\n    historicosemana.anio_sobretiempo\n   FROM historicosemana");

=head1 ACCESSORS

=head2 id_historico_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 unidades

  data_type: 'double precision'
  is_nullable: 1

=head2 monto_asigna

  data_type: 'double precision'
  is_nullable: 1

=head2 monto_deduce

  data_type: 'double precision'
  is_nullable: 1

=head2 origen

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 1

=head2 id_historico_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 1

=head2 monto_aporte

  data_type: 'double precision'
  is_nullable: 1

=head2 id_concepto_aporte

  data_type: 'integer'
  is_nullable: 1

=head2 mes_sobretiempo

  data_type: 'integer'
  is_nullable: 1

=head2 anio_sobretiempo

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_historico_quincena",
  { data_type => "integer", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "unidades",
  { data_type => "double precision", is_nullable => 1 },
  "monto_asigna",
  { data_type => "double precision", is_nullable => 1 },
  "monto_deduce",
  { data_type => "double precision", is_nullable => 1 },
  "origen",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "id_historico_nomina",
  { data_type => "integer", is_nullable => 1 },
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
  "monto_aporte",
  { data_type => "double precision", is_nullable => 1 },
  "id_concepto_aporte",
  { data_type => "integer", is_nullable => 1 },
  "mes_sobretiempo",
  { data_type => "integer", is_nullable => 1 },
  "anio_sobretiempo",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:49lDInTIxCrXYVXv/DplrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
