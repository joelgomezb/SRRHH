use utf8;
package SRRHH::Schema::Result::Historicoquincena;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Historicoquincena

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

=head1 TABLE: C<historicoquincena>

=cut

__PACKAGE__->table("historicoquincena");

=head1 ACCESSORS

=head2 id_historico_quincena

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 numero_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 semana_quincena

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_asigna

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_deduce

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 origen

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_nomina_especial

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_historico_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 0

=head2 monto_aporte

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 id_concepto_aporte

  data_type: 'integer'
  is_nullable: 1

=head2 mes_sobretiempo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio_sobretiempo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_historico_quincena",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "semana_quincena",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_asigna",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_deduce",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "origen",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_nomina_especial",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_historico_nomina",
  { data_type => "integer", is_nullable => 1 },
  "id_concepto",
  { data_type => "integer", is_nullable => 0 },
  "monto_aporte",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "id_concepto_aporte",
  { data_type => "integer", is_nullable => 1 },
  "mes_sobretiempo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_sobretiempo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historico_quincena>

=back

=cut

__PACKAGE__->set_primary_key("id_historico_quincena");

=head1 RELATIONS

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

=head2 id_nomina_especial

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Nominaespecial>

=cut

__PACKAGE__->belongs_to(
  "id_nomina_especial",
  "SRRHH::Schema::Result::Nominaespecial",
  { id_nomina_especial => "id_nomina_especial" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ESft0FnF1dpNl3wT3tDUAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
