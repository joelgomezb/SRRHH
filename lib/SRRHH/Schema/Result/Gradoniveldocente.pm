use utf8;
package SRRHH::Schema::Result::Gradoniveldocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Gradoniveldocente

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

=head1 TABLE: C<gradoniveldocente>

=cut

__PACKAGE__->table("gradoniveldocente");

=head1 ACCESSORS

=head2 id_grado_nivel_docente

  data_type: 'integer'
  is_nullable: 0

=head2 id_grado_docente

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_nivel_docente

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_grado_nivel_docente",
  { data_type => "integer", is_nullable => 0 },
  "id_grado_docente",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_nivel_docente",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_grado_nivel_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_grado_nivel_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<gradoniveldocente_cod>

=over 4

=item * L</id_grado_docente>

=item * L</id_nivel_docente>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "gradoniveldocente_cod",
  ["id_grado_docente", "id_nivel_docente"],
);

=head1 RELATIONS

=head2 id_grado_docente

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Gradodocente>

=cut

__PACKAGE__->belongs_to(
  "id_grado_docente",
  "SRRHH::Schema::Result::Gradodocente",
  { id_grado_docente => "id_grado_docente" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:paLPU8iX54PF5iEeQbp9BQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
