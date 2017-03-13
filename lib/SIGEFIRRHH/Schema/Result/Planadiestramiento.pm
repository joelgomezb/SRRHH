use utf8;
package SIGEFIRRHH::Schema::Result::Planadiestramiento;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Planadiestramiento

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

=head1 TABLE: C<planadiestramiento>

=cut

__PACKAGE__->table("planadiestramiento");

=head1 ACCESSORS

=head2 id_plan_adiestramiento

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_plan

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 numero_participantes

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 duracion

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 costo_estimado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 costo_aprobado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 costo_real

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 trimestre

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 id_unidad_funcional

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_area_conocimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_curso

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 unidad_tiempo

  data_type: 'varchar'
  default_value: 'H'
  is_nullable: 0
  size: 1

=head2 tipo_cargo

  data_type: 'varchar'
  default_value: 9
  is_nullable: 0
  size: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 interno_externo

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 nombre_entidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_tipo_curso

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 1

=head2 nivel

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_plan_adiestramiento",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_plan",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "numero_participantes",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "duracion",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "costo_estimado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "costo_aprobado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "costo_real",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "trimestre",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "id_unidad_funcional",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_area_conocimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_curso",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "unidad_tiempo",
  { data_type => "varchar", default_value => "H", is_nullable => 0, size => 1 },
  "tipo_cargo",
  { data_type => "varchar", default_value => 9, is_nullable => 0, size => 1 },
  "estatus",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "interno_externo",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_tipo_curso",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_plan_personal",
  { data_type => "integer", is_nullable => 1 },
  "nivel",
  { data_type => "varchar", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_plan_adiestramiento>

=back

=cut

__PACKAGE__->set_primary_key("id_plan_adiestramiento");

=head1 UNIQUE CONSTRAINTS

=head2 C<plan_adiestra_cod>

=over 4

=item * L</id_unidad_funcional>

=item * L</anio>

=item * L</numero_plan>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "plan_adiestra_cod",
  ["id_unidad_funcional", "anio", "numero_plan"],
);

=head1 RELATIONS

=head2 id_area_conocimiento

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Areaconocimiento>

=cut

__PACKAGE__->belongs_to(
  "id_area_conocimiento",
  "SIGEFIRRHH::Schema::Result::Areaconocimiento",
  { id_area_conocimiento => "id_area_conocimiento" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_curso

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipocurso>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_curso",
  "SIGEFIRRHH::Schema::Result::Tipocurso",
  { id_tipo_curso => "id_tipo_curso" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_unidad_funcional

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Unidadfuncional>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_funcional",
  "SIGEFIRRHH::Schema::Result::Unidadfuncional",
  { id_unidad_funcional => "id_unidad_funcional" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZrIbHYrn/OIQqTjDD4C3CA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
