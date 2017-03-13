use utf8;
package SIGEFIRRHH::Schema::Result::Conceptotipopersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptotipopersonal

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

=head1 TABLE: C<conceptotipopersonal>

=cut

__PACKAGE__->table("conceptotipopersonal");

=head1 ACCESSORS

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 valor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 automatico_ingreso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 tope_minimo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tope_anual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_escenario

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 formula_concepto

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 multiplicador_formula

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 otra_moneda

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 homologacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 cod_tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 cod_frecuencia_pago

  data_type: 'integer'
  is_nullable: 1

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 anual

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 ocurrencia

  data_type: 'double precision'
  default_value: 1
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 id_contrato_colectivo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 refleja_movimiento

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 recalculo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 distribucion

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 base_jubilacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "valor",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "automatico_ingreso",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "tope_minimo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tope_anual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_escenario",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "formula_concepto",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "multiplicador_formula",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "otra_moneda",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "homologacion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "cod_tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "cod_frecuencia_pago",
  { data_type => "integer", is_nullable => 1 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "anual",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "ocurrencia",
  { data_type => "double precision", default_value => 1, is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "id_contrato_colectivo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "refleja_movimiento",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "recalculo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "distribucion",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "base_jubilacion",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_tipo_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_tipo_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptotipopersonal_cod>

=over 4

=item * L</id_concepto>

=item * L</id_frecuencia_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "conceptotipopersonal_cod",
  ["id_concepto", "id_frecuencia_tipo_personal"],
);

=head2 C<tipopersonal_concepto>

=over 4

=item * L</id_concepto>

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("tipopersonal_concepto", ["id_concepto", "id_tipo_personal"]);

=head1 RELATIONS

=head2 cajaahorroes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cajaahorro>

=cut

__PACKAGE__->has_many(
  "cajaahorroes",
  "SIGEFIRRHH::Schema::Result::Cajaahorro",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 calculotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Calculoticket>

=cut

__PACKAGE__->has_many(
  "calculotickets",
  "SIGEFIRRHH::Schema::Result::Calculoticket",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoasociado_id_concepto_asociars

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoasociado>

=cut

__PACKAGE__->has_many(
  "conceptoasociado_id_concepto_asociars",
  "SIGEFIRRHH::Schema::Result::Conceptoasociado",
  {
    "foreign.id_concepto_asociar" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoasociado_id_concepto_tipo_personals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoasociado>

=cut

__PACKAGE__->has_many(
  "conceptoasociado_id_concepto_tipo_personals",
  "SIGEFIRRHH::Schema::Result::Conceptoasociado",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptocargoanios

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptocargoanio>

=cut

__PACKAGE__->has_many(
  "conceptocargoanios",
  "SIGEFIRRHH::Schema::Result::Conceptocargoanio",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptocargoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptocargo>

=cut

__PACKAGE__->has_many(
  "conceptocargoes",
  "SIGEFIRRHH::Schema::Result::Conceptocargo",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoconstancias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoconstancia>

=cut

__PACKAGE__->has_many(
  "conceptoconstancias",
  "SIGEFIRRHH::Schema::Result::Conceptoconstancia",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptocuentacontables

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptocuentacontable>

=cut

__PACKAGE__->has_many(
  "conceptocuentacontables",
  "SIGEFIRRHH::Schema::Result::Conceptocuentacontable",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptocuentas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptocuenta>

=cut

__PACKAGE__->has_many(
  "conceptocuentas",
  "SIGEFIRRHH::Schema::Result::Conceptocuenta",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptodependencia>

=cut

__PACKAGE__->has_many(
  "conceptodependencias",
  "SIGEFIRRHH::Schema::Result::Conceptodependencia",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodiplomaticoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptodiplomatico>

=cut

__PACKAGE__->has_many(
  "conceptodiplomaticoes",
  "SIGEFIRRHH::Schema::Result::Conceptodiplomatico",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptodocente>

=cut

__PACKAGE__->has_many(
  "conceptodocentes",
  "SIGEFIRRHH::Schema::Result::Conceptodocente",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoespecificas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoespecifica>

=cut

__PACKAGE__->has_many(
  "conceptoespecificas",
  "SIGEFIRRHH::Schema::Result::Conceptoespecifica",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptofijoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptofijo>

=cut

__PACKAGE__->has_many(
  "conceptofijoes",
  "SIGEFIRRHH::Schema::Result::Conceptofijo",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoliquidacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoliquidacion>

=cut

__PACKAGE__->has_many(
  "conceptoliquidacions",
  "SIGEFIRRHH::Schema::Result::Conceptoliquidacion",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptomovimientoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptomovimiento>

=cut

__PACKAGE__->has_many(
  "conceptomovimientoes",
  "SIGEFIRRHH::Schema::Result::Conceptomovimiento",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoprestaciones

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoprestacione>

=cut

__PACKAGE__->has_many(
  "conceptoprestaciones",
  "SIGEFIRRHH::Schema::Result::Conceptoprestacione",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptopresupuestoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptopresupuesto>

=cut

__PACKAGE__->has_many(
  "conceptopresupuestoes",
  "SIGEFIRRHH::Schema::Result::Conceptopresupuesto",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptotipopersonal_id_concepto_tipo_personal

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->might_have(
  "conceptotipopersonal_id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptotipopersonal_id_concepto_tipo_personal_2

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->might_have(
  "conceptotipopersonal_id_concepto_tipo_personal_2",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptoutilidades

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoutilidade>

=cut

__PACKAGE__->has_many(
  "conceptoutilidades",
  "SIGEFIRRHH::Schema::Result::Conceptoutilidade",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovacaciones_id_concepto_alicuotas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptovacacione>

=cut

__PACKAGE__->has_many(
  "conceptovacaciones_id_concepto_alicuotas",
  "SIGEFIRRHH::Schema::Result::Conceptovacacione",
  {
    "foreign.id_concepto_alicuota" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovacaciones_id_concepto_tipo_personals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptovacacione>

=cut

__PACKAGE__->has_many(
  "conceptovacaciones_id_concepto_tipo_personals",
  "SIGEFIRRHH::Schema::Result::Conceptovacacione",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptovariables

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptovariable>

=cut

__PACKAGE__->has_many(
  "conceptovariables",
  "SIGEFIRRHH::Schema::Result::Conceptovariable",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicotickets

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historicoticket>

=cut

__PACKAGE__->has_many(
  "historicotickets",
  "SIGEFIRRHH::Schema::Result::Historicoticket",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_concepto

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_concepto_tipo_personal_2

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal_2",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_contrato_colectivo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Contratocolectivo>

=cut

__PACKAGE__->belongs_to(
  "id_contrato_colectivo",
  "SIGEFIRRHH::Schema::Result::Contratocolectivo",
  { id_contrato_colectivo => "id_contrato_colectivo" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_frecuencia_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Frecuenciatipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_frecuencia_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Frecuenciatipopersonal",
  { id_frecuencia_tipo_personal => "id_frecuencia_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 otrasalicuotas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Otrasalicuota>

=cut

__PACKAGE__->has_many(
  "otrasalicuotas",
  "SIGEFIRRHH::Schema::Result::Otrasalicuota",
  {
    "foreign.id_concepto_alicuota" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrocaja

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Parametrocaja>

=cut

__PACKAGE__->might_have(
  "parametrocaja",
  "SIGEFIRRHH::Schema::Result::Parametrocaja",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parametrodotacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Parametrodotacion>

=cut

__PACKAGE__->has_many(
  "parametrodotacions",
  "SIGEFIRRHH::Schema::Result::Parametrodotacion",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prestamoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Prestamo>

=cut

__PACKAGE__->has_many(
  "prestamoes",
  "SIGEFIRRHH::Schema::Result::Prestamo",
  {
    "foreign.id_concepto_tipo_personal" => "self.id_concepto_tipo_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZMvJY83WpOFAHBP09YxAPA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
