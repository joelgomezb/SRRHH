use utf8;
package SRRHH::Schema::Result::VFaov;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VFaov

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

=head1 TABLE: C<v_faov>

=cut

__PACKAGE__->table("v_faov");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    ((((((((((((((((((v_recibos_conjuntos.nacionalidad)::text || ','::text) || v_recibos_conjuntos.cedula) || ','::text) || (v_recibos_conjuntos.primer_nombre)::text) || ','::text) || (v_recibos_conjuntos.segundo_nombre)::text) || ','::text) || (v_recibos_conjuntos.primer_apellido)::text) || ','::text) || (v_recibos_conjuntos.segundo_apellido)::text) || ','::text) || (sum((v_recibos_conjuntos.deduce * (100)::double precision)) * (100)::double precision)) || ','::text) || lpad((date_part('day'::text, v_recibos_conjuntos.ingresoorganismo))::text, 2, '0'::text)) || lpad((date_part('month'::text, v_recibos_conjuntos.ingresoorganismo))::text, 2, '0'::text)) || lpad((date_part('year'::text, v_recibos_conjuntos.ingresoorganismo))::text, 4, '0'::text)) || ','::text) AS faov\n   FROM v_recibos_conjuntos\n  WHERE (((v_recibos_conjuntos.codcon)::integer = 5003) OR ((v_recibos_conjuntos.codcon)::integer = 5013))\n  GROUP BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.nacionalidad, v_recibos_conjuntos.cedula, v_recibos_conjuntos.primer_nombre, v_recibos_conjuntos.segundo_nombre, v_recibos_conjuntos.primer_apellido, v_recibos_conjuntos.segundo_apellido, v_recibos_conjuntos.ingresoorganismo");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 faov

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "faov",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xrUEzO4gMSujp2MIicGD1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
