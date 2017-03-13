use utf8;
package SIGEFIRRHH::Schema::Result::Antecedente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Antecedente

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

=head1 TABLE: C<antecedente>

=cut

__PACKAGE__->table("antecedente");

=head1 ACCESSORS

=head2 id_antecedente

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 0

=head2 personal_ingreso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo_ingreso

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 descargo_ingreso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codrac_ingreso

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sueldo_ingreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_ingreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_ingreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 personal_egreso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cargo_egreso

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 descargo_egreso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 causa_egreso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 codrac_egreso

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sueldo_egreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion_egreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_egreso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 prestaciones_pendientes

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 vacaciones_pendientes

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 dias_vacaciones

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_institucion

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_antecedente",
  { data_type => "integer", is_nullable => 0 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 0 },
  "personal_ingreso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo_ingreso",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "descargo_ingreso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codrac_ingreso",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sueldo_ingreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_ingreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_ingreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "personal_egreso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cargo_egreso",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "descargo_egreso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "causa_egreso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "codrac_egreso",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sueldo_egreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion_egreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_egreso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "prestaciones_pendientes",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "vacaciones_pendientes",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "dias_vacaciones",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_institucion",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<antecedente_pkey>

=over 4

=item * L</id_antecedente>

=back

=cut

__PACKAGE__->add_unique_constraint("antecedente_pkey", ["id_antecedente"]);

=head2 C<antecendente_codigo>

=over 4

=item * L</id_personal>

=item * L</fecha_ingreso>

=back

=cut

__PACKAGE__->add_unique_constraint("antecendente_codigo", ["id_personal", "fecha_ingreso"]);

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W46y/St0uN2NHagNjuPLkg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
