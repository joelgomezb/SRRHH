use utf8;
package SRRHH::Schema::Result::Encabezadorendicionmensual;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Encabezadorendicionmensual

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

=head1 TABLE: C<encabezadorendicionmensual>

=cut

__PACKAGE__->table("encabezadorendicionmensual");

=head1 ACCESSORS

=head2 id_encabezado_rendicion_mensual

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_unidad_administradora

  data_type: 'integer'
  is_nullable: 0

=head2 numero_nomina

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 cod_unidad_administ

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cerrado

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 fecha_cierre

  data_type: 'date'
  is_nullable: 1

=head2 numero_expediente

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 titulo

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 aportes

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 id_aporte

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_encabezado_rendicion_mensual",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_unidad_administradora",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "cod_unidad_administ",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cerrado",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "fecha_cierre",
  { data_type => "date", is_nullable => 1 },
  "numero_expediente",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "titulo",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "aportes",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "id_aporte",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_encabezado_rendicion_mensual>

=back

=cut

__PACKAGE__->set_primary_key("id_encabezado_rendicion_mensual");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GL5Ipgo9GFRcmymAbzeVMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
