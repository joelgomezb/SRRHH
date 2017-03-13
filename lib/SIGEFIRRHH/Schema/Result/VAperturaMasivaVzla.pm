use utf8;
package SIGEFIRRHH::Schema::Result::VAperturaMasivaVzla;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VAperturaMasivaVzla

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

=head1 TABLE: C<v_apertura_masiva_vzla>

=cut

__PACKAGE__->table("v_apertura_masiva_vzla");

=head1 ACCESSORS

=head2 tipo_documento

  data_type: 'text'
  is_nullable: 1

=head2 nro_documento

  data_type: 'text'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1

=head2 nombre_completo

  data_type: 'text'
  is_nullable: 1

=head2 edo_civil

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'text'
  is_nullable: 1

=head2 fecha_nacimiento

  data_type: 'text'
  is_nullable: 1

=head2 tipo_ocupacion

  data_type: 'text'
  is_nullable: 1

=head2 tipo_via

  data_type: 'text'
  is_nullable: 1

=head2 descripcion_via

  data_type: 'text'
  is_nullable: 1

=head2 tipo_vivienda

  data_type: 'text'
  is_nullable: 1

=head2 nombre_vivienda

  data_type: 'text'
  is_nullable: 1

=head2 punto_referencia

  data_type: 'text'
  is_nullable: 1

=head2 tipo_nucleo

  data_type: 'text'
  is_nullable: 1

=head2 descripcion_nucleo

  data_type: 'text'
  is_nullable: 1

=head2 estado

  data_type: 'text'
  is_nullable: 1

=head2 ciudad

  data_type: 'text'
  is_nullable: 1

=head2 municipio

  data_type: 'text'
  is_nullable: 1

=head2 zona_postal

  data_type: 'text'
  is_nullable: 1

=head2 cod_area

  data_type: 'text'
  is_nullable: 1

=head2 nro_telefono

  data_type: 'text'
  is_nullable: 1

=head2 cod_area_fax

  data_type: 'text'
  is_nullable: 1

=head2 fax

  data_type: 'text'
  is_nullable: 1

=head2 celular

  data_type: 'text'
  is_nullable: 1

=head2 correo

  data_type: 'text'
  is_nullable: 1

=head2 cargo_empresa

  data_type: 'text'
  is_nullable: 1

=head2 actividad_economica

  data_type: 'text'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_mensual

  data_type: 'text'
  is_nullable: 1

=head2 accion

  data_type: 'text'
  is_nullable: 1

=head2 tipo_empleado

  data_type: 'text'
  is_nullable: 1

=head2 cod_area_tlf_oficina

  data_type: 'text'
  is_nullable: 1

=head2 nro_tlf_oficina

  data_type: 'text'
  is_nullable: 1

=head2 indicador_tipo_cta

  data_type: 'text'
  is_nullable: 1

=head2 codigo_ficina

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tipo_documento",
  { data_type => "text", is_nullable => 1 },
  "nro_documento",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nombre_completo",
  { data_type => "text", is_nullable => 1 },
  "edo_civil",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "text", is_nullable => 1 },
  "fecha_nacimiento",
  { data_type => "text", is_nullable => 1 },
  "tipo_ocupacion",
  { data_type => "text", is_nullable => 1 },
  "tipo_via",
  { data_type => "text", is_nullable => 1 },
  "descripcion_via",
  { data_type => "text", is_nullable => 1 },
  "tipo_vivienda",
  { data_type => "text", is_nullable => 1 },
  "nombre_vivienda",
  { data_type => "text", is_nullable => 1 },
  "punto_referencia",
  { data_type => "text", is_nullable => 1 },
  "tipo_nucleo",
  { data_type => "text", is_nullable => 1 },
  "descripcion_nucleo",
  { data_type => "text", is_nullable => 1 },
  "estado",
  { data_type => "text", is_nullable => 1 },
  "ciudad",
  { data_type => "text", is_nullable => 1 },
  "municipio",
  { data_type => "text", is_nullable => 1 },
  "zona_postal",
  { data_type => "text", is_nullable => 1 },
  "cod_area",
  { data_type => "text", is_nullable => 1 },
  "nro_telefono",
  { data_type => "text", is_nullable => 1 },
  "cod_area_fax",
  { data_type => "text", is_nullable => 1 },
  "fax",
  { data_type => "text", is_nullable => 1 },
  "celular",
  { data_type => "text", is_nullable => 1 },
  "correo",
  { data_type => "text", is_nullable => 1 },
  "cargo_empresa",
  { data_type => "text", is_nullable => 1 },
  "actividad_economica",
  { data_type => "text", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "text", is_nullable => 1 },
  "ingreso_mensual",
  { data_type => "text", is_nullable => 1 },
  "accion",
  { data_type => "text", is_nullable => 1 },
  "tipo_empleado",
  { data_type => "text", is_nullable => 1 },
  "cod_area_tlf_oficina",
  { data_type => "text", is_nullable => 1 },
  "nro_tlf_oficina",
  { data_type => "text", is_nullable => 1 },
  "indicador_tipo_cta",
  { data_type => "text", is_nullable => 1 },
  "codigo_ficina",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sR99eVGin8IbnL4K2ZF4vg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
