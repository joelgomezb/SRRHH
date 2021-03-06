use utf8;
package SRRHH::Schema::Result::Tipoausencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tipoausencia

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

=head1 TABLE: C<tipoausencia>

=cut

__PACKAGE__->table("tipoausencia");

=head1 ACCESSORS

=head2 id_tipo_ausencia

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_ausencia

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 clase

  data_type: 'varchar'
  default_value: 'I'
  is_nullable: 0
  size: 1

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_ausencia",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_ausencia",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "clase",
  { data_type => "varchar", default_value => "I", is_nullable => 0, size => 1 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_ausencia>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_ausencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipoausencia_cod>

=over 4

=item * L</cod_tipo_ausencia>

=back

=cut

__PACKAGE__->add_unique_constraint("tipoausencia_cod", ["cod_tipo_ausencia"]);

=head1 RELATIONS

=head2 ausencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Ausencia>

=cut

__PACKAGE__->has_many(
  "ausencias",
  "SRRHH::Schema::Result::Ausencia",
  { "foreign.id_tipo_ausencia" => "self.id_tipo_ausencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sBi0d8nffvU1qPCpdN31Qg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
