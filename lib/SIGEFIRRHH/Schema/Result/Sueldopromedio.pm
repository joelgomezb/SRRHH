use utf8;
package SIGEFIRRHH::Schema::Result::Sueldopromedio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Sueldopromedio

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

=head1 TABLE: C<sueldopromedio>

=cut

__PACKAGE__->table("sueldopromedio");

=head1 ACCESSORS

=head2 id_sueldo_promedio

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 promedio_integral

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo_anual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 retencion_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_vacaciones

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 promedio_utilidad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 aporte_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 aporte_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 aporte_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 aporte_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 promedio_ajustes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 promedio_compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 promedio_primasc

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 promedio_primast

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 promedio_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_variable_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_variable_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_variable_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 id_grupo_nomina

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_sueldo_promedio",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "promedio_integral",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo_anual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "retencion_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_vacaciones",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "promedio_utilidad",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "aporte_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "aporte_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "aporte_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "aporte_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "promedio_ajustes",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "promedio_compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "promedio_primasc",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "promedio_primast",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "promedio_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_variable_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_variable_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_variable_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sueldo_promedio>

=back

=cut

__PACKAGE__->set_primary_key("id_sueldo_promedio");

=head1 UNIQUE CONSTRAINTS

=head2 C<sueldopromediocod>

=over 4

=item * L</id_trabajador>

=back

=cut

__PACKAGE__->add_unique_constraint("sueldopromediocod", ["id_trabajador"]);

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:alCo6Qic1V4mppzaP7yPjA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
