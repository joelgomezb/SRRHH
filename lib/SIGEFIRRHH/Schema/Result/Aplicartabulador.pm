use utf8;
package SIGEFIRRHH::Schema::Result::Aplicartabulador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Aplicartabulador

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

=head1 TABLE: C<aplicartabulador>

=cut

__PACKAGE__->table("aplicartabulador");

=head1 ACCESSORS

=head2 id_aplicar_tabulador

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 grado_actual

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 paso_actual

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ajuste_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 paso_nuevo

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo_nuevo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ajuste_nuevo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_nueva

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 monto_retroactivo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 dias_retroactivo

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 base_aumento

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_aplicar_tabulador",
  { data_type => "integer", is_nullable => 0 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "grado_actual",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "paso_actual",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ajuste_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "paso_nuevo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo_nuevo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ajuste_nuevo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_nueva",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "monto_retroactivo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "dias_retroactivo",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "base_aumento",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_aplicar_tabulador>

=back

=cut

__PACKAGE__->set_primary_key("id_aplicar_tabulador");

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RG4N09C5n1OVgaZ4D85JrA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
