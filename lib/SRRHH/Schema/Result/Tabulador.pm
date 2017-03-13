use utf8;
package SRRHH::Schema::Result::Tabulador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tabulador

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

=head1 TABLE: C<tabulador>

=cut

__PACKAGE__->table("tabulador");

=head1 ACCESSORS

=head2 id_tabulador

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tabulador

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 indicador_paso

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_tabulador

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 nombre_moneda

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_tabulador",
  { data_type => "integer", is_nullable => 0 },
  "cod_tabulador",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "indicador_paso",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "id_organismo",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "tipo_tabulador",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "nombre_moneda",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tabulador>

=back

=cut

__PACKAGE__->set_primary_key("id_tabulador");

=head1 RELATIONS

=head2 ajustetabuladoronus

Type: has_many

Related object: L<SRRHH::Schema::Result::Ajustetabuladoronu>

=cut

__PACKAGE__->has_many(
  "ajustetabuladoronus",
  "SRRHH::Schema::Result::Ajustetabuladoronu",
  { "foreign.id_tabulador" => "self.id_tabulador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 detalletabuladormres

Type: has_many

Related object: L<SRRHH::Schema::Result::Detalletabuladormre>

=cut

__PACKAGE__->has_many(
  "detalletabuladormres",
  "SRRHH::Schema::Result::Detalletabuladormre",
  { "foreign.id_tabulador" => "self.id_tabulador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 detalletabuladoronus

Type: has_many

Related object: L<SRRHH::Schema::Result::Detalletabuladoronu>

=cut

__PACKAGE__->has_many(
  "detalletabuladoronus",
  "SRRHH::Schema::Result::Detalletabuladoronu",
  { "foreign.id_tabulador" => "self.id_tabulador" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 manualcargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Manualcargo>

=cut

__PACKAGE__->has_many(
  "manualcargoes",
  "SRRHH::Schema::Result::Manualcargo",
  { "foreign.id_tabulador" => "self.id_tabulador" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1ULQQLGA2uEtlQEbJBe+Lg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
