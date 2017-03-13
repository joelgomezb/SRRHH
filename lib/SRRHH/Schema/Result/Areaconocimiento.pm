use utf8;
package SRRHH::Schema::Result::Areaconocimiento;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Areaconocimiento

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

=head1 TABLE: C<areaconocimiento>

=cut

__PACKAGE__->table("areaconocimiento");

=head1 ACCESSORS

=head2 id_area_conocimiento

  data_type: 'integer'
  is_nullable: 0

=head2 cod_area_conocimiento

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_area_conocimiento",
  { data_type => "integer", is_nullable => 0 },
  "cod_area_conocimiento",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_area_conocimiento>

=back

=cut

__PACKAGE__->set_primary_key("id_area_conocimiento");

=head1 UNIQUE CONSTRAINTS

=head2 C<areaconocimiento_cod>

=over 4

=item * L</cod_area_conocimiento>

=back

=cut

__PACKAGE__->add_unique_constraint("areaconocimiento_cod", ["cod_area_conocimiento"]);

=head1 RELATIONS

=head2 adiestramientocargoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Adiestramientocargo>

=cut

__PACKAGE__->has_many(
  "adiestramientocargoes",
  "SRRHH::Schema::Result::Adiestramientocargo",
  { "foreign.id_area_conocimiento" => "self.id_area_conocimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 certificacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Certificacion>

=cut

__PACKAGE__->has_many(
  "certificacions",
  "SRRHH::Schema::Result::Certificacion",
  { "foreign.id_area_conocimiento" => "self.id_area_conocimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cursoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Curso>

=cut

__PACKAGE__->has_many(
  "cursoes",
  "SRRHH::Schema::Result::Curso",
  { "foreign.id_area_conocimiento" => "self.id_area_conocimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 estudios

Type: has_many

Related object: L<SRRHH::Schema::Result::Estudio>

=cut

__PACKAGE__->has_many(
  "estudios",
  "SRRHH::Schema::Result::Estudio",
  { "foreign.id_area_conocimiento" => "self.id_area_conocimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 planadiestramientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Planadiestramiento>

=cut

__PACKAGE__->has_many(
  "planadiestramientoes",
  "SRRHH::Schema::Result::Planadiestramiento",
  { "foreign.id_area_conocimiento" => "self.id_area_conocimiento" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mdy57TAQhUtuE56Fk2IfxQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
