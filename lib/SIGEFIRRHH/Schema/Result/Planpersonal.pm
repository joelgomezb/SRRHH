use utf8;
package SIGEFIRRHH::Schema::Result::Planpersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Planpersonal

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

=head1 TABLE: C<planpersonal>

=cut

__PACKAGE__->table("planpersonal");

=head1 ACCESSORS

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 version

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 fecha_preparacion

  data_type: 'date'
  is_nullable: 0

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 aprobo_rrhh

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aprobo_planificacion

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aprobo_presupuesto

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 fecha_finalizacion

  data_type: 'date'
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_plan_personal",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "version",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "fecha_preparacion",
  { data_type => "date", is_nullable => 0 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 0 },
  "estatus",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 1 },
  "aprobo_rrhh",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aprobo_planificacion",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aprobo_presupuesto",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "fecha_finalizacion",
  { data_type => "date", is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_plan_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_plan_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<planpersonal_cod>

=over 4

=item * L</anio>

=item * L</version>

=back

=cut

__PACKAGE__->add_unique_constraint("planpersonal_cod", ["anio", "version"]);

=head1 RELATIONS

=head2 cargosplans

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cargosplan>

=cut

__PACKAGE__->has_many(
  "cargosplans",
  "SIGEFIRRHH::Schema::Result::Cargosplan",
  { "foreign.id_plan_personal" => "self.id_plan_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JkZAG8zmxMKpNKaE+oyy/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
