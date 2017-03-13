use utf8;
package SIGEFIRRHH::Schema::Result::ProyeccionPresupuestoOncop;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::ProyeccionPresupuestoOncop

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

=head1 TABLE: C<proyeccion_presupuesto_oncop>

=cut

__PACKAGE__->table("proyeccion_presupuesto_oncop");

=head1 ACCESSORS

=head2 cod_unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 descripcion_cp

  data_type: 'varchar'
  is_nullable: 0
  size: 98

=head2 descripcion_cn

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 monto_asigna

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 nombre_ua

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=cut

__PACKAGE__->add_columns(
  "cod_unidad_ejecutora",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "descripcion_cp",
  { data_type => "varchar", is_nullable => 0, size => 98 },
  "descripcion_cn",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "monto_asigna",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "nombre_ua",
  { data_type => "varchar", is_nullable => 0, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b6LuHJeNrFPXErelbRoHfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
