use utf8;
package SIGEFIRRHH::Schema::Result::Tipomanual;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tipomanual

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

=head1 TABLE: C<tipomanual>

=cut

__PACKAGE__->table("tipomanual");

=head1 ACCESSORS

=head2 id_tipo_manual

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_manual

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_manual",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_manual",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_manual>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_manual");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipomanual_cod>

=over 4

=item * L</cod_tipo_manual>

=back

=cut

__PACKAGE__->add_unique_constraint("tipomanual_cod", ["cod_tipo_manual"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8jxjRJu6ytZmDM8ZFM4neQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
