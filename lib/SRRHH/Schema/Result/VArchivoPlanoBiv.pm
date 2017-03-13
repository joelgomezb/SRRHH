use utf8;
package SRRHH::Schema::Result::VArchivoPlanoBiv;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VArchivoPlanoBiv

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

=head1 TABLE: C<v_archivo_plano_biv>

=cut

__PACKAGE__->table("v_archivo_plano_biv");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.numero_nomina,\n    v_recibos_conjuntos.nomina_especial,\n    v_recibos_conjuntos.id_grupo_nomina,\n    v_recibos_conjuntos.gruponomina,\n    v_recibos_conjuntos.semana_quincena,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.anio,\n    (sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) AS monto,\n    (((('770'::text || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((v_recibos_conjuntos.cedula)::text, 11, '0'::text)) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 13, '0'::text)) || '0000000000000'::text) AS plano\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.formapago)::integer = 1)\n  GROUP BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial, v_recibos_conjuntos.id_grupo_nomina, v_recibos_conjuntos.gruponomina, v_recibos_conjuntos.semana_quincena, v_recibos_conjuntos.mes, v_recibos_conjuntos.anio, v_recibos_conjuntos.cuenta_nomina\n  ORDER BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial, v_recibos_conjuntos.id_grupo_nomina, v_recibos_conjuntos.gruponomina, v_recibos_conjuntos.semana_quincena, v_recibos_conjuntos.mes, v_recibos_conjuntos.anio, (sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)), (((('770'::text || (v_recibos_conjuntos.cuenta_nomina)::text) || lpad((v_recibos_conjuntos.cedula)::text, 11, '0'::text)) || lpad((round(((sum(v_recibos_conjuntos.asigna) - sum(v_recibos_conjuntos.deduce)) * (100)::double precision)))::text, 13, '0'::text)) || '0000000000000'::text)");

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
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RN4t9xGn+mqT/alIwQe4Lg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
