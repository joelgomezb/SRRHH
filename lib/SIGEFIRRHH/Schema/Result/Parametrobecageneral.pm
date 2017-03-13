use utf8;
package SIGEFIRRHH::Schema::Result::Parametrobecageneral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametrobecageneral

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

=head1 TABLE: C<parametrobecageneral>

=cut

__PACKAGE__->table("parametrobecageneral");

=head1 ACCESSORS

=head2 id_parametro_beca_general

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 maximo_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 maximo_trabajador

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 incluye_trabajador

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 aprobacion_solicitud

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 quien_cobra

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_beca_general",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "maximo_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "maximo_trabajador",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "incluye_trabajador",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "aprobacion_solicitud",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "quien_cobra",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_beca_general>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_beca_general");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qgZ3pU49AyyNqX38cl3Tlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
