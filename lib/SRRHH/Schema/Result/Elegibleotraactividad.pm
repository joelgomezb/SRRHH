use utf8;
package SRRHH::Schema::Result::Elegibleotraactividad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Elegibleotraactividad

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

=head1 TABLE: C<elegibleotraactividad>

=cut

__PACKAGE__->table("elegibleotraactividad");

=head1 ACCESSORS

=head2 id_elegible_otra_actividad

  data_type: 'integer'
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 id_tipo_otra_actividad

  data_type: 'integer'
  is_nullable: 0

=head2 id_elegible

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_elegible_otra_actividad",
  { data_type => "integer", is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "id_tipo_otra_actividad",
  { data_type => "integer", is_nullable => 0 },
  "id_elegible",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_otra_actividad>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_otra_actividad");

=head1 RELATIONS

=head2 id_elegible

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Elegible>

=cut

__PACKAGE__->belongs_to(
  "id_elegible",
  "SRRHH::Schema::Result::Elegible",
  { id_elegible => "id_elegible" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mM0vBenbCqizDfKfo8FX0A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
