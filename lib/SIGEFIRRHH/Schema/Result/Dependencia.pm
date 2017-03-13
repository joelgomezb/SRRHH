use utf8;
package SIGEFIRRHH::Schema::Result::Dependencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Dependencia

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

=head1 TABLE: C<dependencia>

=cut

__PACKAGE__->table("dependencia");

=head1 ACCESSORS

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 dependencia_staff

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 vigente

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 localidad

  data_type: 'varchar'
  default_value: 'C'
  is_nullable: 0
  size: 1

=head2 nivel_estructura

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sede_diplomatica

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_tipo_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_administradora_uel

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_unidad_funcional

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_grupo_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia_anterior

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 id_sede

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 cod_cesta

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_region

  data_type: 'integer'
  is_nullable: 0

=head2 id_estructura

  data_type: 'integer'
  is_nullable: 1

=head2 id_padre

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nivel

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "dependencia_staff",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "vigente",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "localidad",
  { data_type => "varchar", default_value => "C", is_nullable => 0, size => 1 },
  "nivel_estructura",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sede_diplomatica",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_tipo_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_administradora_uel",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_unidad_funcional",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_grupo_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_dependencia_anterior",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "id_sede",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "cod_cesta",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_region",
  { data_type => "integer", is_nullable => 0 },
  "id_estructura",
  { data_type => "integer", is_nullable => 1 },
  "id_padre",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nivel",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dependencia>

=back

=cut

__PACKAGE__->set_primary_key("id_dependencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<dependencia_cod>

=over 4

=item * L</id_grupo_organismo>

=item * L</cod_dependencia>

=item * L</fecha_vigencia>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "dependencia_cod",
  ["id_grupo_organismo", "cod_dependencia", "fecha_vigencia"],
);

=head1 RELATIONS

=head2 aperturaescolars

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Aperturaescolar>

=cut

__PACKAGE__->has_many(
  "aperturaescolars",
  "SIGEFIRRHH::Schema::Result::Aperturaescolar",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 clasificaciondependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Clasificaciondependencia>

=cut

__PACKAGE__->has_many(
  "clasificaciondependencias",
  "SIGEFIRRHH::Schema::Result::Clasificaciondependencia",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptodependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptodependencia>

=cut

__PACKAGE__->has_many(
  "conceptodependencias",
  "SIGEFIRRHH::Schema::Result::Conceptodependencia",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dependenciajudicial

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Dependenciajudicial>

=cut

__PACKAGE__->might_have(
  "dependenciajudicial",
  "SIGEFIRRHH::Schema::Result::Dependenciajudicial",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->has_many(
  "dependencias",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { "foreign.id_dependencia_anterior" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_administradora_uel

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Administradorauel>

=cut

__PACKAGE__->belongs_to(
  "id_administradora_uel",
  "SIGEFIRRHH::Schema::Result::Administradorauel",
  { id_administradora_uel => "id_administradora_uel" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_dependencia_anterior

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia_anterior",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia_anterior" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_grupo_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_organismo",
  "SIGEFIRRHH::Schema::Result::Grupoorganismo",
  { id_grupo_organismo => "id_grupo_organismo" },
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

=head2 id_sede

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->belongs_to(
  "id_sede",
  "SIGEFIRRHH::Schema::Result::Sede",
  { id_sede => "id_sede" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_dependencia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipodependencia>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_dependencia",
  "SIGEFIRRHH::Schema::Result::Tipodependencia",
  { id_tipo_dependencia => "id_tipo_dependencia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_unidad_funcional

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Unidadfuncional>

=cut

__PACKAGE__->belongs_to(
  "id_unidad_funcional",
  "SIGEFIRRHH::Schema::Result::Unidadfuncional",
  { id_unidad_funcional => "id_unidad_funcional" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SIGEFIRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SIGEFIRRHH::Schema::Result::Registrocargo",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargosaprobadoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrocargosaprobado>

=cut

__PACKAGE__->has_many(
  "registrocargosaprobadoes",
  "SIGEFIRRHH::Schema::Result::Registrocargosaprobado",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrodocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrodocente>

=cut

__PACKAGE__->has_many(
  "registrodocentes",
  "SIGEFIRRHH::Schema::Result::Registrodocente",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_dependencia_reals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_dependencia_reals",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_dependencia_real" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajador_id_dependencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajador_id_dependencias",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_dependencia" => "self.id_dependencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GrNWxzo2qeAlTtuv+6YPNQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
