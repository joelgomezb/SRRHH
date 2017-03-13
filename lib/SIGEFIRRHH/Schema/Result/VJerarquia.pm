use utf8;
package SIGEFIRRHH::Schema::Result::VJerarquia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VJerarquia

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_jerarquia>

=cut

__PACKAGE__->table("v_jerarquia");

=head1 ACCESSORS

=head2 id_dependencia_padre

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_dependencia_padre

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 dependencia_padre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_dependencia_hija

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_dependencia_hija

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 dependencia_hija

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_dependencia_padre",
  { data_type => "integer", is_nullable => 1 },
  "codigo_dependencia_padre",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "dependencia_padre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_dependencia_hija",
  { data_type => "integer", is_nullable => 1 },
  "codigo_dependencia_hija",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "dependencia_hija",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uokbUZrc1z6NScYxpDo8hQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
