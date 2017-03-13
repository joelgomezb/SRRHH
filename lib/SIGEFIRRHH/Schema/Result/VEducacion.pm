use utf8;
package SIGEFIRRHH::Schema::Result::VEducacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VEducacion

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

=head1 TABLE: C<v_educacion>

=cut

__PACKAGE__->table("v_educacion");

=head1 ACCESSORS

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 nivel_educativo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 titulo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "nivel_educativo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "titulo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:z1jId+L38ge8BELvKvaZGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
