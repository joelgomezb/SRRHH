use utf8;
package SIGEFIRRHH::Schema::Result::Aumentoevaluacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Aumentoevaluacion

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

=head1 TABLE: C<aumentoevaluacion>

=cut

__PACKAGE__->table("aumentoevaluacion");

=head1 ACCESSORS

=head2 id_aumento_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 resultado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 paso_anterior

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ajuste_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 otros_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base_aumento

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo_nuevo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_aumentar

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 aumento_definitivo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 paso_nuevo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_aumentar

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_unico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ajuste_escala

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 dias_retroactivo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_retroactivo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_resultado_evaluacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "id_aumento_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "resultado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "grado",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "paso_anterior",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ajuste_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "otros_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base_aumento",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo_nuevo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_aumentar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "aumento_definitivo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "paso_nuevo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_aumentar",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_unico",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ajuste_escala",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "dias_retroactivo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_retroactivo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_resultado_evaluacion",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 2 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_aumento_evaluacion>

=back

=cut

__PACKAGE__->set_primary_key("id_aumento_evaluacion");

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bN64IUi7unrljIbtdOFziQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
