use utf8;
package SRRHH::Schema::Result::Personal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Personal

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

=head1 TABLE: C<personal>

=cut

__PACKAGE__->table("personal");

=head1 ACCESSORS

=head2 id_personal

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
  is_foreign_key: 1
  is_nullable: 1

=head2 id_ciudad_residencia

  data_type: 'integer'
  is_foreign_key: 1
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

=head2 id_establecimiento_salud

  data_type: 'integer'
  is_nullable: 1

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
  is_foreign_key: 1
  is_nullable: 1

=head2 id_parroquia

  data_type: 'integer'
  is_foreign_key: 1
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

=head2 reingresable

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

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

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 madre_padre

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 fecha_fallecimiento

  data_type: 'date'
  is_nullable: 1

=head2 dias_servicio_apn

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 meses_servicio_apn

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 deuda_regimen_derogado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 credencial

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 puebloindigena

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 discapacidad

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 tipodiscapacidad

  data_type: 'varchar'
  default_value: 'O'
  is_nullable: 1
  size: 1

=head2 foto_trabajador

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "anios_servicio_apn",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cedula",
  { data_type => "integer", is_nullable => 0 },
  "cedula_conyugue",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_ciudad_nacimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_ciudad_residencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "diestralidad",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "direccion_residencia",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "doble_nacionalidad",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_establecimiento_salud",
  { data_type => "integer", is_nullable => 1 },
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
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_parroquia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "peso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "placa_vehiculo",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "reingresable",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
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
  "password",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "madre_padre",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "fecha_fallecimiento",
  { data_type => "date", is_nullable => 1 },
  "dias_servicio_apn",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "meses_servicio_apn",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "deuda_regimen_derogado",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "credencial",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "puebloindigena",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "discapacidad",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "tipodiscapacidad",
  { data_type => "varchar", default_value => "O", is_nullable => 1, size => 1 },
  "foto_trabajador",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<personal_cod>

=over 4

=item * L</cedula>

=back

=cut

__PACKAGE__->add_unique_constraint("personal_cod", ["cedula"]);

=head1 RELATIONS

=head2 actividaddocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Actividaddocente>

=cut

__PACKAGE__->has_many(
  "actividaddocentes",
  "SRRHH::Schema::Result::Actividaddocente",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 afiliacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Afiliacion>

=cut

__PACKAGE__->has_many(
  "afiliacions",
  "SRRHH::Schema::Result::Afiliacion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 antecedentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Antecedente>

=cut

__PACKAGE__->has_many(
  "antecedentes",
  "SRRHH::Schema::Result::Antecedente",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 anticipoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Anticipo>

=cut

__PACKAGE__->has_many(
  "anticipoes",
  "SRRHH::Schema::Result::Anticipo",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 apelacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Apelacion>

=cut

__PACKAGE__->has_many(
  "apelacions",
  "SRRHH::Schema::Result::Apelacion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ausencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Ausencia>

=cut

__PACKAGE__->has_many(
  "ausencias",
  "SRRHH::Schema::Result::Ausencia",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 averiguacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Averiguacion>

=cut

__PACKAGE__->has_many(
  "averiguacions",
  "SRRHH::Schema::Result::Averiguacion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 beneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Beneficiario>

=cut

__PACKAGE__->has_many(
  "beneficiarios",
  "SRRHH::Schema::Result::Beneficiario",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 certificacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Certificacion>

=cut

__PACKAGE__->has_many(
  "certificacions",
  "SRRHH::Schema::Result::Certificacion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 certificadoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Certificado>

=cut

__PACKAGE__->has_many(
  "certificadoes",
  "SRRHH::Schema::Result::Certificado",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 comisionservicioexts

Type: has_many

Related object: L<SRRHH::Schema::Result::Comisionservicioext>

=cut

__PACKAGE__->has_many(
  "comisionservicioexts",
  "SRRHH::Schema::Result::Comisionservicioext",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 comisionservicios

Type: has_many

Related object: L<SRRHH::Schema::Result::Comisionservicio>

=cut

__PACKAGE__->has_many(
  "comisionservicios",
  "SRRHH::Schema::Result::Comisionservicio",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contratoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Contrato>

=cut

__PACKAGE__->has_many(
  "contratoes",
  "SRRHH::Schema::Result::Contrato",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 credencials

Type: has_many

Related object: L<SRRHH::Schema::Result::Credencial>

=cut

__PACKAGE__->has_many(
  "credencials",
  "SRRHH::Schema::Result::Credencial",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 declaracions

Type: has_many

Related object: L<SRRHH::Schema::Result::Declaracion>

=cut

__PACKAGE__->has_many(
  "declaracions",
  "SRRHH::Schema::Result::Declaracion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 educacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Educacion>

=cut

__PACKAGE__->has_many(
  "educacions",
  "SRRHH::Schema::Result::Educacion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 elegibleactividaddocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Elegibleactividaddocente>

=cut

__PACKAGE__->has_many(
  "elegibleactividaddocentes",
  "SRRHH::Schema::Result::Elegibleactividaddocente",
  { "foreign.id_elegible" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 embargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Embargo>

=cut

__PACKAGE__->has_many(
  "embargoes",
  "SRRHH::Schema::Result::Embargo",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 encargadurias

Type: has_many

Related object: L<SRRHH::Schema::Result::Encargaduria>

=cut

__PACKAGE__->has_many(
  "encargadurias",
  "SRRHH::Schema::Result::Encargaduria",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estudios

Type: has_many

Related object: L<SRRHH::Schema::Result::Estudio>

=cut

__PACKAGE__->has_many(
  "estudios",
  "SRRHH::Schema::Result::Estudio",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepcionbeneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Excepcionbeneficiario>

=cut

__PACKAGE__->has_many(
  "excepcionbeneficiarios",
  "SRRHH::Schema::Result::Excepcionbeneficiario",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 excepciontitulars

Type: has_many

Related object: L<SRRHH::Schema::Result::Excepciontitular>

=cut

__PACKAGE__->has_many(
  "excepciontitulars",
  "SRRHH::Schema::Result::Excepciontitular",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 experiencianoests

Type: has_many

Related object: L<SRRHH::Schema::Result::Experiencianoest>

=cut

__PACKAGE__->has_many(
  "experiencianoests",
  "SRRHH::Schema::Result::Experiencianoest",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 experiencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Experiencia>

=cut

__PACKAGE__->has_many(
  "experiencias",
  "SRRHH::Schema::Result::Experiencia",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 familiars

Type: has_many

Related object: L<SRRHH::Schema::Result::Familiar>

=cut

__PACKAGE__->has_many(
  "familiars",
  "SRRHH::Schema::Result::Familiar",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 guarderiafamiliars

Type: has_many

Related object: L<SRRHH::Schema::Result::Guarderiafamiliar>

=cut

__PACKAGE__->has_many(
  "guarderiafamiliars",
  "SRRHH::Schema::Result::Guarderiafamiliar",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 habilidads

Type: has_many

Related object: L<SRRHH::Schema::Result::Habilidad>

=cut

__PACKAGE__->has_many(
  "habilidads",
  "SRRHH::Schema::Result::Habilidad",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialapns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialapn>

=cut

__PACKAGE__->has_many(
  "historialapns",
  "SRRHH::Schema::Result::Historialapn",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialorganismo>

=cut

__PACKAGE__->has_many(
  "historialorganismoes",
  "SRRHH::Schema::Result::Historialorganismo",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialremuns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SRRHH::Schema::Result::Historialremun",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicodevengadointegrals

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicodevengadointegral>

=cut

__PACKAGE__->has_many(
  "historicodevengadointegrals",
  "SRRHH::Schema::Result::Historicodevengadointegral",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_ciudad_nacimiento

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad_nacimiento",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad_nacimiento" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_ciudad_residencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad_residencia",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad_residencia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_pais_nacionalidad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Pai>

=cut

__PACKAGE__->belongs_to(
  "id_pais_nacionalidad",
  "SRRHH::Schema::Result::Pai",
  { id_pais => "id_pais_nacionalidad" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_parroquia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Parroquia>

=cut

__PACKAGE__->belongs_to(
  "id_parroquia",
  "SRRHH::Schema::Result::Parroquia",
  { id_parroquia => "id_parroquia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 idiomas

Type: has_many

Related object: L<SRRHH::Schema::Result::Idioma>

=cut

__PACKAGE__->has_many(
  "idiomas",
  "SRRHH::Schema::Result::Idioma",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 juguetes

Type: has_many

Related object: L<SRRHH::Schema::Result::Juguete>

=cut

__PACKAGE__->has_many(
  "juguetes",
  "SRRHH::Schema::Result::Juguete",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoregistroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Movimientoregistro>

=cut

__PACKAGE__->has_many(
  "movimientoregistroes",
  "SRRHH::Schema::Result::Movimientoregistro",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoscios

Type: has_many

Related object: L<SRRHH::Schema::Result::Movimientoscio>

=cut

__PACKAGE__->has_many(
  "movimientoscios",
  "SRRHH::Schema::Result::Movimientoscio",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 otraactividads

Type: has_many

Related object: L<SRRHH::Schema::Result::Otraactividad>

=cut

__PACKAGE__->has_many(
  "otraactividads",
  "SRRHH::Schema::Result::Otraactividad",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pagoguarderias

Type: has_many

Related object: L<SRRHH::Schema::Result::Pagoguarderia>

=cut

__PACKAGE__->has_many(
  "pagoguarderias",
  "SRRHH::Schema::Result::Pagoguarderia",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 personalorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Personalorganismo>

=cut

__PACKAGE__->has_many(
  "personalorganismoes",
  "SRRHH::Schema::Result::Personalorganismo",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profesiontrabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Profesiontrabajador>

=cut

__PACKAGE__->has_many(
  "profesiontrabajadors",
  "SRRHH::Schema::Result::Profesiontrabajador",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reconocimientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Reconocimiento>

=cut

__PACKAGE__->has_many(
  "reconocimientoes",
  "SRRHH::Schema::Result::Reconocimiento",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrositps

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrositp>

=cut

__PACKAGE__->has_many(
  "registrositps",
  "SRRHH::Schema::Result::Registrositp",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sancions

Type: has_many

Related object: L<SRRHH::Schema::Result::Sancion>

=cut

__PACKAGE__->has_many(
  "sancions",
  "SRRHH::Schema::Result::Sancion",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 servicioexteriors

Type: has_many

Related object: L<SRRHH::Schema::Result::Servicioexterior>

=cut

__PACKAGE__->has_many(
  "servicioexteriors",
  "SRRHH::Schema::Result::Servicioexterior",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 siniestroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Siniestro>

=cut

__PACKAGE__->has_many(
  "siniestroes",
  "SRRHH::Schema::Result::Siniestro",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 titular

Type: might_have

Related object: L<SRRHH::Schema::Result::Titular>

=cut

__PACKAGE__->might_have(
  "titular",
  "SRRHH::Schema::Result::Titular",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 utiles

Type: has_many

Related object: L<SRRHH::Schema::Result::Utile>

=cut

__PACKAGE__->has_many(
  "utiles",
  "SRRHH::Schema::Result::Utile",
  { "foreign.id_personal" => "self.id_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rzATQyapCq7h1JBLHRBYiA

__PACKAGE__->has_many(
  recibos_quincena => 
  'SRRHH::Schema::Result::VRecibosQuincena', 
  { 'foreign.cedula' => 'self.cedula' },
);

__PACKAGE__->has_many(
  recibos_especiales => 
  'SRRHH::Schema::Result::VRecibosEspecial', 
  { 'foreign.cedula' => 'self.cedula' },
);

__PACKAGE__->has_one(
    datos_personales => 
    'SRRHH::Schema::Result::VDatosPersonale',
    { 'foreign.cedula' => 'self.cedula' },
  );

__PACKAGE__->has_many(
  arc => 
  'SRRHH::Schema::Result::VArc', 
  { 'foreign.cedula' => 'self.cedula' },
);

sub anios_arc {
  my $self = shift;

  my @retorno;
  my $rs = $self->arc->search( {}, { columns => [ 'anio' ], distinct => '1', order_by => 'anio' } );
  @retorno = $rs->get_column('anio')->all if ( $rs );
  return \@retorno;
}

=head2 detalles_arc

Retorna los detalles de ARC para un año y persona dados

=cut

sub detalles_arc {
  my $self = shift;  
  my $anio = shift;

  my $retorno = [ $self->arc->search( { anio => $anio }, { order_by => 'nro_mes' } )->all ];
  return $retorno;
}

=head2 ape_nom

Retorna APELLIDOS, NOMBRES

=cut

sub ape_nom {
  my $self = shift;

  my $retorno = $self->primer_apellido;
  $retorno .= ' ' . $self->segundo_apellido if ( $self->segundo_apellido );
  $retorno .= ', ' . $self->primer_nombre;
  $retorno .= ' ' . $self->segundo_nombre if ( $self->segundo_nombre );
  return $retorno;
}


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
