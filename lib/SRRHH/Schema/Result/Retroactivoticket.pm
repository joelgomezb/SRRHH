use utf8;
package SRRHH::Schema::Result::Retroactivoticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Retroactivoticket

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

=head1 TABLE: C<retroactivoticket>

=cut

__PACKAGE__->table("retroactivoticket");

=head1 ACCESSORS

=head2 id_retroactivo_ticket

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

=head2 anio_proceso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mes_proceso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_tickets

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 id_trabajador

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_denominacion_ticket

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 pagado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_retroactivo_ticket",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "anio_proceso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mes_proceso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_tickets",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "id_trabajador",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_denominacion_ticket",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "pagado",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_retroactivo_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_retroactivo_ticket");

=head1 RELATIONS

=head2 id_trabajador

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wDnT7MiCVUeb+7BM3ONoqg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
