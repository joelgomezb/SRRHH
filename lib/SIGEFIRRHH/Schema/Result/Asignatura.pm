use utf8;
package SIGEFIRRHH::Schema::Result::Asignatura;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Asignatura

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

=head1 TABLE: C<asignatura>

=cut

__PACKAGE__->table("asignatura");

=head1 ACCESSORS

=head2 id_asignatura

  data_type: 'integer'
  is_nullable: 0

=head2 cod_asignatura

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 tope_horas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_asignatura",
  { data_type => "integer", is_nullable => 0 },
  "cod_asignatura",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "tope_horas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_asignatura>

=back

=cut

__PACKAGE__->set_primary_key("id_asignatura");

=head1 UNIQUE CONSTRAINTS

=head2 C<asignatura_cod>

=over 4

=item * L</cod_asignatura>

=back

=cut

__PACKAGE__->add_unique_constraint("asignatura_cod", ["cod_asignatura"]);

=head1 RELATIONS

=head2 trabajadorasignaturas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajadorasignatura>

=cut

__PACKAGE__->has_many(
  "trabajadorasignaturas",
  "SIGEFIRRHH::Schema::Result::Trabajadorasignatura",
  { "foreign.id_asignatura" => "self.id_asignatura" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r1LlPzHqIEtqu9F+vIUSVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
