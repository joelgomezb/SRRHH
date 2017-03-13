use utf8;
package SIGEFIRRHH::Schema::Result::Detalletabulador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Detalletabulador

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

=head1 TABLE: C<detalletabulador>

=cut

__PACKAGE__->table("detalletabulador");

=head1 ACCESSORS

=head2 id_detalle_tabulador

  data_type: 'integer'
  is_nullable: 0

=head2 id_tabulador

  data_type: 'integer'
  is_nullable: 0

=head2 grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sub_grado

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo_hora

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 carga_horaria

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_detalle_tabulador",
  { data_type => "integer", is_nullable => 0 },
  "id_tabulador",
  { data_type => "integer", is_nullable => 0 },
  "grado",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sub_grado",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "paso",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo_hora",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "carga_horaria",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_detalle_tabulador>

=back

=cut

__PACKAGE__->set_primary_key("id_detalle_tabulador");

=head1 UNIQUE CONSTRAINTS

=head2 C<detalletabulador_cod>

=over 4

=item * L</id_tabulador>

=item * L</grado>

=item * L</sub_grado>

=item * L</paso>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "detalletabulador_cod",
  ["id_tabulador", "grado", "sub_grado", "paso"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IoIvThhrUFCiz2oqtyaqQw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
