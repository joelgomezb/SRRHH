use utf8;
package SRRHH::Schema::Result::VNominaIvss;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VNominaIvss

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

=head1 TABLE: C<v_nomina_ivss>

=cut

__PACKAGE__->table("v_nomina_ivss");
__PACKAGE__->result_source_instance->view_definition(" SELECT (((p.primer_nombre)::text || ' '::text) || (p.segundo_nombre)::text) AS nombres,\n    (((p.primer_apellido)::text || ' '::text) || (p.segundo_apellido)::text) AS apellidos,\n    p.nacionalidad,\n    p.cedula,\n    to_char((p.fecha_nacimiento)::timestamp with time zone, 'DD'::text) AS nacimiento_dia,\n    to_char((p.fecha_nacimiento)::timestamp with time zone, 'MM'::text) AS nacimiento_mes,\n    to_char((p.fecha_nacimiento)::timestamp with time zone, 'YYYY'::text) AS nacimiento_anio,\n    p.sexo,\n    to_char((t.fecha_ingreso)::timestamp with time zone, 'DD'::text) AS ingreso_dia,\n    to_char((t.fecha_ingreso)::timestamp with time zone, 'MM'::text) AS ingreso_mes,\n    to_char((t.fecha_ingreso)::timestamp with time zone, 'YYYY'::text) AS ingreso_anio,\n    t.sueldo_basico,\n    tp.id_tipo_personal,\n    tp.nombre AS tipo_personal\n   FROM trabajador t,\n    personal p,\n    cargo c,\n    tipopersonal tp,\n    gruponomina gn,\n    dependencia d,\n    administradorauel aue,\n    unidadadministradora uad\n  WHERE ((tp.id_tipo_personal <> ALL (ARRAY[62, 121, 22])) AND (t.id_personal = p.id_personal) AND ((t.id_cargo)::text = (c.id_cargo)::text) AND (t.id_tipo_personal = tp.id_tipo_personal) AND (tp.id_grupo_nomina = gn.id_grupo_nomina) AND (t.id_dependencia = d.id_dependencia) AND (aue.id_administradora_uel = d.id_administradora_uel) AND (uad.id_unidad_administradora = aue.id_unidad_administradora) AND ((t.estatus)::text = 'A'::text))\n  ORDER BY p.cedula");

=head1 ACCESSORS

=head2 nombres

  data_type: 'text'
  is_nullable: 1

=head2 apellidos

  data_type: 'text'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nacimiento_dia

  data_type: 'text'
  is_nullable: 1

=head2 nacimiento_mes

  data_type: 'text'
  is_nullable: 1

=head2 nacimiento_anio

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 ingreso_dia

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_mes

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_anio

  data_type: 'text'
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=cut

__PACKAGE__->add_columns(
  "nombres",
  { data_type => "text", is_nullable => 1 },
  "apellidos",
  { data_type => "text", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nacimiento_dia",
  { data_type => "text", is_nullable => 1 },
  "nacimiento_mes",
  { data_type => "text", is_nullable => 1 },
  "nacimiento_anio",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "ingreso_dia",
  { data_type => "text", is_nullable => 1 },
  "ingreso_mes",
  { data_type => "text", is_nullable => 1 },
  "ingreso_anio",
  { data_type => "text", is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IQV/MCOWfp39lH71KcjR0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
