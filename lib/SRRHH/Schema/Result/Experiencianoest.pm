use utf8;
package SRRHH::Schema::Result::Experiencianoest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Experiencianoest

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

=head1 TABLE: C<experiencianoest>

=cut

__PACKAGE__->table("experiencianoest");

=head1 ACCESSORS

=head2 id_experiencia_no_est

  data_type: 'integer'
  is_nullable: 0

=head2 nombre_institucion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 0

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 cargo_ingreso

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cargo_egreso

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 jefe

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 causa_retiro

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 ultimo_sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 1
  size: 300

=head2 id_personal

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
  "id_experiencia_no_est",
  { data_type => "integer", is_nullable => 0 },
  "nombre_institucion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 0 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "cargo_ingreso",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cargo_egreso",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "jefe",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "causa_retiro",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "ultimo_sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 1, size => 300 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_experiencia_no_est>

=back

=cut

__PACKAGE__->set_primary_key("id_experiencia_no_est");

=head1 UNIQUE CONSTRAINTS

=head2 C<experiencia_fechanoest>

=over 4

=item * L</id_personal>

=item * L</fecha_ingreso>

=back

=cut

__PACKAGE__->add_unique_constraint("experiencia_fechanoest", ["id_personal", "fecha_ingreso"]);

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RAL3nuSZF97gNl8QRXj2ng


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
