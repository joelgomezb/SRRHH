use utf8;
package SIGEFIRRHH::Schema::Result::Parametrojubilacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametrojubilacion

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

=head1 TABLE: C<parametrojubilacion>

=cut

__PACKAGE__->table("parametrojubilacion");

=head1 ACCESSORS

=head2 id_parametro_jubilacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 edad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadm

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anios_servicio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anios_serviciom

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anios_servicio_sin_edad

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anios_servicio_especial

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 meses_promediar

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 factor

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_jubilacion",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "edad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadm",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anios_servicio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anios_serviciom",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anios_servicio_sin_edad",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anios_servicio_especial",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "meses_promediar",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "factor",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_jubilacion>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_jubilacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametrojubilacion_cod>

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("parametrojubilacion_cod", ["id_tipo_personal"]);

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/Hedc6r8FeI9TEqBk/W0Qw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
