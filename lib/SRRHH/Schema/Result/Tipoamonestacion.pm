use utf8;
package SRRHH::Schema::Result::Tipoamonestacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipoamonestacion

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

=head1 TABLE: C<tipoamonestacion>

=cut

__PACKAGE__->table("tipoamonestacion");

=head1 ACCESSORS

=head2 id_tipo_amonestacion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_amonestacion

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_tipo_amonestacion",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_amonestacion",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_amonestacion>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_amonestacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipoamonestacion_cod>

=over 4

=item * L</cod_tipo_amonestacion>

=back

=cut

__PACKAGE__->add_unique_constraint("tipoamonestacion_cod", ["cod_tipo_amonestacion"]);

=head1 RELATIONS

=head2 sancions

Type: has_many

Related object: L<SRRHH::Schema::Result::Sancion>

=cut

__PACKAGE__->has_many(
  "sancions",
  "SRRHH::Schema::Result::Sancion",
  { "foreign.id_tipo_amonestacion" => "self.id_tipo_amonestacion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mlkTcMR616Ic94tmGEH3Gw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
