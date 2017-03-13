use utf8;
package SIGEFIRRHH::Schema::Result::Trayectoria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Trayectoria

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

=head1 TABLE: C<trayectoria>

=cut

__PACKAGE__->table("trayectoria");

=head1 ACCESSORS

=head2 id_trayectoria

  data_type: 'integer'
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 anio_preparacion

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 fecha_preparacion

  data_type: 'date'
  is_nullable: 1

=head2 codigo_anterior_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 numero_remesa

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 numero_movimiento

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 correlativo_mpd

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_corto

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombre_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_estatus

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 cod_ubi_geografico

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 estado

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 ciudad

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 municipio

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 cod_region

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nombre_region

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cod_causa_movimiento

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 descripcion_movimiento

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 nombre_corto_grupo

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombre_largo_grupo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 caucion

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cod_manual_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_relacion

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 desc_relacion

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cod_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 desc_categoria

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nombramiento

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 monto_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 porc_jubilacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 sueldo_promedio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_jubilacion_sobrev

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 porc_pension_sobrev

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_pension_sobrev

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_pension_invalid

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 porc_pension_invalid

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 invalidez_sact

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_jerarquia

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_servicio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 ajuste_sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 otros_pagos

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 otros_no_vicepladin

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 primas_cargo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 primas_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 horas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_concurso

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 fecha_punto_cuenta

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 origen

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 punto_cuenta

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 cod_grupo_organismo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 4

=head2 cod_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 fecha_culminacion

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_trayectoria",
  { data_type => "integer", is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "anio_preparacion",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "fecha_preparacion",
  { data_type => "date", is_nullable => 1 },
  "codigo_anterior_mpd",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "numero_remesa",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "numero_movimiento",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "correlativo_mpd",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_corto",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombre_organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_estatus",
  { data_type => "date", is_nullable => 1 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "cod_ubi_geografico",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "estado",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "ciudad",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "municipio",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre_region",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cod_causa_movimiento",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "descripcion_movimiento",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombre_corto_grupo",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombre_largo_grupo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "caucion",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cod_manual_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_relacion",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "desc_relacion",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cod_categoria",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "desc_categoria",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nombramiento",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "grado",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "paso",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "monto_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "porc_jubilacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "sueldo_promedio",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_jubilacion_sobrev",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "porc_pension_sobrev",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_pension_sobrev",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_pension_invalid",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "porc_pension_invalid",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "invalidez_sact",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_jerarquia",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_servicio",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "ajuste_sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "otros_pagos",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "otros_no_vicepladin",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "primas_cargo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "primas_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "id_personal",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "horas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_concurso",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "fecha_punto_cuenta",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "origen",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "punto_cuenta",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "usuario",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "cod_grupo_organismo",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 4 },
  "cod_organismo",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "fecha_culminacion",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2EubphEU8AtulWpi0tHT8Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
