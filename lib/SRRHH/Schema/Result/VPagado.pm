use utf8;
package SRRHH::Schema::Result::VPagado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VPagado

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

=head1 TABLE: C<v_pagado>

=cut

__PACKAGE__->table("v_pagado");
__PACKAGE__->result_source_instance->view_definition(" SELECT DISTINCT v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.tipopersonal,\n    v_recibos_conjuntos.cod_presupuesto,\n    v_recibos_conjuntos.descripcion_presupuesto,\n    v_recibos_conjuntos.codcon,\n    v_recibos_conjuntos.descon,\n    sum(v_recibos_conjuntos.asigna) AS asigna,\n    sum(v_recibos_conjuntos.deduce) AS deduce\n   FROM v_recibos_conjuntos\n  GROUP BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.cod_presupuesto, v_recibos_conjuntos.descripcion_presupuesto, v_recibos_conjuntos.codcon, v_recibos_conjuntos.descon\n  ORDER BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.tipopersonal, v_recibos_conjuntos.cod_presupuesto, v_recibos_conjuntos.descripcion_presupuesto, v_recibos_conjuntos.codcon, v_recibos_conjuntos.descon, (sum(v_recibos_conjuntos.asigna)), (sum(v_recibos_conjuntos.deduce))");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 descripcion_presupuesto

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 asigna

  data_type: 'double precision'
  is_nullable: 1

=head2 deduce

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "descripcion_presupuesto",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "asigna",
  { data_type => "double precision", is_nullable => 1 },
  "deduce",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:23baq4KnHRDx3d2X9Mk+0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
