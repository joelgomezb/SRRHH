use utf8;
package SIGEFIRRHH::Schema::Result::Instancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Instancia

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

=head1 TABLE: C<instancia>

=cut

__PACKAGE__->table("instancia");

=head1 ACCESSORS

=head2 id_instancia

  data_type: 'integer'
  is_nullable: 0

=head2 id_clasificacion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_instancia

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
  "id_instancia",
  { data_type => "integer", is_nullable => 0 },
  "id_clasificacion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_instancia",
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

=item * L</id_instancia>

=back

=cut

__PACKAGE__->set_primary_key("id_instancia");

=head1 UNIQUE CONSTRAINTS

=head2 C<instancia_cod>

=over 4

=item * L</cod_instancia>

=back

=cut

__PACKAGE__->add_unique_constraint("instancia_cod", ["cod_instancia"]);

=head1 RELATIONS

=head2 dependenciajudicials

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependenciajudicial>

=cut

__PACKAGE__->has_many(
  "dependenciajudicials",
  "SIGEFIRRHH::Schema::Result::Dependenciajudicial",
  { "foreign.id_instancia" => "self.id_instancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_clasificacion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Clasificacion>

=cut

__PACKAGE__->belongs_to(
  "id_clasificacion",
  "SIGEFIRRHH::Schema::Result::Clasificacion",
  { id_clasificacion => "id_clasificacion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jenC6eJmzXsLxR5qYt+1jQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
