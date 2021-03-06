use utf8;
package SRRHH::Schema::Result::Gremio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Gremio

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

=head1 TABLE: C<gremio>

=cut

__PACKAGE__->table("gremio");

=head1 ACCESSORS

=head2 id_gremio

  data_type: 'integer'
  is_nullable: 0

=head2 cod_gremio

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_gremio",
  { data_type => "integer", is_nullable => 0 },
  "cod_gremio",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_gremio>

=back

=cut

__PACKAGE__->set_primary_key("id_gremio");

=head1 UNIQUE CONSTRAINTS

=head2 C<gremio_cod>

=over 4

=item * L</cod_gremio>

=back

=cut

__PACKAGE__->add_unique_constraint("gremio_cod", ["cod_gremio"]);

=head1 RELATIONS

=head2 afiliacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Afiliacion>

=cut

__PACKAGE__->has_many(
  "afiliacions",
  "SRRHH::Schema::Result::Afiliacion",
  { "foreign.id_gremio" => "self.id_gremio" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 elegibleafiliacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Elegibleafiliacion>

=cut

__PACKAGE__->has_many(
  "elegibleafiliacions",
  "SRRHH::Schema::Result::Elegibleafiliacion",
  { "foreign.id_gremio" => "self.id_gremio" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registrocargos

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SRRHH::Schema::Result::Registrocargo",
  { "foreign.id_gremio" => "self.id_gremio" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7KYSY3xghpYbVjllkQeiGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
