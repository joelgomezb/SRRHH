use utf8;
package SRRHH::Schema::Result::Turno;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Turno

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

=head1 TABLE: C<turno>

=cut

__PACKAGE__->table("turno");

=head1 ACCESSORS

=head2 id_turno

  data_type: 'integer'
  is_nullable: 0

=head2 cod_turno

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 jornada_semanal

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 jornada_diaria

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 entrada_am

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 salida_am

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 entrada_pm

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 salida_pm

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo_turno

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 jornada

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_turno",
  { data_type => "integer", is_nullable => 0 },
  "cod_turno",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "jornada_semanal",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "jornada_diaria",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "entrada_am",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "salida_am",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "entrada_pm",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "salida_pm",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo_turno",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "jornada",
  { data_type => "varchar", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_turno>

=back

=cut

__PACKAGE__->set_primary_key("id_turno");

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

=head2 tipopersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SRRHH::Schema::Result::Tipopersonal",
  { "foreign.id_turno" => "self.id_turno" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 trabajadors

Type: has_many

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SRRHH::Schema::Result::Trabajador",
  { "foreign.id_turno" => "self.id_turno" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oocfuiXZW/9MSr4rL0Q7vg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
