use utf8;
package SIGEFIRRHH::Schema::Result::Cierreunidad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cierreunidad

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

=head1 TABLE: C<cierreunidad>

=cut

__PACKAGE__->table("cierreunidad");

=head1 ACCESSORS

=head2 id_cierre_unidad

  data_type: 'integer'
  is_nullable: 0

=head2 id_unidad_funcional

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  is_nullable: 0

=head2 mes_cierre

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 anio_cierre

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_cierre_unidad",
  { data_type => "integer", is_nullable => 0 },
  "id_unidad_funcional",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  { data_type => "integer", is_nullable => 0 },
  "mes_cierre",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_cierre",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cierre_unidad>

=back

=cut

__PACKAGE__->set_primary_key("id_cierre_unidad");

=head1 UNIQUE CONSTRAINTS

=head2 C<cierreunidad_cod>

=over 4

=item * L</id_tipo_personal>

=item * L</mes_cierre>

=back

=cut

__PACKAGE__->add_unique_constraint("cierreunidad_cod", ["id_tipo_personal", "mes_cierre"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xXBCeOjV92Ygn7x2LI+q5A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
