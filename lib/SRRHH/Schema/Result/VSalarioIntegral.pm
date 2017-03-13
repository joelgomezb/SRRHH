use utf8;
package SRRHH::Schema::Result::VSalarioIntegral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VSalarioIntegral

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

=head1 TABLE: C<v_salario_integral>

=cut

__PACKAGE__->table("v_salario_integral");
__PACKAGE__->result_source_instance->view_definition(" SELECT tp.nombre AS tipopersonal,\n    t.cedula,\n    (((((((p.primer_nombre)::text || ' '::text) || (p.segundo_nombre)::text) || ' '::text) || (p.primer_apellido)::text) || ' '::text) || (p.segundo_apellido)::text) AS trabajador,\n    t.fecha_ingreso AS ingreso,\n    t.fecha_vacaciones AS vacaciones,\n    t.fecha_ingreso_apn AS ingreso_apn,\n    cf.monto AS integral_mensual\n   FROM personal p,\n    trabajador t,\n    tipopersonal tp,\n    concepto c,\n    conceptotipopersonal ctp,\n    conceptofijo cf\n  WHERE ((p.cedula = t.cedula) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (t.id_trabajador = cf.id_trabajador) AND (c.id_concepto = ctp.id_concepto) AND (cf.id_concepto_tipo_personal = ctp.id_concepto_tipo_personal) AND ((c.cod_concepto)::integer = 615) AND ((t.estatus)::text = 'A'::text))\n  ORDER BY tp.id_tipo_personal, p.cedula");

=head1 ACCESSORS

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 ingreso

  data_type: 'date'
  is_nullable: 1

=head2 vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 integral_mensual

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "ingreso",
  { data_type => "date", is_nullable => 1 },
  "vacaciones",
  { data_type => "date", is_nullable => 1 },
  "ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "integral_mensual",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N6FT0Ek+wZaB4K+dufagGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
