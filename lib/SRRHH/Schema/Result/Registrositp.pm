use utf8;
package SRRHH::Schema::Result::Registrositp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Registrositp

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

=head1 TABLE: C<registrositp>

=cut

__PACKAGE__->table("registrositp");

=head1 ACCESSORS

=head2 id_registro_sitp

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 fecha_movimiento

  data_type: 'date'
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_cargo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 cod_sede

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 tipo_personal

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 nombre_tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_clasificacion_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_causa_movimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_causa_movimiento

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_manual_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 cod_tabulador

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 afecta_sueldo

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 localidad

  data_type: 'varchar'
  default_value: 'C'
  is_nullable: 0
  size: 1

=head2 numero_movimiento

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 apellidos_nombres

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_remesa

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombre_sede

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 cod_organismo_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 nombre_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_usuario

  data_type: 'integer'
  is_nullable: 0

=head2 estatus_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 codigo_devolucion

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 analista_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 id_analista_mpd

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_inicio_mpd

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin_mpd

  data_type: 'date'
  is_nullable: 1

=head2 observaciones_mpd

  data_type: 'text'
  is_nullable: 1

=head2 cod_region

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nombre_region

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 fecha_punto_cuenta

  data_type: 'date'
  is_nullable: 1

=head2 punto_cuenta

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anterior_cod_manual_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 anterior_cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 anterior_descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 anterior_codigo_nomina

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 anterior_cod_sede

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 anterior_nombre_sede

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 anterior_cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 anterior_nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 anterior_sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 anterior_compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 anterior_primas_cargo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 anterior_primas_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 anterior_grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 anterior_paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 anterior_cod_region

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 anterior_nombre_region

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_concurso

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 id_turno

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_culminacion

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_registro_sitp",
  { data_type => "integer", is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "fecha_movimiento",
  { data_type => "date", is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_cargo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "grado",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "paso",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "cod_sede",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "tipo_personal",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "nombre_tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_clasificacion_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_causa_movimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cod_causa_movimiento",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_manual_cargo",
  { data_type => "integer", is_nullable => 1 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "cod_tabulador",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "afecta_sueldo",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "localidad",
  { data_type => "varchar", default_value => "C", is_nullable => 0, size => 1 },
  "numero_movimiento",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "apellidos_nombres",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_remesa",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_sede",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_organismo",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "cod_organismo_mpd",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "nombre_organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_usuario",
  { data_type => "integer", is_nullable => 0 },
  "estatus_mpd",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "codigo_devolucion",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "analista_mpd",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "id_analista_mpd",
  { data_type => "integer", is_nullable => 1 },
  "fecha_inicio_mpd",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin_mpd",
  { data_type => "date", is_nullable => 1 },
  "observaciones_mpd",
  { data_type => "text", is_nullable => 1 },
  "cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre_region",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "fecha_punto_cuenta",
  { data_type => "date", is_nullable => 1 },
  "punto_cuenta",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anterior_cod_manual_cargo",
  { data_type => "integer", is_nullable => 1 },
  "anterior_cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "anterior_descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "anterior_codigo_nomina",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "anterior_cod_sede",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "anterior_nombre_sede",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "anterior_cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "anterior_nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "anterior_sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "anterior_compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "anterior_primas_cargo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "anterior_primas_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "anterior_grado",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "anterior_paso",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "anterior_cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "anterior_nombre_region",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_concurso",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "id_turno",
  { data_type => "integer", is_nullable => 1 },
  "fecha_culminacion",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_registro_sitp>

=back

=cut

__PACKAGE__->set_primary_key("id_registro_sitp");

=head1 RELATIONS

=head2 id_causa_movimiento

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Causamovimiento>

=cut

__PACKAGE__->belongs_to(
  "id_causa_movimiento",
  "SRRHH::Schema::Result::Causamovimiento",
  { id_causa_movimiento => "id_causa_movimiento" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_clasificacion_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Clasificacionpersonal>

=cut

__PACKAGE__->belongs_to(
  "id_clasificacion_personal",
  "SRRHH::Schema::Result::Clasificacionpersonal",
  { id_clasificacion_personal => "id_clasificacion_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a1//I4BQfRbxByaWGpxXXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
