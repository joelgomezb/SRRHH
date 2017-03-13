use utf8;
package SRRHH::Schema::Result::Detalledisquete;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Detalledisquete

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

=head1 TABLE: C<detalledisquete>

=cut

__PACKAGE__->table("detalledisquete");

=head1 ACCESSORS

=head2 id_detalle_disquete

  data_type: 'integer'
  is_nullable: 0

=head2 id_disquete

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_registro

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 numero_campo

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 tipo_campo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 longitud_campo

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 campo_base_datos

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 3

=head2 campo_entrada

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 3

=head2 campo_usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 separador_decimal

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 alineacion_campo

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 rellenar_cero

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 multiplicador

  data_type: 'double precision'
  default_value: 1
  is_nullable: 0

=head2 id_concepto

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 campo_totales

  data_type: 'varchar'
  default_value: 0
  is_nullable: 1
  size: 3

=head2 separador_miles

  data_type: 'text'
  default_value: 'N'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_detalle_disquete",
  { data_type => "integer", is_nullable => 0 },
  "id_disquete",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo_registro",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "numero_campo",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "tipo_campo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "longitud_campo",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "campo_base_datos",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 3 },
  "campo_entrada",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 3 },
  "campo_usuario",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "separador_decimal",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "alineacion_campo",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "rellenar_cero",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "multiplicador",
  { data_type => "double precision", default_value => 1, is_nullable => 0 },
  "id_concepto",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "campo_totales",
  { data_type => "varchar", default_value => 0, is_nullable => 1, size => 3 },
  "separador_miles",
  {
    data_type     => "text",
    default_value => "N",
    is_nullable   => 1,
    original      => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_detalle_disquete>

=back

=cut

__PACKAGE__->set_primary_key("id_detalle_disquete");

=head1 UNIQUE CONSTRAINTS

=head2 C<detalledisquete_cod>

=over 4

=item * L</id_disquete>

=item * L</tipo_registro>

=item * L</numero_campo>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "detalledisquete_cod",
  ["id_disquete", "tipo_registro", "numero_campo"],
);

=head1 RELATIONS

=head2 id_concepto

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto",
  "SRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_disquete

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Disquete>

=cut

__PACKAGE__->belongs_to(
  "id_disquete",
  "SRRHH::Schema::Result::Disquete",
  { id_disquete => "id_disquete" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WD8nvA9y5m9eAbVJ0n40sw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
