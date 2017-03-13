use utf8;
package SRRHH::Schema::Result::Ausencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Ausencia

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

=head1 TABLE: C<ausencia>

=cut

__PACKAGE__->table("ausencia");

=head1 ACCESSORS

=head2 id_ausencia

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cesta_ticket

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 dias_continuos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias_habiles

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cedula_director

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 clase

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 0

=head2 horas_dias

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 cedula_jefe

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 nombre_director

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 nombre_jefe

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 nombre_supervisor

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cedula_supervisor

  data_type: 'integer'
  is_nullable: 1

=head2 id_tipo_ausencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 remunerado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 descuento_estatus

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_ausencia",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cesta_ticket",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "dias_continuos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias_habiles",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cedula_director",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "clase",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 0 },
  "horas_dias",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "cedula_jefe",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "nombre_director",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "nombre_jefe",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "nombre_supervisor",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "observaciones",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cedula_supervisor",
  { data_type => "integer", is_nullable => 1 },
  "id_tipo_ausencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "remunerado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "descuento_estatus",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_ausencia>

=back

=cut

__PACKAGE__->set_primary_key("id_ausencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<ausencia_cod>

=over 4

=item * L</id_personal>

=item * L</fecha_inicio>

=back

=cut

__PACKAGE__->add_unique_constraint("ausencia_cod", ["id_personal", "fecha_inicio"]);

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

=head2 id_tipo_ausencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipoausencia>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_ausencia",
  "SRRHH::Schema::Result::Tipoausencia",
  { id_tipo_ausencia => "id_tipo_ausencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1D+zaSZ/fYjC1gt2LnYB3A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
