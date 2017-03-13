use utf8;
package SRRHH::Schema::Result::Parametroari;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parametroari

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

=head1 TABLE: C<parametroari>

=cut

__PACKAGE__->table("parametroari");

=head1 ACCESSORS

=head2 id_parametro_ari

  data_type: 'integer'
  is_nullable: 0

=head2 unidad_tributaria

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 un_desgravamenes

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 un_persona_natural

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 un_carga

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_parametro_ari",
  { data_type => "integer", is_nullable => 0 },
  "unidad_tributaria",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "un_desgravamenes",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "un_persona_natural",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "un_carga",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_ari>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_ari");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametroari_cod>

=over 4

=item * L</unidad_tributaria>

=back

=cut

__PACKAGE__->add_unique_constraint("parametroari_cod", ["unidad_tributaria"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xNmXlfb+uhlyrYnCzm7bZw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
