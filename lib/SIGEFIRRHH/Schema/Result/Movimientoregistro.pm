use utf8;
package SIGEFIRRHH::Schema::Result::Movimientoregistro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Movimientoregistro

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

=head1 TABLE: C<movimientoregistro>

=cut

__PACKAGE__->table("movimientoregistro");

=head1 ACCESSORS

=head2 id_movimiento_registro

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

=head2 id_movimiento_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 id_causa_movimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_movimiento_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_movimiento_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 2

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

=head2 aprobacion_mpd

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

=head2 remesa

  data_type: 'varchar'
  is_nullable: 1
  size: 5

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
  size: 10

=head2 nombre_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 25

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

=cut

__PACKAGE__->add_columns(
  "id_movimiento_registro",
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
  "id_movimiento_cargo",
  { data_type => "integer", is_nullable => 1 },
  "id_causa_movimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cod_movimiento_cargo",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_movimiento_personal",
  { data_type => "varchar", is_nullable => 1, size => 2 },
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
  "aprobacion_mpd",
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
  "remesa",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "estatus",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_sede",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_organismo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "nombre_organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "cod_region",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre_region",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_movimiento_registro>

=back

=cut

__PACKAGE__->set_primary_key("id_movimiento_registro");

=head1 RELATIONS

=head2 id_causa_movimiento

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Causamovimiento>

=cut

__PACKAGE__->belongs_to(
  "id_causa_movimiento",
  "SIGEFIRRHH::Schema::Result::Causamovimiento",
  { id_causa_movimiento => "id_causa_movimiento" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:faUMDDRkRKhgvbZZsTK4QQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
