use utf8;
package SIGEFIRRHH::Schema::Result::Causadocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Causadocente

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

=head1 TABLE: C<causadocente>

=cut

__PACKAGE__->table("causadocente");

=head1 ACCESSORS

=head2 id_causa_docente

  data_type: 'integer'
  is_nullable: 0

=head2 cod_causa_docente

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 tipo

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_causa_docente",
  { data_type => "integer", is_nullable => 0 },
  "cod_causa_docente",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "tipo",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_causa_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_causa_docente");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XeR5PmchLX45P5v1ljhvUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
