use utf8;
package SRRHH::Schema::Result::Dedicaciondocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Dedicaciondocente

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

=head1 TABLE: C<dedicaciondocente>

=cut

__PACKAGE__->table("dedicaciondocente");

=head1 ACCESSORS

=head2 id_dedicacion_docente

  data_type: 'integer'
  is_nullable: 0

=head2 digito_dedicacion

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_dedicacion_docente",
  { data_type => "integer", is_nullable => 0 },
  "digito_dedicacion",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_dedicacion_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_dedicacion_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<dedicaciondocente_cod>

=over 4

=item * L</digito_dedicacion>

=back

=cut

__PACKAGE__->add_unique_constraint("dedicaciondocente_cod", ["digito_dedicacion"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wxfAclRN2Exp6z+3ePhX6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
