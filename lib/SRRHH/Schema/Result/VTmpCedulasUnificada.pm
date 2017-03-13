use utf8;
package SRRHH::Schema::Result::VTmpCedulasUnificada;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VTmpCedulasUnificada

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

=head1 TABLE: C<v_tmp_cedulas_unificadas>

=cut

__PACKAGE__->table("v_tmp_cedulas_unificadas");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT uno.cedula,\n    count(*) AS count\n   FROM (( SELECT DISTINCT v_recibos_conjuntos.cedula,\n            v_recibos_conjuntos.tipopersonal,\n            v_recibos_conjuntos.id_nomina_especial,\n            v_recibos_conjuntos.numero_nomina,\n            v_recibos_conjuntos.nomina_especial\n           FROM v_recibos_conjuntos\n          WHERE ((v_recibos_conjuntos.mes = 12) AND (v_recibos_conjuntos.anio = 2012) AND (v_recibos_conjuntos.semana_quincena = 2) AND ((v_recibos_conjuntos.formapago)::integer = 2) AND (v_recibos_conjuntos.numero_nomina = 0))\n          ORDER BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.id_nomina_especial, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial)\n        UNION ALL\n        ( SELECT DISTINCT v_recibos_conjuntos.cedula,\n            v_recibos_conjuntos.tipopersonal,\n            v_recibos_conjuntos.id_nomina_especial,\n            v_recibos_conjuntos.numero_nomina,\n            v_recibos_conjuntos.nomina_especial\n           FROM v_recibos_conjuntos\n          WHERE ((v_recibos_conjuntos.anio = 2012) AND (v_recibos_conjuntos.semana_quincena = 1) AND ((v_recibos_conjuntos.formapago)::integer = 2) AND (v_recibos_conjuntos.id_nomina_especial = ANY (ARRAY[2058, 2059, 2110, 2111, 2170, 2171, 2053, 2114])))\n          ORDER BY v_recibos_conjuntos.cedula, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.id_nomina_especial, v_recibos_conjuntos.numero_nomina, v_recibos_conjuntos.nomina_especial)) uno\n  GROUP BY uno.cedula\n  ORDER BY uno.cedula, (count(*))");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 count

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "count",
  { data_type => "bigint", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rmWOHjV1eS4CPdEv74JwVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
