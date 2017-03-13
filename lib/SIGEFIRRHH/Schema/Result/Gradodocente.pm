use utf8;
package SIGEFIRRHH::Schema::Result::Gradodocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Gradodocente

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

=head1 TABLE: C<gradodocente>

=cut

__PACKAGE__->table("gradodocente");

=head1 ACCESSORS

=head2 id_grado_docente

  data_type: 'integer'
  is_nullable: 0

=head2 digito_grado

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_grado_docente",
  { data_type => "integer", is_nullable => 0 },
  "digito_grado",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_grado_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_grado_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<gradodocente_cod>

=over 4

=item * L</digito_grado>

=back

=cut

__PACKAGE__->add_unique_constraint("gradodocente_cod", ["digito_grado"]);

=head1 RELATIONS

=head2 gradoniveldocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Gradoniveldocente>

=cut

__PACKAGE__->has_many(
  "gradoniveldocentes",
  "SIGEFIRRHH::Schema::Result::Gradoniveldocente",
  { "foreign.id_grado_docente" => "self.id_grado_docente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Dn2Ki60WeZI6DTe31ore0Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
