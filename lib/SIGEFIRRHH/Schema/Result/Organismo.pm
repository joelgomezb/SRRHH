use utf8;
package SIGEFIRRHH::Schema::Result::Organismo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Organismo

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

Related object: L<SIGEFIRRHH::Schema::Result::Accioncentralizada>

=cut

__PACKAGE__->has_many(
  "accioncentralizadas",
  "SIGEFIRRHH::Schema::Result::Accioncentralizada",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 auditoriacargamasivas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Auditoriacargamasiva>

=cut

__PACKAGE__->has_many(
  "auditoriacargamasivas",
  "SIGEFIRRHH::Schema::Result::Auditoriacargamasiva",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->has_many(
  "conceptoes",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 concursoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Concurso>

=cut

__PACKAGE__->has_many(
  "concursoes",
  "SIGEFIRRHH::Schema::Result::Concurso",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentabancoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cuentabanco>

=cut

__PACKAGE__->has_many(
  "cuentabancoes",
  "SIGEFIRRHH::Schema::Result::Cuentabanco",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentacontables

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cuentacontable>

=cut

__PACKAGE__->has_many(
  "cuentacontables",
  "SIGEFIRRHH::Schema::Result::Cuentacontable",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cuentapresupuestoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cuentapresupuesto>

=cut

__PACKAGE__->has_many(
  "cuentapresupuestoes",
  "SIGEFIRRHH::Schema::Result::Cuentapresupuesto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 declaracions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Declaracion>

=cut

__PACKAGE__->has_many(
  "declaracions",
  "SIGEFIRRHH::Schema::Result::Declaracion",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 disquetes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Disquete>

=cut

__PACKAGE__->has_many(
  "disquetes",
  "SIGEFIRRHH::Schema::Result::Disquete",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 encargadurias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Encargaduria>

=cut

__PACKAGE__->has_many(
  "encargadurias",
  "SIGEFIRRHH::Schema::Result::Encargaduria",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estructuras

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Estructura>

=cut

__PACKAGE__->has_many(
  "estructuras",
  "SIGEFIRRHH::Schema::Result::Estructura",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 firmasreportes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Firmasreporte>

=cut

__PACKAGE__->has_many(
  "firmasreportes",
  "SIGEFIRRHH::Schema::Result::Firmasreporte",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 frecuenciapagoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Frecuenciapago>

=cut

__PACKAGE__->has_many(
  "frecuenciapagoes",
  "SIGEFIRRHH::Schema::Result::Frecuenciapago",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 gruponominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->has_many(
  "gruponominas",
  "SIGEFIRRHH::Schema::Result::Gruponomina",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 grupoorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->has_many(
  "grupoorganismoes",
  "SIGEFIRRHH::Schema::Result::Grupoorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 grupotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Grupoticket>

=cut

__PACKAGE__->has_many(
  "grupotickets",
  "SIGEFIRRHH::Schema::Result::Grupoticket",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialapns

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialapn>

=cut

__PACKAGE__->has_many(
  "historialapns",
  "SIGEFIRRHH::Schema::Result::Historialapn",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialorganismo>

=cut

__PACKAGE__->has_many(
  "historialorganismoes",
  "SIGEFIRRHH::Schema::Result::Historialorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialremuns

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SIGEFIRRHH::Schema::Result::Historialremun",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_ciudad

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SIGEFIRRHH::Schema::Result::Ciudad",
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

Related object: L<SIGEFIRRHH::Schema::Result::Manualcargo>

=cut

__PACKAGE__->has_many(
  "manualcargoes",
  "SIGEFIRRHH::Schema::Result::Manualcargo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoregistroes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Movimientoregistro>

=cut

__PACKAGE__->has_many(
  "movimientoregistroes",
  "SIGEFIRRHH::Schema::Result::Movimientoregistro",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 movimientoscios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Movimientoscio>

=cut

__PACKAGE__->has_many(
  "movimientoscios",
  "SIGEFIRRHH::Schema::Result::Movimientoscio",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nombreorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Nombreorganismo>

=cut

__PACKAGE__->has_many(
  "nombreorganismoes",
  "SIGEFIRRHH::Schema::Result::Nombreorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 personalorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Personalorganismo>

=cut

__PACKAGE__->has_many(
  "personalorganismoes",
  "SIGEFIRRHH::Schema::Result::Personalorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planpersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Planpersonal>

=cut

__PACKAGE__->has_many(
  "planpersonals",
  "SIGEFIRRHH::Schema::Result::Planpersonal",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 polizas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Poliza>

=cut

__PACKAGE__->has_many(
  "polizas",
  "SIGEFIRRHH::Schema::Result::Poliza",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 programas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Programa>

=cut

__PACKAGE__->has_many(
  "programas",
  "SIGEFIRRHH::Schema::Result::Programa",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 proyectoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Proyecto>

=cut

__PACKAGE__->has_many(
  "proyectoes",
  "SIGEFIRRHH::Schema::Result::Proyecto",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reconocimientoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Reconocimiento>

=cut

__PACKAGE__->has_many(
  "reconocimientoes",
  "SIGEFIRRHH::Schema::Result::Reconocimiento",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 regions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Region>

=cut

__PACKAGE__->has_many(
  "regions",
  "SIGEFIRRHH::Schema::Result::Region",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registroes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registro>

=cut

__PACKAGE__->has_many(
  "registroes",
  "SIGEFIRRHH::Schema::Result::Registro",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrositps

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrositp>

=cut

__PACKAGE__->has_many(
  "registrositps",
  "SIGEFIRRHH::Schema::Result::Registrositp",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sancions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Sancion>

=cut

__PACKAGE__->has_many(
  "sancions",
  "SIGEFIRRHH::Schema::Result::Sancion",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sedes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->has_many(
  "sedes",
  "SIGEFIRRHH::Schema::Result::Sede",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tabuladors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Tabulador>

=cut

__PACKAGE__->has_many(
  "tabuladors",
  "SIGEFIRRHH::Schema::Result::Tabulador",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 turnoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Turno>

=cut

__PACKAGE__->has_many(
  "turnoes",
  "SIGEFIRRHH::Schema::Result::Turno",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 unidadadministradoras

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Unidadadministradora>

=cut

__PACKAGE__->has_many(
  "unidadadministradoras",
  "SIGEFIRRHH::Schema::Result::Unidadadministradora",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 unidadfuncionals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Unidadfuncional>

=cut

__PACKAGE__->has_many(
  "unidadfuncionals",
  "SIGEFIRRHH::Schema::Result::Unidadfuncional",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 usuarioorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Usuarioorganismo>

=cut

__PACKAGE__->has_many(
  "usuarioorganismoes",
  "SIGEFIRRHH::Schema::Result::Usuarioorganismo",
  { "foreign.id_organismo" => "self.id_organismo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+c4ClQdlxZS4qy/jhRBRJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
