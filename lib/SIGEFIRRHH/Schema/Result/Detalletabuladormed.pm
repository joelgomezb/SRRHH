use utf8;
package SIGEFIRRHH::Schema::Result::Detalletabuladormed;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Detalletabuladormed

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

=head1 TABLE: C<detalletabuladormed>

=cut

__PACKAGE__->table("detalletabuladormed");

=head1 ACCESSORS

=head2 id_detalle_tabulador_med

  data_type: 'integer'
  is_nullable: 0

=head2 id_tabulador

  data_type: 'integer'
  is_nullable: 0

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 sueldo_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 sueldo_hora

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 carga_horaria

  data_type: 'double precision'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_detalle_tabulador_med",
  { data_type => "integer", is_nullable => 0 },
  "id_tabulador",
  { data_type => "integer", is_nullable => 0 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "sueldo_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "sueldo_hora",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "carga_horaria",
  { data_type => "double precision", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_detalle_tabulador_med>

=back

=cut

__PACKAGE__->set_primary_key("id_detalle_tabulador_med");

=head1 UNIQUE CONSTRAINTS

=head2 C<detalletabuladormed_cod>

=over 4

=item * L</id_tabulador>

=item * L</cod_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("detalletabuladormed_cod", ["id_tabulador", "cod_cargo"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D9u3h/vCyEz4t7QNHevkJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
