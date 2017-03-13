use utf8;
package SRRHH::Schema::Result::VFju;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VFju

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

=head1 TABLE: C<v_fju>

=cut

__PACKAGE__->table("v_fju");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.id_tipo_personal,\n    sum(v_recibos_conjuntos.monto_aporte) AS monto,\n    (((((((((((((v_recibos_conjuntos.cedula)::text || '|'::text) || to_char(((date_trunc('month'::text, ((((((v_recibos_conjuntos.anio)::text || '-'::text) || (v_recibos_conjuntos.mes)::text) || '-'::text) || '01'::text))::timestamp with time zone) + '1 mon'::interval) - '1 day'::interval), 'dd/mm/yyyy'::text)) || '|'::text) || lpad((((v_recibos_conjuntos.primer_nombre)::text || ' '::text) || (v_recibos_conjuntos.primer_apellido)::text), 21, ''::text)) || '|'::text) || lpad('01010131'::text, 8, '0'::text)) || '|'::text) || to_char(sum(((v_recibos_conjuntos.deduce / (3)::double precision) * (100)::double precision)), 'FM999999.00'::text)) || '|'::text) || to_char(sum(v_recibos_conjuntos.monto_aporte), 'FM9999.00'::text)) || '|'::text) || to_char(sum(v_recibos_conjuntos.deduce), 'FM9999.00'::text)) AS fju\n   FROM v_recibos_conjuntos\n  WHERE (((v_recibos_conjuntos.codcon)::integer = 5004) OR ((v_recibos_conjuntos.codcon)::integer = 5014))\n  GROUP BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.id_tipo_personal, v_recibos_conjuntos.cedula, (to_char(((date_trunc('month'::text, ((((((v_recibos_conjuntos.anio)::text || '-'::text) || (v_recibos_conjuntos.mes)::text) || '-'::text) || '01'::text))::timestamp with time zone) + '1 mon'::interval) - '1 day'::interval), 'dd/mm/yyyy'::text)), v_recibos_conjuntos.primer_nombre, v_recibos_conjuntos.primer_apellido");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 fju

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "fju",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5N61lg6kzXT4CWDyxA5QPA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
