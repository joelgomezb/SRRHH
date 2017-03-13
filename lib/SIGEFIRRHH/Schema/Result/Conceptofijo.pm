use utf8;
package SIGEFIRRHH::Schema::Result::Conceptofijo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptofijo

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

=head1 TABLE: C<conceptofijo>

=cut

__PACKAGE__->table("conceptofijo");

=head1 ACCESSORS

=head2 id_concepto_fijo

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 fecha_comienzo

  data_type: 'date'
  is_nullable: 1

=head2 fecha_eliminar

  data_type: 'date'
  is_nullable: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 restituir

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 monto_restituir

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 unidades_restituir

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_proyectado

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_fijo",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "fecha_comienzo",
  { data_type => "date", is_nullable => 1 },
  "fecha_eliminar",
  { data_type => "date", is_nullable => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "restituir",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "monto_restituir",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "unidades_restituir",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_proyectado",
  { data_type => "double precision", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_fijo>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_fijo");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptofijo_cod>

=over 4

=item * L</id_trabajador>

=item * L</id_concepto_tipo_personal>

=item * L</id_frecuencia_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "conceptofijo_cod",
  [
    "id_trabajador",
    "id_concepto_tipo_personal",
    "id_frecuencia_tipo_personal",
  ],
);

=head1 RELATIONS

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

=head2 id_trabajador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:V2RJFHCpywa3OZYBn0yXkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
