use utf8;
package SRRHH::Schema::Result::Gruponomina;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Gruponomina

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

=head1 TABLE: C<gruponomina>

=cut

__PACKAGE__->table("gruponomina");

=head1 ACCESSORS

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 anticipo_quincenal

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_grupo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 periodicidad

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 pagos_nomina_egresados

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "anticipo_quincenal",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_grupo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "periodicidad",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "pagos_nomina_egresados",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_grupo_nomina>

=back

=cut

__PACKAGE__->set_primary_key("id_grupo_nomina");

=head1 UNIQUE CONSTRAINTS

=head2 C<gruponomina_codigo>

=over 4

=item * L</id_organismo>

=item * L</cod_grupo_nomina>

=back

=cut

__PACKAGE__->add_unique_constraint("gruponomina_codigo", ["id_organismo", "cod_grupo_nomina"]);

=head1 RELATIONS

=head2 asuencianominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Asuencianomina>

=cut

__PACKAGE__->has_many(
  "asuencianominas",
  "SRRHH::Schema::Result::Asuencianomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ausencianominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Ausencianomina>

=cut

__PACKAGE__->has_many(
  "ausencianominas",
  "SRRHH::Schema::Result::Ausencianomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historiconominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historiconomina>

=cut

__PACKAGE__->has_many(
  "historiconominas",
  "SRRHH::Schema::Result::Historiconomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicoquincenas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicoquincena>

=cut

__PACKAGE__->has_many(
  "historicoquincenas",
  "SRRHH::Schema::Result::Historicoquincena",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicosemanas

Type: has_many

Related object: L<SRRHH::Schema::Result::Historicosemana>

=cut

__PACKAGE__->has_many(
  "historicosemanas",
  "SRRHH::Schema::Result::Historicosemana",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
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

=head2 mensajesprenominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Mensajesprenomina>

=cut

__PACKAGE__->has_many(
  "mensajesprenominas",
  "SRRHH::Schema::Result::Mensajesprenomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominaconversions

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominaconversion>

=cut

__PACKAGE__->has_many(
  "nominaconversions",
  "SRRHH::Schema::Result::Nominaconversion",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominadiplomaticoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominadiplomatico>

=cut

__PACKAGE__->has_many(
  "nominadiplomaticoes",
  "SRRHH::Schema::Result::Nominadiplomatico",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 nominaespecials

Type: has_many

Related object: L<SRRHH::Schema::Result::Nominaespecial>

=cut

__PACKAGE__->has_many(
  "nominaespecials",
  "SRRHH::Schema::Result::Nominaespecial",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadespecials

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadespecial>

=cut

__PACKAGE__->has_many(
  "seguridadespecials",
  "SRRHH::Schema::Result::Seguridadespecial",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 seguridadordinarias

Type: has_many

Related object: L<SRRHH::Schema::Result::Seguridadordinaria>

=cut

__PACKAGE__->has_many(
  "seguridadordinarias",
  "SRRHH::Schema::Result::Seguridadordinaria",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 semanas

Type: has_many

Related object: L<SRRHH::Schema::Result::Semana>

=cut

__PACKAGE__->has_many(
  "semanas",
  "SRRHH::Schema::Result::Semana",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SRRHH::Schema::Result::Tipopersonal",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimanominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Ultimanomina>

=cut

__PACKAGE__->has_many(
  "ultimanominas",
  "SRRHH::Schema::Result::Ultimanomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimaprenominas

Type: has_many

Related object: L<SRRHH::Schema::Result::Ultimaprenomina>

=cut

__PACKAGE__->has_many(
  "ultimaprenominas",
  "SRRHH::Schema::Result::Ultimaprenomina",
  { "foreign.id_grupo_nomina" => "self.id_grupo_nomina" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Bz+/Upw7QqYD1LzTig786Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
