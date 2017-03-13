use utf8;
package SRRHH::Schema::Result::Subsistema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Subsistema

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

=head1 TABLE: C<subsistema>

=cut

__PACKAGE__->table("subsistema");

=head1 ACCESSORS

=head2 id_subsistema

  data_type: 'integer'
  is_nullable: 0

=head2 cod_subsistema

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=cut

__PACKAGE__->add_columns(
  "id_subsistema",
  { data_type => "integer", is_nullable => 0 },
  "cod_subsistema",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 80 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_subsistema>

=back

=cut

__PACKAGE__->set_primary_key("id_subsistema");

=head1 UNIQUE CONSTRAINTS

=head2 C<subsistema_cod>

=over 4

=item * L</cod_subsistema>

=back

=cut

__PACKAGE__->add_unique_constraint("subsistema_cod", ["cod_subsistema"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7B79gLUbo42lFCfGEgIH2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
