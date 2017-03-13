use utf8;
package SIGEFIRRHH::Schema::Result::VHistorico;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VHistorico

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B+4baZoolup6VWlupw6i0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
