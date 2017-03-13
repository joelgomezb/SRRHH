use utf8;
package SRRHH::Schema::Result::Cronologico;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cronologico

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

=head1 TABLE: C<cronologico>

=cut

__PACKAGE__->table("cronologico");
__PACKAGE__->result_source_instance->view_definition(" SELECT c.anio,\n    c.cedula,\n    c.trabajador,\n    c.cargo,\n    to_char(c.codigo, '0000'::text) AS codigo,\n    c.concepto,\n    COALESCE(sum(c.enero), (0)::numeric) AS enero,\n    COALESCE(sum(c.febrero), (0)::numeric) AS febrero,\n    COALESCE(sum(c.marzo), (0)::numeric) AS marzo,\n    COALESCE(sum(c.abril), (0)::numeric) AS abril,\n    COALESCE(sum(c.mayo), (0)::numeric) AS mayo,\n    COALESCE(sum(c.junio), (0)::numeric) AS junio,\n    COALESCE(sum(c.julio), (0)::numeric) AS julio,\n    COALESCE(sum(c.agosto), (0)::numeric) AS agosto,\n    COALESCE(sum(c.septiembre), (0)::numeric) AS septiembre,\n    COALESCE(sum(c.octubre), (0)::numeric) AS octubre,\n    COALESCE(sum(c.noviembre), (0)::numeric) AS noviembre,\n    COALESCE(sum(c.diciembre), (0)::numeric) AS diciembre\n   FROM ( SELECT crosstab.anio,\n            crosstab.cedula,\n            crosstab.trabajador,\n            crosstab.cargo,\n            crosstab.codigo,\n            crosstab.concepto,\n            crosstab.enero,\n            crosstab.febrero,\n            crosstab.marzo,\n            crosstab.abril,\n            crosstab.mayo,\n            crosstab.junio,\n            crosstab.julio,\n            crosstab.agosto,\n            crosstab.septiembre,\n            crosstab.octubre,\n            crosstab.noviembre,\n            crosstab.diciembre\n           FROM crosstab(' select anio, cedula, trabajador, cargo, codigo, concepto, mes, sum(monto) as monto from (\nselect c.cod_concepto::integer as codigo, (c.descripcion)::character varying as concepto, hn.anio,\nhn.mes::integer as mes, p.cedula, \np.primer_nombre||'' ''||segundo_nombre||'' ''||primer_apellido||'' ''||segundo_apellido as trabajador,\nca.descripcion_cargo as cargo,\nsum(hq.monto_asigna+hq.monto_deduce)::numeric as monto\nfrom personal p left join trabajador t on (p.id_personal = t.id_personal)\nleft join historiconomina hn on (t.id_trabajador = hn.id_trabajador) \nleft join dependencia d on (hn.id_dependencia = d.id_dependencia)\nleft join cargo ca on (hn.id_cargo = ca.id_cargo)\nleft join tipopersonal tp on (tp.id_tipo_personal = hn.id_tipo_personal)\nleft join historicoquincena hq on (hn.id_historico_nomina = hq.id_historico_nomina)\nleft join conceptotipopersonal ctp on (hq.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal)\nleft join concepto c on (c.id_concepto = ctp.id_concepto)\nwhere ctp.id_concepto_tipo_personal in (select ctp.id_concepto_tipo_personal from conceptoprestaciones cp \nleft join conceptotipopersonal ctp on (cp.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal) \nleft join concepto c on (c.id_concepto = ctp.id_concepto)\nleft join tipopersonal tp on (cp.id_tipo_personal = tp.id_tipo_personal)\norder by 1)\ngroup by  c.cod_concepto, c.descripcion, p.cedula, \np.primer_nombre||'' ''||segundo_nombre||'' ''||primer_apellido||'' ''||segundo_apellido,\nca.descripcion_cargo, hn.anio, hn.mes \nORDER BY c.cod_concepto::integer) as a \ngroup by codigo, concepto, cedula, trabajador, cargo, anio, mes '::text, ' SELECT m FROM generate_series(1,12) m '::text) crosstab(anio integer, cedula integer, trabajador character varying, cargo character varying, codigo integer, concepto character varying, enero numeric, febrero numeric, marzo numeric, abril numeric, mayo numeric, junio numeric, julio numeric, agosto numeric, septiembre numeric, octubre numeric, noviembre numeric, diciembre numeric)\n          ORDER BY crosstab.anio, crosstab.cargo, crosstab.codigo) c\n  GROUP BY c.anio, c.cedula, c.trabajador, c.cargo, c.codigo, c.concepto\n  ORDER BY c.anio, c.cargo, c.codigo");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codigo

  data_type: 'text'
  is_nullable: 1

=head2 concepto

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 enero

  data_type: 'numeric'
  is_nullable: 1

=head2 febrero

  data_type: 'numeric'
  is_nullable: 1

=head2 marzo

  data_type: 'numeric'
  is_nullable: 1

=head2 abril

  data_type: 'numeric'
  is_nullable: 1

=head2 mayo

  data_type: 'numeric'
  is_nullable: 1

=head2 junio

  data_type: 'numeric'
  is_nullable: 1

=head2 julio

  data_type: 'numeric'
  is_nullable: 1

=head2 agosto

  data_type: 'numeric'
  is_nullable: 1

=head2 septiembre

  data_type: 'numeric'
  is_nullable: 1

=head2 octubre

  data_type: 'numeric'
  is_nullable: 1

=head2 noviembre

  data_type: 'numeric'
  is_nullable: 1

=head2 diciembre

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codigo",
  { data_type => "text", is_nullable => 1 },
  "concepto",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "enero",
  { data_type => "numeric", is_nullable => 1 },
  "febrero",
  { data_type => "numeric", is_nullable => 1 },
  "marzo",
  { data_type => "numeric", is_nullable => 1 },
  "abril",
  { data_type => "numeric", is_nullable => 1 },
  "mayo",
  { data_type => "numeric", is_nullable => 1 },
  "junio",
  { data_type => "numeric", is_nullable => 1 },
  "julio",
  { data_type => "numeric", is_nullable => 1 },
  "agosto",
  { data_type => "numeric", is_nullable => 1 },
  "septiembre",
  { data_type => "numeric", is_nullable => 1 },
  "octubre",
  { data_type => "numeric", is_nullable => 1 },
  "noviembre",
  { data_type => "numeric", is_nullable => 1 },
  "diciembre",
  { data_type => "numeric", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nuV8GNHY5xXCsjW8p1nLbw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
