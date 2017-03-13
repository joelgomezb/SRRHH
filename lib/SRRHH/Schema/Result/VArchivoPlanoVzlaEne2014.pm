use utf8;
package SRRHH::Schema::Result::VArchivoPlanoVzlaEne2014;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VArchivoPlanoVzlaEne2014

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

=head1 TABLE: C<v_archivo_plano_vzla_ene_2014>

=cut

__PACKAGE__->table("v_archivo_plano_vzla_ene_2014");
__PACKAGE__->result_source_instance->view_definition(" SELECT rc.cedula,\n    rc.numero_nomina,\n    rc.nomina_especial,\n    rc.id_grupo_nomina,\n    rc.gruponomina,\n    rc.semana_quincena,\n    rc.mes,\n    rc.anio,\n    sum((rc.asigna - rc.deduce)) AS monto,\n    (((((((\n        CASE\n            WHEN ((t.tipo_cta_nomina)::text = 'C'::text) THEN '0'::text\n            ELSE '1'::text\n        END || (rc.cuenta_nomina)::text) || lpad((round(((sum(rc.asigna) - sum(rc.deduce)) * (100)::double precision)))::text, 11, '0'::text)) ||\n        CASE\n            WHEN ((t.tipo_cta_nomina)::text = 'C'::text) THEN '0'::text\n            ELSE '1'::text\n        END) || '770'::text) || rpad((((rc.primer_nombre)::text || ' '::text) || (rc.primer_apellido)::text), 40, ' '::text)) || lpad((rc.cedula)::text, 10, '0'::text)) || '003291  '::text) AS archivo\n   FROM (v_recibos_conjuntos rc\n     JOIN trabajador t USING (id_trabajador))\n  WHERE ((rc.formapago)::integer = 1)\n  GROUP BY rc.cedula, (((rc.primer_nombre)::text || ' '::text) || (rc.primer_apellido)::text), rc.numero_nomina, rc.nomina_especial, rc.id_grupo_nomina, rc.gruponomina, rc.semana_quincena, rc.mes, rc.anio, t.tipo_cta_nomina, rc.cuenta_nomina\n  ORDER BY rc.cedula, rc.numero_nomina, rc.nomina_especial, rc.id_grupo_nomina, rc.gruponomina, rc.semana_quincena, rc.mes, rc.anio, t.tipo_cta_nomina, rc.cuenta_nomina");

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

=head2 archivo

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
  "archivo",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:juSeXj/nT+cAnWIQp30kqA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
