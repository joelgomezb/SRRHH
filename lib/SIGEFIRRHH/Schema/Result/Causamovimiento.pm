use utf8;
package SIGEFIRRHH::Schema::Result::Causamovimiento;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Causamovimiento

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

=head1 TABLE: C<causamovimiento>

=cut

__PACKAGE__->table("causamovimiento");

=head1 ACCESSORS

=head2 id_causa_movimiento

  data_type: 'integer'
  is_nullable: 0

=head2 cod_causa_movimiento

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_movimiento_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 sujeto_lefp

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 grado99

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 tipo_validacion

  data_type: 'integer'
  is_nullable: 1

=head2 formato

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "id_causa_movimiento",
  { data_type => "integer", is_nullable => 0 },
  "cod_causa_movimiento",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_movimiento_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "sujeto_lefp",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "grado99",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipo_validacion",
  { data_type => "integer", is_nullable => 1 },
  "formato",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_causa_movimiento>

=back

=cut

__PACKAGE__->set_primary_key("id_causa_movimiento");

=head1 RELATIONS

=head2 causapersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Causapersonal>

=cut

__PACKAGE__->has_many(
  "causapersonals",
  "SIGEFIRRHH::Schema::Result::Causapersonal",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialapns

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialapn>

=cut

__PACKAGE__->has_many(
  "historialapns",
  "SIGEFIRRHH::Schema::Result::Historialapn",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialorganismo>

=cut

__PACKAGE__->has_many(
  "historialorganismoes",
  "SIGEFIRRHH::Schema::Result::Historialorganismo",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_movimiento_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Movimientopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_movimiento_personal",
  "SIGEFIRRHH::Schema::Result::Movimientopersonal",
  { id_movimiento_personal => "id_movimiento_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 movimientoregistroes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Movimientoregistro>

=cut

__PACKAGE__->has_many(
  "movimientoregistroes",
  "SIGEFIRRHH::Schema::Result::Movimientoregistro",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrositps

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrositp>

=cut

__PACKAGE__->has_many(
  "registrositps",
  "SIGEFIRRHH::Schema::Result::Registrositp",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_causa_movimiento" => "self.id_causa_movimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OS8UoM/AxIJV1NnIRmUarA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
