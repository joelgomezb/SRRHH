use utf8;
package SRRHH::Schema::Result::Proyeccion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Proyeccion

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

=head1 TABLE: C<proyeccion>

=cut

__PACKAGE__->table("proyeccion");

=head1 ACCESSORS

=head2 id_aplicar_tabulador

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 grado_actual

  data_type: 'integer'
  is_nullable: 1

=head2 paso_actual

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo_actual

  data_type: 'double precision'
  is_nullable: 1

=head2 ajuste_actual

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion_actual

  data_type: 'double precision'
  is_nullable: 1

=head2 paso_nuevo

  data_type: 'integer'
  is_nullable: 1

=head2 sueldo_nuevo

  data_type: 'double precision'
  is_nullable: 1

=head2 ajuste_nuevo

  data_type: 'double precision'
  is_nullable: 1

=head2 compensacion_nueva

  data_type: 'double precision'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 monto_retroactivo

  data_type: 'double precision'
  is_nullable: 1

=head2 dias_retroactivo

  data_type: 'integer'
  is_nullable: 1

=head2 base_aumento

  data_type: 'double precision'
  is_nullable: 1

=head2 prima_profesional_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_profesional_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_razones_servicio_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 prima_razones_servicio_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext1_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext1_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext2_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext2_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext3_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 bono_comp_jext3_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 retroactivo_sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 retroactivo_compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 coduel

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "id_aplicar_tabulador",
  { data_type => "integer", is_nullable => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "grado_actual",
  { data_type => "integer", is_nullable => 1 },
  "paso_actual",
  { data_type => "integer", is_nullable => 1 },
  "sueldo_actual",
  { data_type => "double precision", is_nullable => 1 },
  "ajuste_actual",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion_actual",
  { data_type => "double precision", is_nullable => 1 },
  "paso_nuevo",
  { data_type => "integer", is_nullable => 1 },
  "sueldo_nuevo",
  { data_type => "double precision", is_nullable => 1 },
  "ajuste_nuevo",
  { data_type => "double precision", is_nullable => 1 },
  "compensacion_nueva",
  { data_type => "double precision", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "monto_retroactivo",
  { data_type => "double precision", is_nullable => 1 },
  "dias_retroactivo",
  { data_type => "integer", is_nullable => 1 },
  "base_aumento",
  { data_type => "double precision", is_nullable => 1 },
  "prima_profesional_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_profesional_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_razones_servicio_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "prima_razones_servicio_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext1_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext1_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext2_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext2_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext3_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "bono_comp_jext3_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "retroactivo_sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "retroactivo_compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "coduel",
  { data_type => "varchar", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dFkZD3DDL1P0aC7OlnGHoA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
