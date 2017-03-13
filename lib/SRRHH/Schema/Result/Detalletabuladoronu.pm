use utf8;
package SRRHH::Schema::Result::Detalletabuladoronu;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Detalletabuladoronu

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

=head1 TABLE: C<detalletabuladoronu>

=cut

__PACKAGE__->table("detalletabuladoronu");

=head1 ACCESSORS

=head2 id_detalle_tabulador_onu

  data_type: 'integer'
  is_nullable: 0

=head2 id_tabulador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nivel

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 estado_civil

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 anios_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 asignacion_anual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_detalle_tabulador_onu",
  { data_type => "integer", is_nullable => 0 },
  "id_tabulador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nivel",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "estado_civil",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "asignacion_anual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_detalle_tabulador_onu>

=back

=cut

__PACKAGE__->set_primary_key("id_detalle_tabulador_onu");

=head1 UNIQUE CONSTRAINTS

=head2 C<detalletabuladoronu_cod>

=over 4

=item * L</id_tabulador>

=item * L</nivel>

=item * L</estado_civil>

=item * L</anios_servicio>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "detalletabuladoronu_cod",
  ["id_tabulador", "nivel", "estado_civil", "anios_servicio"],
);

=head1 RELATIONS

=head2 id_tabulador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tabulador>

=cut

__PACKAGE__->belongs_to(
  "id_tabulador",
  "SRRHH::Schema::Result::Tabulador",
  { id_tabulador => "id_tabulador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yvp+VZw2CzhZZjd/2XIu7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
