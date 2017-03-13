use utf8;
package SRRHH::Schema::Result::Sancion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Sancion

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

=head1 TABLE: C<sancion>

=cut

__PACKAGE__->table("sancion");

=head1 ACCESSORS

=head2 id_sancion

  data_type: 'integer'
  is_nullable: 0

=head2 acta

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 fecha

  data_type: 'date'
  is_nullable: 0

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_amonestacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_supervisor

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cargo_supervisor

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 100

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

=cut

__PACKAGE__->add_columns(
  "id_sancion",
  { data_type => "integer", is_nullable => 0 },
  "acta",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_amonestacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_supervisor",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cargo_supervisor",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sancion>

=back

=cut

__PACKAGE__->set_primary_key("id_sancion");

=head1 UNIQUE CONSTRAINTS

=head2 C<sancion_cod>

=over 4

=item * L</id_personal>

=item * L</id_tipo_amonestacion>

=item * L</fecha>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "sancion_cod",
  ["id_personal", "id_tipo_amonestacion", "fecha"],
);

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

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_amonestacion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipoamonestacion>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_amonestacion",
  "SRRHH::Schema::Result::Tipoamonestacion",
  { id_tipo_amonestacion => "id_tipo_amonestacion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:moKI6B86yjKjElWns5g2Ww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
