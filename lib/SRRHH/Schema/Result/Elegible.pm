use utf8;
package SRRHH::Schema::Result::Elegible;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Elegible

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

=head1 TABLE: C<elegible>

=cut

__PACKAGE__->table("elegible");

=head1 ACCESSORS

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 anios_servicio_apn

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cedula

  data_type: 'integer'
  is_nullable: 0

=head2 cedula_conyugue

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_ciudad_nacimiento

  data_type: 'integer'
  is_nullable: 1

=head2 id_ciudad_residencia

  data_type: 'integer'
  is_nullable: 1

=head2 diestralidad

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 direccion_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 doble_nacionalidad

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 estado_civil

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 estatura

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 0

=head2 fecha_nacionalizacion

  data_type: 'date'
  is_nullable: 1

=head2 gaceta_nacionalizacion

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 grado_licencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 grupo_sanguineo

  data_type: 'varchar'
  default_value: 'NO'
  is_nullable: 0
  size: 3

=head2 maneja

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 marca_vehiculo

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 mismo_organismo_conyugue

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 modelo_vehiculo

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 nacionalidad

  data_type: 'varchar'
  default_value: 'V'
  is_nullable: 0
  size: 1

=head2 nacionalizado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 nivel_educativo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 nombre_conyugue

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 numero_libreta_militar

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 numero_rif

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 numero_sso

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 otra_normativa_nac

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 id_pais_nacionalidad

  data_type: 'integer'
  is_nullable: 1

=head2 id_parroquia

  data_type: 'integer'
  is_nullable: 1

=head2 peso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 placa_vehiculo

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 sector_trabajo_conyugue

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 telefono_celular

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_oficina

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 tenencia_vivienda

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 tiene_hijos

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 tiene_vehiculo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 tipo_vivienda

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 zona_postal_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 cargo_aspira

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sueldo_aspira

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 disponibilidad

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 trabajando_actualmente

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 trabajo_actual

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 cargo_actual

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sueldo_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 motivo_retiro

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "anios_servicio_apn",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "cedula_conyugue",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_ciudad_nacimiento",
  { data_type => "integer", is_nullable => 1 },
  "id_ciudad_residencia",
  { data_type => "integer", is_nullable => 1 },
  "diestralidad",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "direccion_residencia",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "doble_nacionalidad",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "estado_civil",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "estatura",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 0 },
  "fecha_nacionalizacion",
  { data_type => "date", is_nullable => 1 },
  "gaceta_nacionalizacion",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "grado_licencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "grupo_sanguineo",
  { data_type => "varchar", default_value => "NO", is_nullable => 0, size => 3 },
  "maneja",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "marca_vehiculo",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "mismo_organismo_conyugue",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "modelo_vehiculo",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "nacionalidad",
  { data_type => "varchar", default_value => "V", is_nullable => 0, size => 1 },
  "nacionalizado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "nivel_educativo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "nombre_conyugue",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "numero_libreta_militar",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "numero_rif",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "numero_sso",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "otra_normativa_nac",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "id_pais_nacionalidad",
  { data_type => "integer", is_nullable => 1 },
  "id_parroquia",
  { data_type => "integer", is_nullable => 1 },
  "peso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "placa_vehiculo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "sector_trabajo_conyugue",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "telefono_celular",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_oficina",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_residencia",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "tenencia_vivienda",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "tiene_hijos",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "tiene_vehiculo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "tipo_vivienda",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "zona_postal_residencia",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "cargo_aspira",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sueldo_aspira",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "disponibilidad",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "trabajando_actualmente",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "trabajo_actual",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "cargo_actual",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sueldo_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "motivo_retiro",
  { data_type => "varchar", is_nullable => 1, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible");

=head1 UNIQUE CONSTRAINTS

=head2 C<pky_cedula>

=over 4

=item * L</cedula>

=back

=cut

__PACKAGE__->add_unique_constraint("pky_cedula", ["cedula"]);

=head1 RELATIONS

=head2 elegiblehabilidads

Type: has_many

Related object: L<SRRHH::Schema::Result::Elegiblehabilidad>

=cut

__PACKAGE__->has_many(
  "elegiblehabilidads",
  "SRRHH::Schema::Result::Elegiblehabilidad",
  { "foreign.id_elegible" => "self.id_elegible" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 elegibleorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Elegibleorganismo>

=cut

__PACKAGE__->has_many(
  "elegibleorganismoes",
  "SRRHH::Schema::Result::Elegibleorganismo",
  { "foreign.id_elegible" => "self.id_elegible" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 elegibleotraactividads

Type: has_many

Related object: L<SRRHH::Schema::Result::Elegibleotraactividad>

=cut

__PACKAGE__->has_many(
  "elegibleotraactividads",
  "SRRHH::Schema::Result::Elegibleotraactividad",
  { "foreign.id_elegible" => "self.id_elegible" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:70nIR/5gd92D6xzdMYfZng


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
