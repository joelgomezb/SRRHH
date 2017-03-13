use utf8;
package SRRHH::Schema::Result::VAcumuladoAnual;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VAcumuladoAnual

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

=head1 TABLE: C<v_acumulado_anual>

=cut

__PACKAGE__->table("v_acumulado_anual");
__PACKAGE__->result_source_instance->view_definition(" SELECT acumulado.anio,\n    acumulado.mes,\n    acumulado.codtno,\n    acumulado.tipopersonal,\n    acumulado.base_legal,\n    acumulado.codcon,\n    acumulado.descon,\n    acumulado.cargo,\n    acumulado.sexo,\n    acumulado.nombreunidad,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 1) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS enero,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 2) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS febrero,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 3) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS marzo,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 4) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS abril,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 5) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS mayo,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 6) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS junio,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 7) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS julio,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 8) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS agosto,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 9) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS septiembre,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 10) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS octubre,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 11) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS noviembre,\n    sum(\n        CASE\n            WHEN (acumulado.mes = 12) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) AS diciembre,\n    (((((((((((sum(\n        CASE\n            WHEN (acumulado.mes = 1) THEN acumulado.monto\n            ELSE (0)::double precision\n        END) + sum(\n        CASE\n            WHEN (acumulado.mes = 2) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 3) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 4) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 5) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 6) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 7) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 8) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 9) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 10) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 11) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) + sum(\n        CASE\n            WHEN (acumulado.mes = 12) THEN acumulado.monto\n            ELSE (0)::double precision\n        END)) AS total\n   FROM ( SELECT total.anio,\n            total.mes,\n            total.codtno,\n            total.tipopersonal,\n            total.base_legal,\n            total.codcon,\n            total.descon,\n            total.cargo,\n            total.sexo,\n            total.nombreunidad,\n            sum(total.sum) AS monto\n           FROM (( SELECT DISTINCT v_recibos_especial.anio,\n                    v_recibos_especial.mes,\n                    v_recibos_especial.codtno,\n                    v_recibos_especial.tipopersonal,\n                    v_recibos_especial.cargo,\n                    v_recibos_especial.sexo,\n                    v_recibos_especial.nombreunidad,\n                    v_recibos_especial.base_legal,\n                    v_recibos_especial.codcon,\n                    v_recibos_especial.descon,\n                    sum((v_recibos_especial.asigna + v_recibos_especial.deduce)) AS sum\n                   FROM v_recibos_especial\n                  GROUP BY v_recibos_especial.anio, v_recibos_especial.mes, v_recibos_especial.codtno, v_recibos_especial.tipopersonal, v_recibos_especial.cargo, v_recibos_especial.sexo, v_recibos_especial.nombreunidad, v_recibos_especial.base_legal, v_recibos_especial.codcon, v_recibos_especial.descon\n                  ORDER BY v_recibos_especial.anio, v_recibos_especial.mes, v_recibos_especial.codtno, v_recibos_especial.tipopersonal, v_recibos_especial.cargo, v_recibos_especial.sexo, v_recibos_especial.nombreunidad, v_recibos_especial.base_legal, v_recibos_especial.codcon, v_recibos_especial.descon, (sum((v_recibos_especial.asigna + v_recibos_especial.deduce))))\n                UNION ALL\n                ( SELECT DISTINCT v_recibos_quincena.anio,\n                    v_recibos_quincena.mes,\n                    v_recibos_quincena.codtno,\n                    v_recibos_quincena.tipopersonal,\n                    v_recibos_quincena.cargo,\n                    v_recibos_quincena.sexo,\n                    v_recibos_quincena.nombreunidad,\n                    v_recibos_quincena.base_legal,\n                    v_recibos_quincena.codcon,\n                    v_recibos_quincena.descon,\n                    sum((v_recibos_quincena.asigna + v_recibos_quincena.deduce)) AS monto\n                   FROM v_recibos_quincena\n                  GROUP BY v_recibos_quincena.anio, v_recibos_quincena.mes, v_recibos_quincena.codtno, v_recibos_quincena.tipopersonal, v_recibos_quincena.cargo, v_recibos_quincena.sexo, v_recibos_quincena.nombreunidad, v_recibos_quincena.base_legal, v_recibos_quincena.codcon, v_recibos_quincena.descon\n                  ORDER BY v_recibos_quincena.anio, v_recibos_quincena.mes, v_recibos_quincena.codtno, v_recibos_quincena.tipopersonal, v_recibos_quincena.cargo, v_recibos_quincena.sexo, v_recibos_quincena.nombreunidad, v_recibos_quincena.base_legal, v_recibos_quincena.codcon, v_recibos_quincena.descon, (sum((v_recibos_quincena.asigna + v_recibos_quincena.deduce))))) total\n          GROUP BY total.anio, total.mes, total.codtno, total.tipopersonal, total.base_legal, total.codcon, total.descon, total.cargo, total.sexo, total.nombreunidad\n          ORDER BY total.anio, total.mes, total.codtno, total.tipopersonal, total.base_legal, total.codcon, total.descon, total.cargo, total.sexo, total.nombreunidad) acumulado\n  GROUP BY acumulado.anio, acumulado.mes, acumulado.codtno, acumulado.tipopersonal, acumulado.base_legal, acumulado.codcon, acumulado.descon, acumulado.cargo, acumulado.sexo, acumulado.nombreunidad\n  ORDER BY acumulado.anio, acumulado.mes, acumulado.codtno, acumulado.tipopersonal, acumulado.base_legal, acumulado.codcon, acumulado.descon, acumulado.cargo, acumulado.sexo, acumulado.nombreunidad");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombreunidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 enero

  data_type: 'double precision'
  is_nullable: 1

=head2 febrero

  data_type: 'double precision'
  is_nullable: 1

=head2 marzo

  data_type: 'double precision'
  is_nullable: 1

=head2 abril

  data_type: 'double precision'
  is_nullable: 1

=head2 mayo

  data_type: 'double precision'
  is_nullable: 1

=head2 junio

  data_type: 'double precision'
  is_nullable: 1

=head2 julio

  data_type: 'double precision'
  is_nullable: 1

=head2 agosto

  data_type: 'double precision'
  is_nullable: 1

=head2 septiembre

  data_type: 'double precision'
  is_nullable: 1

=head2 octubre

  data_type: 'double precision'
  is_nullable: 1

=head2 noviembre

  data_type: 'double precision'
  is_nullable: 1

=head2 diciembre

  data_type: 'double precision'
  is_nullable: 1

=head2 total

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "enero",
  { data_type => "double precision", is_nullable => 1 },
  "febrero",
  { data_type => "double precision", is_nullable => 1 },
  "marzo",
  { data_type => "double precision", is_nullable => 1 },
  "abril",
  { data_type => "double precision", is_nullable => 1 },
  "mayo",
  { data_type => "double precision", is_nullable => 1 },
  "junio",
  { data_type => "double precision", is_nullable => 1 },
  "julio",
  { data_type => "double precision", is_nullable => 1 },
  "agosto",
  { data_type => "double precision", is_nullable => 1 },
  "septiembre",
  { data_type => "double precision", is_nullable => 1 },
  "octubre",
  { data_type => "double precision", is_nullable => 1 },
  "noviembre",
  { data_type => "double precision", is_nullable => 1 },
  "diciembre",
  { data_type => "double precision", is_nullable => 1 },
  "total",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1FTv38VVVUrrOrrqDHsK3A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
