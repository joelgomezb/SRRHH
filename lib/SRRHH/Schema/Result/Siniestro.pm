use utf8;
package SRRHH::Schema::Result::Siniestro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Siniestro

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

=head1 TABLE: C<siniestro>

=cut

__PACKAGE__->table("siniestro");

=head1 ACCESSORS

=head2 id_siniestro

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_siniestro

  data_type: 'date'
  is_nullable: 0

=head2 fecha_reporte

  data_type: 'date'
  is_nullable: 1

=head2 fecha_recepcion

  data_type: 'date'
  is_nullable: 1

=head2 fecha_cierre

  data_type: 'date'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 monto_reclamo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_pagado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_plan_poliza

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_beneficiario

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_titular

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_establecimiento_salud

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_siniestro",
  { data_type => "integer", is_nullable => 0 },
  "fecha_siniestro",
  { data_type => "date", is_nullable => 0 },
  "fecha_reporte",
  { data_type => "date", is_nullable => 1 },
  "fecha_recepcion",
  { data_type => "date", is_nullable => 1 },
  "fecha_cierre",
  { data_type => "date", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "monto_reclamo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_pagado",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_plan_poliza",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_beneficiario",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_titular",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_establecimiento_salud",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_siniestro>

=back

=cut

__PACKAGE__->set_primary_key("id_siniestro");

=head1 RELATIONS

=head2 id_beneficiario

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Beneficiario>

=cut

__PACKAGE__->belongs_to(
  "id_beneficiario",
  "SRRHH::Schema::Result::Beneficiario",
  { id_beneficiario => "id_beneficiario" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_establecimiento_salud

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Establecimientosalud>

=cut

__PACKAGE__->belongs_to(
  "id_establecimiento_salud",
  "SRRHH::Schema::Result::Establecimientosalud",
  { id_establecimiento_salud => "id_establecimiento_salud" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_plan_poliza

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Planpoliza>

=cut

__PACKAGE__->belongs_to(
  "id_plan_poliza",
  "SRRHH::Schema::Result::Planpoliza",
  { id_plan_poliza => "id_plan_poliza" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_titular

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Titular>

=cut

__PACKAGE__->belongs_to(
  "id_titular",
  "SRRHH::Schema::Result::Titular",
  { id_titular => "id_titular" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YGftLyFhCBstvHZuBwdfrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
