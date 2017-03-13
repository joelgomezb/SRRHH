use utf8;
package SIGEFIRRHH::Schema::Result::Tipootraactividad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tipootraactividad

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

=head1 TABLE: C<tipootraactividad>

=cut

__PACKAGE__->table("tipootraactividad");

=head1 ACCESSORS

=head2 id_tipo_otra_actividad

  data_type: 'integer'
  is_nullable: 0

=head2 cod_otra_actividad

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 tipo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_tipo_otra_actividad",
  { data_type => "integer", is_nullable => 0 },
  "cod_otra_actividad",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "tipo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_otra_actividad>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_otra_actividad");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipootraactividad_cod>

=over 4

=item * L</cod_otra_actividad>

=back

=cut

__PACKAGE__->add_unique_constraint("tipootraactividad_cod", ["cod_otra_actividad"]);

=head1 RELATIONS

=head2 otraactividads

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Otraactividad>

=cut

__PACKAGE__->has_many(
  "otraactividads",
  "SIGEFIRRHH::Schema::Result::Otraactividad",
  {
    "foreign.id_tipo_otra_actividad" => "self.id_tipo_otra_actividad",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8efDYgitUAfPKbR0R8KLGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
