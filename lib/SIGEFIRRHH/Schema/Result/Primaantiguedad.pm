use utf8;
package SIGEFIRRHH::Schema::Result::Primaantiguedad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Primaantiguedad

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

=head1 TABLE: C<primaantiguedad>

=cut

__PACKAGE__->table("primaantiguedad");

=head1 ACCESSORS

=head2 id_prima_antiguedad

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anios_servicio

  data_type: 'integer'
  default_value: 99
  is_nullable: 1

=head2 tipo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 operacion

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

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

=cut

__PACKAGE__->add_columns(
  "id_prima_antiguedad",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 99, is_nullable => 1 },
  "tipo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "operacion",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_prima_antiguedad>

=back

=cut

__PACKAGE__->set_primary_key("id_prima_antiguedad");

=head1 UNIQUE CONSTRAINTS

=head2 C<primaantiguedad_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</anios_servicio>

=back

=cut

__PACKAGE__->add_unique_constraint("primaantiguedad_cod", ["id_tipo_personal", "anios_servicio"]);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BuWX0AvNtFITVfosBcW3fw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
