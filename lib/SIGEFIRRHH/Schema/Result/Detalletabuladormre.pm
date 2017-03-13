use utf8;
package SIGEFIRRHH::Schema::Result::Detalletabuladormre;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Detalletabuladormre

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

=head1 TABLE: C<detalletabuladormre>

=cut

__PACKAGE__->table("detalletabuladormre");

=head1 ACCESSORS

=head2 id_detalle_tabulador_mre

  data_type: 'integer'
  is_nullable: 0

=head2 id_tabulador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nivel

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 asignacion_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fluctuacion_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_detalle_tabulador_mre",
  { data_type => "integer", is_nullable => 0 },
  "id_tabulador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nivel",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "asignacion_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fluctuacion_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_detalle_tabulador_mre>

=back

=cut

__PACKAGE__->set_primary_key("id_detalle_tabulador_mre");

=head1 UNIQUE CONSTRAINTS

=head2 C<detalletabuladormre_cod>

=over 4

=item * L</id_tabulador>

=item * L</id_ciudad>

=item * L</nivel>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "detalletabuladormre_cod",
  ["id_tabulador", "id_ciudad", "nivel"],
);

=head1 RELATIONS

=head2 id_ciudad

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SIGEFIRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tabulador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tabulador>

=cut

__PACKAGE__->belongs_to(
  "id_tabulador",
  "SIGEFIRRHH::Schema::Result::Tabulador",
  { id_tabulador => "id_tabulador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:znd7gx7SeGAoRrFrbNOEzg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
