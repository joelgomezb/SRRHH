use utf8;
package SRRHH::Schema::Result::Dependenciajudicial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Dependenciajudicial

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

=head1 TABLE: C<dependenciajudicial>

=cut

__PACKAGE__->table("dependenciajudicial");

=head1 ACCESSORS

=head2 id_dependencia_judicial

  data_type: 'integer'
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_operacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_materia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_instancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_dependencia_judicial",
  { data_type => "integer", is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_operacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_materia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_instancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dependencia_judicial>

=back

=cut

__PACKAGE__->set_primary_key("id_dependencia_judicial");

=head1 UNIQUE CONSTRAINTS

=head2 C<dependenciajud_cod>

=over 4

=item * L</id_dependencia>

=back

=cut

__PACKAGE__->add_unique_constraint("dependenciajud_cod", ["id_dependencia"]);

=head1 RELATIONS

=head2 id_dependencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_instancia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Instancia>

=cut

__PACKAGE__->belongs_to(
  "id_instancia",
  "SRRHH::Schema::Result::Instancia",
  { id_instancia => "id_instancia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_materia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Materia>

=cut

__PACKAGE__->belongs_to(
  "id_materia",
  "SRRHH::Schema::Result::Materia",
  { id_materia => "id_materia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_operacion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Operacion>

=cut

__PACKAGE__->belongs_to(
  "id_operacion",
  "SRRHH::Schema::Result::Operacion",
  { id_operacion => "id_operacion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PRetxj9/j99SPvftkBcNoA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
