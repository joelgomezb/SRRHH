use utf8;
package SRRHH::Schema::Result::Calculovacacional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Calculovacacional

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

=head1 TABLE: C<calculovacacional>

=cut

__PACKAGE__->table("calculovacacional");

=head1 ACCESSORS

=head2 id_calculo_vacacional

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anios_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 bono_sin_alicuota

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_alicuota

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_petrolero

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 bono_extra

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 total_bono

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 dias

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base_fijo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base_promedio

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base_devengado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base_proyectado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 momento_pago

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 base_alicuota

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_calculo_vacacional",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "bono_sin_alicuota",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_alicuota",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_petrolero",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "bono_extra",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "total_bono",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "dias",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base_fijo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base_promedio",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base_devengado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base_proyectado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "momento_pago",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "base_alicuota",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_calculo_vacacional>

=back

=cut

__PACKAGE__->set_primary_key("id_calculo_vacacional");

=head1 UNIQUE CONSTRAINTS

=head2 C<calculovacacional_cod>

=over 4

=item * L</id_trabajador>

=back

=cut

__PACKAGE__->add_unique_constraint("calculovacacional_cod", ["id_trabajador"]);

=head1 RELATIONS

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

=head2 id_trabajador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nS8z3wP562ZmNehWjBrWng


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
