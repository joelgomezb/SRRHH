use utf8;
package SIGEFIRRHH::Schema::Result::ConceptofijoAuditoria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::ConceptofijoAuditoria

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

=head1 TABLE: C<conceptofijo_auditoria>

=cut

__PACKAGE__->table("conceptofijo_auditoria");

=head1 ACCESSORS

=head2 id_concepto_fijo

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal_old

  data_type: 'integer'
  is_nullable: 1

=head2 id_frecuencia_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_frecuencia_tipo_personal_old

  data_type: 'integer'
  is_nullable: 1

=head2 unidades

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 unidades_old

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_old

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 fecha_registro_old

  data_type: 'date'
  is_nullable: 1

=head2 fecha_comienzo

  data_type: 'date'
  is_nullable: 1

=head2 fecha_comienzo_old

  data_type: 'date'
  is_nullable: 1

=head2 fecha_eliminar

  data_type: 'date'
  is_nullable: 1

=head2 fecha_eliminar_old

  data_type: 'date'
  is_nullable: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 documento_soporte_old

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 estatus_old

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 1
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_sitp_old

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 tiempo_sitp_old

  data_type: 'date'
  is_nullable: 1

=head2 restituir

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 restituir_old

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 monto_restituir

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_restituir_old

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 unidades_restituir

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 unidades_restituir_old

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_anterior_old

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_proyectado

  data_type: 'double precision'
  is_nullable: 1

=head2 monto_proyectado_old

  data_type: 'double precision'
  is_nullable: 1

=head2 fecha_movimiento

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 1
  original: {default_value => \"now()"}

=head2 tipo_movimiento

  data_type: '"char"'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_fijo",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal_old",
  { data_type => "integer", is_nullable => 1 },
  "id_frecuencia_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_frecuencia_tipo_personal_old",
  { data_type => "integer", is_nullable => 1 },
  "unidades",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "unidades_old",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_old",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "fecha_registro_old",
  { data_type => "date", is_nullable => 1 },
  "fecha_comienzo",
  { data_type => "date", is_nullable => 1 },
  "fecha_comienzo_old",
  { data_type => "date", is_nullable => 1 },
  "fecha_eliminar",
  { data_type => "date", is_nullable => 1 },
  "fecha_eliminar_old",
  { data_type => "date", is_nullable => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "documento_soporte_old",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "estatus_old",
  { data_type => "varchar", default_value => "A", is_nullable => 1, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_sitp_old",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "tiempo_sitp_old",
  { data_type => "date", is_nullable => 1 },
  "restituir",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "restituir_old",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "monto_restituir",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_restituir_old",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "unidades_restituir",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "unidades_restituir_old",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_anterior_old",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_proyectado",
  { data_type => "double precision", is_nullable => 1 },
  "monto_proyectado_old",
  { data_type => "double precision", is_nullable => 1 },
  "fecha_movimiento",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 1,
    original      => { default_value => \"now()" },
  },
  "tipo_movimiento",
  { data_type => "\"char\"", is_nullable => 1, size => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Qf+bEa1nlYEVhli0vAdsAw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
