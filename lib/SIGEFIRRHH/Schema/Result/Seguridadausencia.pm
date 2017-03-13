use utf8;
package SIGEFIRRHH::Schema::Result::Seguridadausencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Seguridadausencia

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

=head1 TABLE: C<seguridadausencia>

=cut

__PACKAGE__->table("seguridadausencia");

=head1 ACCESSORS

=head2 id_seguridad_ausencia

  data_type: 'integer'
  is_nullable: 0

=head2 id_grupo_ticket

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_seguridad_ausencia",
  { data_type => "integer", is_nullable => 0 },
  "id_grupo_ticket",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_seguridad_ausencia>

=back

=cut

__PACKAGE__->set_primary_key("id_seguridad_ausencia");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:51FsV2c9ry7FGDij8K64og


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
