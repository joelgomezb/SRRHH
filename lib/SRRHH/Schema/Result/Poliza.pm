use utf8;
package SRRHH::Schema::Result::Poliza;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Poliza

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

=head1 TABLE: C<poliza>

=cut

__PACKAGE__->table("poliza");

=head1 ACCESSORS

=head2 id_poliza

  data_type: 'integer'
  is_nullable: 0

=head2 cod_poliza

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 tipo

  data_type: 'varchar'
  default_value: 'H'
  is_nullable: 0
  size: 1

=head2 numero_poliza

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 aseguradora

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 permite_exceso

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_poliza",
  { data_type => "integer", is_nullable => 0 },
  "cod_poliza",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "tipo",
  { data_type => "varchar", default_value => "H", is_nullable => 0, size => 1 },
  "numero_poliza",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "aseguradora",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "permite_exceso",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_poliza>

=back

=cut

__PACKAGE__->set_primary_key("id_poliza");

=head1 UNIQUE CONSTRAINTS

=head2 C<poliza_cod>

=over 4

=item * L</cod_poliza>

=back

=cut

__PACKAGE__->add_unique_constraint("poliza_cod", ["cod_poliza"]);

=head1 RELATIONS

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

=head2 planpolizas

Type: has_many

Related object: L<SRRHH::Schema::Result::Planpoliza>

=cut

__PACKAGE__->has_many(
  "planpolizas",
  "SRRHH::Schema::Result::Planpoliza",
  { "foreign.id_poliza" => "self.id_poliza" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DefH992GkS927eLx0T+a0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
