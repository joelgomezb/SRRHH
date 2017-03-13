use utf8;
package SRRHH::Schema::Result::Materia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Materia

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

=head1 TABLE: C<materia>

=cut

__PACKAGE__->table("materia");

=head1 ACCESSORS

=head2 id_materia

  data_type: 'integer'
  is_nullable: 0

=head2 id_clasificacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_materia

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_materia",
  { data_type => "integer", is_nullable => 0 },
  "id_clasificacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_materia",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_materia>

=back

=cut

__PACKAGE__->set_primary_key("id_materia");

=head1 UNIQUE CONSTRAINTS

=head2 C<materia_cod>

=over 4

=item * L</cod_materia>

=back

=cut

__PACKAGE__->add_unique_constraint("materia_cod", ["cod_materia"]);

=head1 RELATIONS

=head2 dependenciajudicials

Type: has_many

Related object: L<SRRHH::Schema::Result::Dependenciajudicial>

=cut

__PACKAGE__->has_many(
  "dependenciajudicials",
  "SRRHH::Schema::Result::Dependenciajudicial",
  { "foreign.id_materia" => "self.id_materia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_clasificacion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Clasificacion>

=cut

__PACKAGE__->belongs_to(
  "id_clasificacion",
  "SRRHH::Schema::Result::Clasificacion",
  { id_clasificacion => "id_clasificacion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8Syx822Y78xHqy/jfM0eUw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
