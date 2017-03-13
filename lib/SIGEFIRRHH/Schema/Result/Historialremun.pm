use utf8;
package SIGEFIRRHH::Schema::Result::Historialremun;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Historialremun

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

=head1 TABLE: C<historialremun>

=cut

__PACKAGE__->table("historialremun");

=head1 ACCESSORS

=head2 id_historial_remun

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_movimiento

  data_type: 'date'
  is_nullable: 0

=head2 codrac

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sueldo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_cargo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 primas_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 paso

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 codigo_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 id_clasificacion_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_mov_remuneracion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 codigo_manual

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 descripcion_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 documento_soporte

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 numero_movimiento

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombre_institucion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_historial_remun",
  { data_type => "integer", is_nullable => 0 },
  "fecha_movimiento",
  { data_type => "date", is_nullable => 0 },
  "codrac",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sueldo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_cargo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "primas_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "grado",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "paso",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "codigo_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "id_clasificacion_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_mov_remuneracion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "codigo_manual",
  { data_type => "integer", is_nullable => 1 },
  "codigo_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "descripcion_cargo",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "documento_soporte",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "numero_movimiento",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_institucion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historial_remun>

=back

=cut

__PACKAGE__->set_primary_key("id_historial_remun");

=head1 UNIQUE CONSTRAINTS

=head2 C<historialremun_codigo>

=over 4

=item * L</id_personal>

=item * L</fecha_movimiento>

=item * L</numero_movimiento>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "historialremun_codigo",
  ["id_personal", "fecha_movimiento", "numero_movimiento"],
);

=head1 RELATIONS

=head2 id_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 id_clasificacion_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Clasificacionpersonal>

=cut

__PACKAGE__->belongs_to(
  "id_clasificacion_personal",
  "SIGEFIRRHH::Schema::Result::Clasificacionpersonal",
  { id_clasificacion_personal => "id_clasificacion_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_mov_remuneracion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Movremuneracion>

=cut

__PACKAGE__->belongs_to(
  "id_mov_remuneracion",
  "SIGEFIRRHH::Schema::Result::Movremuneracion",
  { id_mov_remuneracion => "id_mov_remuneracion" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Cd4cF5KcCL/N1JYbbCDoxg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
