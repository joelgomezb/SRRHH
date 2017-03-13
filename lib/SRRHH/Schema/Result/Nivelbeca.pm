use utf8;
package SRRHH::Schema::Result::Nivelbeca;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Nivelbeca

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

=head1 TABLE: C<nivelbeca>

=cut

__PACKAGE__->table("nivelbeca");

=head1 ACCESSORS

=head2 id_nivel_beca

  data_type: 'integer'
  is_nullable: 0

=head2 nivel_educativo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 inicio_nivel

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 fin_nivel

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 proximo_nivel

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_nivel_beca",
  { data_type => "integer", is_nullable => 0 },
  "nivel_educativo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "inicio_nivel",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "fin_nivel",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "proximo_nivel",
  { data_type => "varchar", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_nivel_beca>

=back

=cut

__PACKAGE__->set_primary_key("id_nivel_beca");

=head1 UNIQUE CONSTRAINTS

=head2 C<nivelbeca_cod>

=over 4

=item * L</nivel_educativo>

=back

=cut

__PACKAGE__->add_unique_constraint("nivelbeca_cod", ["nivel_educativo"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dd/koG+W2/zFFA+8BDPKVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
