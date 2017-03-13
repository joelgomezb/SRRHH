use utf8;
package SRRHH::Schema::Result::Ultimaprenomina;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Ultimaprenomina

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

=head1 TABLE: C<ultimaprenomina>

=cut

__PACKAGE__->table("ultimaprenomina");

=head1 ACCESSORS

=head2 id_ultima_prenomina

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

=cut

__PACKAGE__->add_columns(
  "id_ultima_prenomina",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
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
);

=head1 PRIMARY KEY

=over 4

=item * L</id_ultima_prenomina>

=back

=cut

__PACKAGE__->set_primary_key("id_ultima_prenomina");

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
    on_delete     => "NO ACTION",
    on_update     => "SET NULL",
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bzCObVsMcC2TcORZ0xAjFQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
