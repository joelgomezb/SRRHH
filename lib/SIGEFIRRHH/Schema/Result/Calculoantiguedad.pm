use utf8;
package SIGEFIRRHH::Schema::Result::Calculoantiguedad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Calculoantiguedad

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

=head1 TABLE: C<calculoantiguedad>

=cut

__PACKAGE__->table("calculoantiguedad");

=head1 ACCESSORS

=head2 id_calculo_antiguedad

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

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_anterior

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_calculo_antiguedad",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_anterior",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_calculo_antiguedad>

=back

=cut

__PACKAGE__->set_primary_key("id_calculo_antiguedad");

=head1 UNIQUE CONSTRAINTS

=head2 C<calculoantiguedad_cod>

=over 4

=item * L</id_trabajador>

=back

=cut

__PACKAGE__->add_unique_constraint("calculoantiguedad_cod", ["id_trabajador"]);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:h/P+0wHV8pQWs1bnPP0xTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
