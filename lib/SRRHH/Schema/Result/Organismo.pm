use utf8;
package SRRHH::Schema::Result::Organismo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Organismo

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

=head1 TABLE: C<organismo>

=cut

__PACKAGE__->table("organismo");

=head1 ACCESSORS

=head2 id_organismo

  data_type: 'integer'
  is_nullable: 0

=head2 cedula_agente_retencion

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 cedula_director

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_organismo

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 cod_sigecof

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 cod_uel

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 nit

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombre_agente_retencion

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 organo_rector

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 rif

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 rif_agente_retencion

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 zona_postal

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 organismo_adscrito

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 nombre_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 actualiza_expediente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 nombre_rrhh

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cedula_rrhh

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_informatica

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cedula_informatica

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nombre_maxima_autoridad

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cedula_maxima_autoridad

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 codigo_anterior_mpd

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 telefono_rrhh

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_informatica

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_maxima_autoridad

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 gaceta_rrhh

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 gaceta_informatica

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 gaceta_maxima_autoridad

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 nombre_corto

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "id_organismo",
  { data_type => "integer", is_nullable => 0 },
  "cedula_agente_retencion",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "cedula_director",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_ciudad",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 1,
  },
  "cod_organismo",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "cod_sigecof",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "cod_uel",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "nit",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombre_agente_retencion",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "organo_rector",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "rif",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "rif_agente_retencion",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "zona_postal",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "organismo_adscrito",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "nombre_organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "actualiza_expediente",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "nombre_rrhh",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cedula_rrhh",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_informatica",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cedula_informatica",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nombre_maxima_autoridad",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cedula_maxima_autoridad",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "codigo_anterior_mpd",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "telefono_rrhh",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_informatica",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_maxima_autoridad",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "gaceta_rrhh",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "gaceta_informatica",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "gaceta_maxima_autoridad",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "nombre_corto",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_organismo>

=back

=cut

__PACKAGE__->set_primary_key("id_organismo");

=head1 UNIQUE CONSTRAINTS

=head2 C<organismo_cod>

=over 4

=item * L</cod_organismo>

=back

=cut

__PACKAGE__->add_unique_constraint("organismo_cod", ["cod_organismo"]);

=head1 RELATIONS

=head2 accioncentralizadas

Type: has_many

Related object: L<SRRHH::Schema::Result::Accioncentralizada>

=cut

__PACKAGE__->has_many(
  "accioncentralizadas",
  "SRRHH::Schema::Result::Accioncentralizada",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 auditoriacargamasivas

Type: has_many

Related object: L<SRRHH::Schema::Result::Auditoriacargamasiva>

=cut

__PACKAGE__->has_many(
  "auditoriacargamasivas",
  "SRRHH::Schema::Result::Auditoriacargamasiva",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->has_many(
  "conceptoes",
  "SRRHH::Schema::Result::Concepto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 concursoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Concurso>

=cut

__PACKAGE__->has_many(
  "concursoes",
  "SRRHH::Schema::Result::Concurso",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentabancoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Cuentabanco>

=cut

__PACKAGE__->has_many(
  "cuentabancoes",
  "SRRHH::Schema::Result::Cuentabanco",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentacontables

Type: has_many

Related object: L<SRRHH::Schema::Result::Cuentacontable>

=cut

__PACKAGE__->has_many(
  "cuentacontables",
  "SRRHH::Schema::Result::Cuentacontable",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentapresupuestoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Cuentapresupuesto>

=cut

__PACKAGE__->has_many(
  "cuentapresupuestoes",
  "SRRHH::Schema::Result::Cuentapresupuesto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 declaracions

Type: has_many

Related object: L<SRRHH::Schema::Result::Declaracion>

=cut

__PACKAGE__->has_many(
  "declaracions",
  "SRRHH::Schema::Result::Declaracion",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dependencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SRRHH::Schema::Result::Dependencia",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 disquetes

Type: has_many

Related object: L<SRRHH::Schema::Result::Disquete>

=cut

__PACKAGE__->has_many(
  "disquetes",
  "SRRHH::Schema::Result::Disquete",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 encargadurias

Type: has_many

Related object: L<SRRHH::Schema::Result::Encargaduria>

=cut

__PACKAGE__->has_many(
  "encargadurias",
  "SRRHH::Schema::Result::Encargaduria",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estructuras

Type: has_many

Related object: L<SRRHH::Schema::Result::Estructura>

=cut

__PACKAGE__->has_many(
  "estructuras",
  "SRRHH::Schema::Result::Estructura",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 firmasreportes

Type: has_many

Related object: L<SRRHH::Schema::Result::Firmasreporte>

=cut

__PACKAGE__->has_many(
  "firmasreportes",
  "SRRHH::Schema::Result::Firmasreporte",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 frecuenciapagoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Frecuenciapago>

=cut

__PACKAGE__->has_many(
  "frecuenciapagoes",
  "SRRHH::Schema::Result::Frecuenciapago",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 gruponominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->has_many(
  "gruponominas",
  "SRRHH::Schema::Result::Gruponomina",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 grupoorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->has_many(
  "grupoorganismoes",
  "SRRHH::Schema::Result::Grupoorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 grupotickets

Type: has_many

Related object: L<SRRHH::Schema::Result::Grupoticket>

=cut

__PACKAGE__->has_many(
  "grupotickets",
  "SRRHH::Schema::Result::Grupoticket",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialapns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialapn>

=cut

__PACKAGE__->has_many(
  "historialapns",
  "SRRHH::Schema::Result::Historialapn",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialorganismo>

=cut

__PACKAGE__->has_many(
  "historialorganismoes",
  "SRRHH::Schema::Result::Historialorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialremuns

Type: has_many

Related object: L<SRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SRRHH::Schema::Result::Historialremun",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_ciudad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 manualcargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Manualcargo>

=cut

__PACKAGE__->has_many(
  "manualcargoes",
  "SRRHH::Schema::Result::Manualcargo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoregistroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Movimientoregistro>

=cut

__PACKAGE__->has_many(
  "movimientoregistroes",
  "SRRHH::Schema::Result::Movimientoregistro",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoscios

Type: has_many

Related object: L<SRRHH::Schema::Result::Movimientoscio>

=cut

__PACKAGE__->has_many(
  "movimientoscios",
  "SRRHH::Schema::Result::Movimientoscio",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nombreorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Nombreorganismo>

=cut

__PACKAGE__->has_many(
  "nombreorganismoes",
  "SRRHH::Schema::Result::Nombreorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 personalorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Personalorganismo>

=cut

__PACKAGE__->has_many(
  "personalorganismoes",
  "SRRHH::Schema::Result::Personalorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planpersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Planpersonal>

=cut

__PACKAGE__->has_many(
  "planpersonals",
  "SRRHH::Schema::Result::Planpersonal",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 polizas

Type: has_many

Related object: L<SRRHH::Schema::Result::Poliza>

=cut

__PACKAGE__->has_many(
  "polizas",
  "SRRHH::Schema::Result::Poliza",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 programas

Type: has_many

Related object: L<SRRHH::Schema::Result::Programa>

=cut

__PACKAGE__->has_many(
  "programas",
  "SRRHH::Schema::Result::Programa",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 proyectoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Proyecto>

=cut

__PACKAGE__->has_many(
  "proyectoes",
  "SRRHH::Schema::Result::Proyecto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reconocimientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Reconocimiento>

=cut

__PACKAGE__->has_many(
  "reconocimientoes",
  "SRRHH::Schema::Result::Reconocimiento",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 regions

Type: has_many

Related object: L<SRRHH::Schema::Result::Region>

=cut

__PACKAGE__->has_many(
  "regions",
  "SRRHH::Schema::Result::Region",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registroes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registro>

=cut

__PACKAGE__->has_many(
  "registroes",
  "SRRHH::Schema::Result::Registro",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrositps

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrositp>

=cut

__PACKAGE__->has_many(
  "registrositps",
  "SRRHH::Schema::Result::Registrositp",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sancions

Type: has_many

Related object: L<SRRHH::Schema::Result::Sancion>

=cut

__PACKAGE__->has_many(
  "sancions",
  "SRRHH::Schema::Result::Sancion",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sedes

Type: has_many

Related object: L<SRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->has_many(
  "sedes",
  "SRRHH::Schema::Result::Sede",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tabuladors

Type: has_many

Related object: L<SRRHH::Schema::Result::Tabulador>

=cut

__PACKAGE__->has_many(
  "tabuladors",
  "SRRHH::Schema::Result::Tabulador",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SRRHH::Schema::Result::Tipopersonal",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 turnoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Turno>

=cut

__PACKAGE__->has_many(
  "turnoes",
  "SRRHH::Schema::Result::Turno",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 unidadadministradoras

Type: has_many

Related object: L<SRRHH::Schema::Result::Unidadadministradora>

=cut

__PACKAGE__->has_many(
  "unidadadministradoras",
  "SRRHH::Schema::Result::Unidadadministradora",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 unidadfuncionals

Type: has_many

Related object: L<SRRHH::Schema::Result::Unidadfuncional>

=cut

__PACKAGE__->has_many(
  "unidadfuncionals",
  "SRRHH::Schema::Result::Unidadfuncional",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuarioorganismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Usuarioorganismo>

=cut

__PACKAGE__->has_many(
  "usuarioorganismoes",
  "SRRHH::Schema::Result::Usuarioorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qlcGSQHxczK5eipJUDPYmw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
