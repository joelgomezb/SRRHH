use utf8;
package SRRHH::Schema::Result::Niveldocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Niveldocente

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

=head1 TABLE: C<niveldocente>

=cut

__PACKAGE__->table("niveldocente");

=head1 ACCESSORS

=head2 id_nivel_docente

  data_type: 'integer'
  is_nullable: 0

=head2 digito_nivel

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_nivel_docente",
  { data_type => "integer", is_nullable => 0 },
  "digito_nivel",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_nivel_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_nivel_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<niveldocente_cod>

=over 4

=item * L</digito_nivel>

=back

=cut

__PACKAGE__->add_unique_constraint("niveldocente_cod", ["digito_nivel"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sPzny7vodOAVHtlvSd1T5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
