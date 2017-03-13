use utf8;
package SRRHH::Schema::Result::Firmasreporte;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Firmasreporte

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

=head1 TABLE: C<firmasreportes>

=cut

__PACKAGE__->table("firmasreportes");

=head1 ACCESSORS

=head2 id_firmas_reportes

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombramiento

  data_type: 'text'
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_firmas_reportes",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombramiento",
  { data_type => "text", is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_firmas_reportes>

=back

=cut

__PACKAGE__->set_primary_key("id_firmas_reportes");

=head1 RELATIONS

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:t6AhXVJEQh9mu1BEJ6+GZQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
