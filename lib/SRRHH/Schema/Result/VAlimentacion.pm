use utf8;
package SRRHH::Schema::Result::VAlimentacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VAlimentacion

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

=head1 TABLE: C<v_alimentacion>

=cut

__PACKAGE__->table("v_alimentacion");
__PACKAGE__->result_source_instance->view_definition(" SELECT v_recibos_conjuntos.mes,\n    v_recibos_conjuntos.anio,\n    v_recibos_conjuntos.id_nomina_especial,\n    v_recibos_conjuntos.cedula,\n    v_recibos_conjuntos.nomina_especial,\n    v_recibos_conjuntos.id_grupo_nomina,\n    v_recibos_conjuntos.gruponomina,\n    sum((v_recibos_conjuntos.asigna - v_recibos_conjuntos.deduce)) AS monto,\n    ((((((((v_recibos_conjuntos.nacionalidad)::text || ';'::text) || (v_recibos_conjuntos.cedula)::text) || ';'::text) || replace(rpad((((v_recibos_conjuntos.primer_nombre)::text || ' '::text) || (v_recibos_conjuntos.primer_apellido)::text), 20, ''::text), '\xD1'::text, 'N'::text)) || ';150008;RRHH;'::text) || btrim(to_char((sum((v_recibos_conjuntos.asigna - v_recibos_conjuntos.deduce)))::real, '99999D00'::text), ' '::text)) || ';A;'::text) AS abs\n   FROM v_recibos_conjuntos\n  WHERE ((v_recibos_conjuntos.nomina_especial)::text ~~ '%ALIMEN%'::text)\n  GROUP BY v_recibos_conjuntos.mes, v_recibos_conjuntos.anio, v_recibos_conjuntos.id_nomina_especial, v_recibos_conjuntos.cedula, v_recibos_conjuntos.nomina_especial, v_recibos_conjuntos.id_grupo_nomina, v_recibos_conjuntos.gruponomina, v_recibos_conjuntos.nacionalidad, v_recibos_conjuntos.primer_nombre, v_recibos_conjuntos.primer_apellido, v_recibos_conjuntos.cod_unidad_ejecutora, v_recibos_conjuntos.uel\n  ORDER BY v_recibos_conjuntos.anio, v_recibos_conjuntos.mes, v_recibos_conjuntos.cedula");

=head1 ACCESSORS

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

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

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 abs

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
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
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "abs",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gj5k61nHJukWfMT5LGLehQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
