use utf8;
package SRRHH::Schema::Result::VTmpRecibosUnificado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VTmpRecibosUnificado

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

=head1 TABLE: C<v_tmp_recibos_unificados>

=cut

__PACKAGE__->table("v_tmp_recibos_unificados");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.nacionalidad,\n    v_recibos_conjuntos.tipopersonal,\n    v_recibos_conjuntos.id_nomina_especial,\n    v_recibos_conjuntos.numero_nomina,\n    v_recibos_conjuntos.nomina_especial,\n    v_recibos_conjuntos.cod_presupuesto AS co_clasificador_presupuestario,\n    v_recibos_conjuntos.codcon,\n    v_recibos_conjuntos.descon,\n    (v_recibos_conjuntos.asigna - v_recibos_conjuntos.deduce) AS bs_monto\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.mes = 12) AND (v_recibos_conjuntos.anio = 2012) AND (v_recibos_conjuntos.semana_quincena = 2) AND ((v_recibos_conjuntos.formapago)::integer = 2) AND (v_recibos_conjuntos.numero_nomina = 0))\nUNION\n SELECT v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.nacionalidad,\n    v_recibos_conjuntos.tipopersonal,\n    v_recibos_conjuntos.id_nomina_especial,\n    v_recibos_conjuntos.numero_nomina,\n    v_recibos_conjuntos.nomina_especial,\n    v_recibos_conjuntos.cod_presupuesto AS co_clasificador_presupuestario,\n    v_recibos_conjuntos.codcon,\n    v_recibos_conjuntos.descon,\n    (v_recibos_conjuntos.asigna - v_recibos_conjuntos.deduce) AS bs_monto\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.anio = 2012) AND (v_recibos_conjuntos.semana_quincena = 1) AND ((v_recibos_conjuntos.formapago)::integer = 2) AND (v_recibos_conjuntos.id_nomina_especial = ANY (ARRAY[2058, 2059, 2110, 2111, 2170, 2171, 2053, 2114])))");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 co_clasificador_presupuestario

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 bs_monto

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "co_clasificador_presupuestario",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "bs_monto",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q7BK9LHr4GPQO75+9XDvTA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
