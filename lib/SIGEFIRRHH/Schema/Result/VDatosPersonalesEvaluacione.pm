use utf8;
package SIGEFIRRHH::Schema::Result::VDatosPersonalesEvaluacione;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VDatosPersonalesEvaluacione

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

=head1 TABLE: C<v_datos_personales_evaluaciones>

=cut

__PACKAGE__->table("v_datos_personales_evaluaciones");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 tipo_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 codigo_clase

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 grado

  data_type: 'integer'
  is_nullable: 1

=head2 sub_grado

  data_type: 'integer'
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 1

=head2 serie_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 telefono_oficina

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_celular

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 periodicidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 unidad_administradora

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 remuneracion

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "tipo_cargo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "codigo_clase",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "grado",
  { data_type => "integer", is_nullable => 1 },
  "sub_grado",
  { data_type => "integer", is_nullable => 1 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 1 },
  "serie_cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "telefono_oficina",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_celular",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_residencia",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "periodicidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "unidad_administradora",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "remuneracion",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vEeMkp3EUUOGOMIQmiogGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
