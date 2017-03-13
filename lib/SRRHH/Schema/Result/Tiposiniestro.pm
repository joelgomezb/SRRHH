use utf8;
package SRRHH::Schema::Result::Tiposiniestro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tiposiniestro

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

=head1 TABLE: C<tiposiniestro>

=cut

__PACKAGE__->table("tiposiniestro");

=head1 ACCESSORS

=head2 id_tipo_siniestro

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_siniestro

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_siniestro",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_siniestro",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_siniestro>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_siniestro");

=head1 UNIQUE CONSTRAINTS

=head2 C<tiposiniestro_cod>

=over 4

=item * L</cod_tipo_siniestro>

=back

=cut

__PACKAGE__->add_unique_constraint("tiposiniestro_cod", ["cod_tipo_siniestro"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nT3O75Yk3+9ku0vVIOuBFg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
