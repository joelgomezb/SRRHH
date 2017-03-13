use utf8;
package SRRHH::Schema::Result::VProgramasEspeciale;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VProgramasEspeciale

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

=head1 TABLE: C<v_programas_especiales>

=cut

__PACKAGE__->table("v_programas_especiales");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5203) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS hipotecario,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5204) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS cuota_especial_hipotecaria,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5207) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS remodelacion,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5205) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS vehiculo,\n    to_char((((sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5203) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5204) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5207) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5205) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)), 'LFM9,999,999.99'::text) AS total\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.anio = 2013) AND (((v_recibos_conjuntos.codcon)::integer = 5203) OR ((v_recibos_conjuntos.codcon)::integer = 5204) OR ((v_recibos_conjuntos.codcon)::integer = 5205) OR ((v_recibos_conjuntos.codcon)::integer = 5207)))\n  GROUP BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes\nUNION ALL\n SELECT v_recibos_conjuntos.anio,\n    0 AS mes,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5203) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS hipotecario,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5204) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS cuota_especial_hipotecaria,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5207) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS remodelacion,\n    to_char(sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5205) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END), 'LFM9,999,999.99'::text) AS vehiculo,\n    to_char((((sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5203) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5204) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5207) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN ((v_recibos_conjuntos.codcon)::integer = 5205) THEN v_recibos_conjuntos.deduce\n            ELSE (0)::double precision\n        END)), 'LFM9,999,999.99'::text) AS total\n   FROM v_recibos_conjuntos\n  WHERE (((v_recibos_conjuntos.codcon)::integer = 5203) OR ((v_recibos_conjuntos.codcon)::integer = 5204) OR ((v_recibos_conjuntos.codcon)::integer = 5205) OR ((v_recibos_conjuntos.codcon)::integer = 5207))\n  GROUP BY v_recibos_conjuntos.anio\n  ORDER BY 1");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 hipotecario

  data_type: 'text'
  is_nullable: 1

=head2 cuota_especial_hipotecaria

  data_type: 'text'
  is_nullable: 1

=head2 remodelacion

  data_type: 'text'
  is_nullable: 1

=head2 vehiculo

  data_type: 'text'
  is_nullable: 1

=head2 total

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "hipotecario",
  { data_type => "text", is_nullable => 1 },
  "cuota_especial_hipotecaria",
  { data_type => "text", is_nullable => 1 },
  "remodelacion",
  { data_type => "text", is_nullable => 1 },
  "vehiculo",
  { data_type => "text", is_nullable => 1 },
  "total",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eN5preAq+dSmEQ9ddv05Dg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
