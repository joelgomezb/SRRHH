use utf8;
package SRRHH::Schema::Result::VArchivoPlanoBivOctubre2012;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VArchivoPlanoBivOctubre2012

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

=head1 TABLE: C<v_archivo_plano_biv_octubre_2012>

=cut

__PACKAGE__->table("v_archivo_plano_biv_octubre_2012");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.numero_nomina,\n    v_recibos_conjuntos.nomina_especial,\n    v_recibos_conjuntos.id_grupo_nomina,\n    v_recibos_conjuntos.gruponomina,\n    v_recibos_conjuntos.semana_quincena,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.anio,\n    (sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) AS monto,\n    (((('770'::text || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((v_recibos_conjuntos.cedula)::text, 11, '0'::text)) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 13, '0'::text)) || '0000000000000'::text) AS plano,\n    ((((((((((('0100101001VEF000000000000000000030095130001008655'::text || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '01001VEF0000000000000000'::text) || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '102612EXTERNAL  '::text) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('0'::text, 18, '0'::text)) || rpad(' '::text, 1, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 15, ' '::text)) || rpad((v_recibos_conjuntos.cedula)::text, 100, ' '::text)) AS plano_avance,\n    ((((((((((('0100101001VEF000000000000000000030095130001008663'::text || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '01001VEF0000000000000000'::text) || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '102612EXTERNAL  '::text) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('0'::text, 18, '0'::text)) || rpad(' '::text, 1, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 15, ' '::text)) || rpad((v_recibos_conjuntos.cedula)::text, 100, ' '::text)) AS plano_anticipo\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.formapago)::integer = 1)\n  GROUP BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial, v_recibos_conjuntos.id_grupo_nomina, v_recibos_conjuntos.gruponomina, v_recibos_conjuntos.semana_quincena, v_recibos_conjuntos.mes, v_recibos_conjuntos.anio, v_recibos_conjuntos.cuenta_nomina\n  ORDER BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial, v_recibos_conjuntos.id_grupo_nomina, v_recibos_conjuntos.gruponomina, v_recibos_conjuntos.semana_quincena, v_recibos_conjuntos.mes, v_recibos_conjuntos.anio, (sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)), (((('770'::text || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((v_recibos_conjuntos.cedula)::text, 11, '0'::text)) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 13, '0'::text)) || '0000000000000'::text), ((((((((((('0100101001VEF000000000000000000030095130001008655'::text || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '01001VEF0000000000000000'::text) || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '102612EXTERNAL  '::text) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('0'::text, 18, '0'::text)) || rpad(' '::text, 1, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 15, ' '::text)) || rpad((v_recibos_conjuntos.cedula)::text, 100, ' '::text)), ((((((((((('0100101001VEF000000000000000000030095130001008663'::text || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '01001VEF0000000000000000'::text) || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 15, '0'::text)) || '102612EXTERNAL  '::text) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 30, ' '::text)) || rpad('0'::text, 18, '0'::text)) || rpad(' '::text, 1, ' '::text)) || rpad('ABONO_MPPEE_CTA'::text, 15, ' '::text)) || rpad((v_recibos_conjuntos.cedula)::text, 100, ' '::text))");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 gruponomina

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 plano

  data_type: 'text'
  is_nullable: 1

=head2 plano_avance

  data_type: 'text'
  is_nullable: 1

=head2 plano_anticipo

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "gruponomina",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "plano",
  { data_type => "text", is_nullable => 1 },
  "plano_avance",
  { data_type => "text", is_nullable => 1 },
  "plano_anticipo",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eTf3Gfan0C9M/vgfP/wJvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
