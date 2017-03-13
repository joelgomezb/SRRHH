use utf8;
package SRRHH::Schema::Result::Tipopersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipopersonal

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

=head1 TABLE: C<tipopersonal>

=cut

__PACKAGE__->table("tipopersonal");

=head1 ACCESSORS

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_personal

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 multiple_registro

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 maneja_rac

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 calcula_prestaciones

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 formula_integral

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 formula_semanal

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_grupo_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_clasificacion_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_turno

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cotiza_sso

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_spf

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_lph

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 cotiza_fju

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 disfruta_vacaciones

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 asignan_dotaciones

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aumento_evaluacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 deuda_regimen_derogado

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 id_banco_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 forma_pago_nomina

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 id_banco_lph

  data_type: 'integer'
  is_nullable: 1

=head2 id_banco_fid

  data_type: 'integer'
  is_nullable: 1

=head2 beneficio_cesta_ticket

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 id_grupo_ticket

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_personal",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "multiple_registro",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "maneja_rac",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "calcula_prestaciones",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "formula_integral",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "formula_semanal",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_clasificacion_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_turno",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cotiza_sso",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_spf",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_lph",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "cotiza_fju",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "disfruta_vacaciones",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "asignan_dotaciones",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aumento_evaluacion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "deuda_regimen_derogado",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "id_banco_nomina",
  { data_type => "integer", is_nullable => 1 },
  "forma_pago_nomina",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "id_banco_lph",
  { data_type => "integer", is_nullable => 1 },
  "id_banco_fid",
  { data_type => "integer", is_nullable => 1 },
  "beneficio_cesta_ticket",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "id_grupo_ticket",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipopersonal_cod>

=over 4

=item * L</id_organismo>

=item * L</cod_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("tipopersonal_cod", ["id_organismo", "cod_tipo_personal"]);

=head1 RELATIONS

=head2 anticipoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Anticipo>

=cut

__PACKAGE__->has_many(
  "anticipoes",
  "SRRHH::Schema::Result::Anticipo",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aumentoevaluacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Aumentoevaluacion>

=cut

__PACKAGE__->has_many(
  "aumentoevaluacions",
  "SRRHH::Schema::Result::Aumentoevaluacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 beneficiarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Beneficiario>

=cut

__PACKAGE__->has_many(
  "beneficiarios",
  "SRRHH::Schema::Result::Beneficiario",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculoantiguedads

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculoantiguedad>

=cut

__PACKAGE__->has_many(
  "calculoantiguedads",
  "SRRHH::Schema::Result::Calculoantiguedad",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculobonofinanios

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculobonofinanio>

=cut

__PACKAGE__->has_many(
  "calculobonofinanios",
  "SRRHH::Schema::Result::Calculobonofinanio",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculoticket>

=cut

__PACKAGE__->has_many(
  "calculotickets",
  "SRRHH::Schema::Result::Calculoticket",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculovacacionals

Type: has_many

Related object: L<SRRHH::Schema::Result::Calculovacacional>

=cut

__PACKAGE__->has_many(
  "calculovacacionals",
  "SRRHH::Schema::Result::Calculovacacional",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoprestaciones

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptoprestacione>

=cut

__PACKAGE__->has_many(
  "conceptoprestaciones",
  "SRRHH::Schema::Result::Conceptoprestacione",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptotipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->has_many(
  "conceptotipopersonals",
  "SRRHH::Schema::Result::Conceptotipopersonal",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoutilidades

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptoutilidade>

=cut

__PACKAGE__->has_many(
  "conceptoutilidades",
  "SRRHH::Schema::Result::Conceptoutilidade",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovacaciones

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptovacacione>

=cut

__PACKAGE__->has_many(
  "conceptovacaciones",
  "SRRHH::Schema::Result::Conceptovacacione",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 constancias

Type: has_many

Related object: L<SRRHH::Schema::Result::Constancia>

=cut

__PACKAGE__->has_many(
  "constancias",
  "SRRHH::Schema::Result::Constancia",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contratoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Contrato>

=cut

__PACKAGE__->has_many(
  "contratoes",
  "SRRHH::Schema::Result::Contrato",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 denominaciontickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Denominacionticket>

=cut

__PACKAGE__->has_many(
  "denominaciontickets",
  "SRRHH::Schema::Result::Denominacionticket",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dotacioncargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Dotacioncargo>

=cut

__PACKAGE__->has_many(
  "dotacioncargoes",
  "SRRHH::Schema::Result::Dotacioncargo",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historiconominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historiconomina>

=cut

__PACKAGE__->has_many(
  "historiconominas",
  "SRRHH::Schema::Result::Historiconomina",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicoquincenas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicoquincena>

=cut

__PACKAGE__->has_many(
  "historicoquincenas",
  "SRRHH::Schema::Result::Historicoquincena",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicosemanas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicosemana>

=cut

__PACKAGE__->has_many(
  "historicosemanas",
  "SRRHH::Schema::Result::Historicosemana",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicoticket>

=cut

__PACKAGE__->has_many(
  "historicotickets",
  "SRRHH::Schema::Result::Historicoticket",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_clasificacion_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Clasificacionpersonal>

=cut

__PACKAGE__->belongs_to(
  "id_clasificacion_personal",
  "SRRHH::Schema::Result::Clasificacionpersonal",
  { id_clasificacion_personal => "id_clasificacion_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_grupo_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_organismo",
  "SRRHH::Schema::Result::Grupoorganismo",
  { id_grupo_organismo => "id_grupo_organismo" },
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

=head2 id_turno

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Turno>

=cut

__PACKAGE__->belongs_to(
  "id_turno",
  "SRRHH::Schema::Result::Turno",
  { id_turno => "id_turno" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 manualpersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Manualpersonal>

=cut

__PACKAGE__->has_many(
  "manualpersonals",
  "SRRHH::Schema::Result::Manualpersonal",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominaconversions

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominaconversion>

=cut

__PACKAGE__->has_many(
  "nominaconversions",
  "SRRHH::Schema::Result::Nominaconversion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrodotacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Parametrodotacion>

=cut

__PACKAGE__->has_many(
  "parametrodotacions",
  "SRRHH::Schema::Result::Parametrodotacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametroguarderia

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametroguarderia>

=cut

__PACKAGE__->might_have(
  "parametroguarderia",
  "SRRHH::Schema::Result::Parametroguarderia",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrojubilacion

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametrojubilacion>

=cut

__PACKAGE__->might_have(
  "parametrojubilacion",
  "SRRHH::Schema::Result::Parametrojubilacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrojuguete

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametrojuguete>

=cut

__PACKAGE__->might_have(
  "parametrojuguete",
  "SRRHH::Schema::Result::Parametrojuguete",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametroticket

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametroticket>

=cut

__PACKAGE__->might_have(
  "parametroticket",
  "SRRHH::Schema::Result::Parametroticket",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametroutiles

Type: has_many

Related object: L<SRRHH::Schema::Result::Parametroutile>

=cut

__PACKAGE__->has_many(
  "parametroutiles",
  "SRRHH::Schema::Result::Parametroutile",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrovario

Type: might_have

Related object: L<SRRHH::Schema::Result::Parametrovario>

=cut

__PACKAGE__->might_have(
  "parametrovario",
  "SRRHH::Schema::Result::Parametrovario",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 primaantiguedads

Type: has_many

Related object: L<SRRHH::Schema::Result::Primaantiguedad>

=cut

__PACKAGE__->has_many(
  "primaantiguedads",
  "SRRHH::Schema::Result::Primaantiguedad",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 primahijo

Type: might_have

Related object: L<SRRHH::Schema::Result::Primahijo>

=cut

__PACKAGE__->might_have(
  "primahijo",
  "SRRHH::Schema::Result::Primahijo",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registropersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Registropersonal>

=cut

__PACKAGE__->has_many(
  "registropersonals",
  "SRRHH::Schema::Result::Registropersonal",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 restringido_id_personal_restringidoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Restringido>

=cut

__PACKAGE__->has_many(
  "restringido_id_personal_restringidoes",
  "SRRHH::Schema::Result::Restringido",
  { "foreign.id_personal_restringido" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 restringido_id_tipo_personals

Type: has_many

Related object: L<SRRHH::Schema::Result::Restringido>

=cut

__PACKAGE__->has_many(
  "restringido_id_tipo_personals",
  "SRRHH::Schema::Result::Restringido",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 resultadoevaluacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Resultadoevaluacion>

=cut

__PACKAGE__->has_many(
  "resultadoevaluacions",
  "SRRHH::Schema::Result::Resultadoevaluacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadaniversarios

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadaniversario>

=cut

__PACKAGE__->has_many(
  "seguridadaniversarios",
  "SRRHH::Schema::Result::Seguridadaniversario",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadguarderias

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadguarderia>

=cut

__PACKAGE__->has_many(
  "seguridadguarderias",
  "SRRHH::Schema::Result::Seguridadguarderia",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadinteresadicionals

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadinteresadicional>

=cut

__PACKAGE__->has_many(
  "seguridadinteresadicionals",
  "SRRHH::Schema::Result::Seguridadinteresadicional",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadnuevoregimens

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadnuevoregimen>

=cut

__PACKAGE__->has_many(
  "seguridadnuevoregimens",
  "SRRHH::Schema::Result::Seguridadnuevoregimen",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadprestaciones

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadprestacione>

=cut

__PACKAGE__->has_many(
  "seguridadprestaciones",
  "SRRHH::Schema::Result::Seguridadprestacione",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadvacacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadvacacion>

=cut

__PACKAGE__->has_many(
  "seguridadvacacions",
  "SRRHH::Schema::Result::Seguridadvacacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 titulars

Type: has_many

Related object: L<SRRHH::Schema::Result::Titular>

=cut

__PACKAGE__->has_many(
  "titulars",
  "SRRHH::Schema::Result::Titular",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimanominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Ultimanomina>

=cut

__PACKAGE__->has_many(
  "ultimanominas",
  "SRRHH::Schema::Result::Ultimanomina",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimaprenominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Ultimaprenomina>

=cut

__PACKAGE__->has_many(
  "ultimaprenominas",
  "SRRHH::Schema::Result::Ultimaprenomina",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuariotipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Usuariotipopersonal>

=cut

__PACKAGE__->has_many(
  "usuariotipopersonals",
  "SRRHH::Schema::Result::Usuariotipopersonal",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 utilidadesporanios

Type: has_many

Related object: L<SRRHH::Schema::Result::Utilidadesporanio>

=cut

__PACKAGE__->has_many(
  "utilidadesporanios",
  "SRRHH::Schema::Result::Utilidadesporanio",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vacaciondisfrutadas

Type: has_many

Related object: L<SRRHH::Schema::Result::Vacaciondisfrutada>

=cut

__PACKAGE__->has_many(
  "vacaciondisfrutadas",
  "SRRHH::Schema::Result::Vacaciondisfrutada",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vacacionesporanios

Type: has_many

Related object: L<SRRHH::Schema::Result::Vacacionesporanio>

=cut

__PACKAGE__->has_many(
  "vacacionesporanios",
  "SRRHH::Schema::Result::Vacacionesporanio",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vacacionprogramadas

Type: has_many

Related object: L<SRRHH::Schema::Result::Vacacionprogramada>

=cut

__PACKAGE__->has_many(
  "vacacionprogramadas",
  "SRRHH::Schema::Result::Vacacionprogramada",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vacacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Vacacion>

=cut

__PACKAGE__->has_many(
  "vacacions",
  "SRRHH::Schema::Result::Vacacion",
  { "foreign.id_tipo_personal" => "self.id_tipo_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7LiNfSETApCO67hG4hyL8g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
