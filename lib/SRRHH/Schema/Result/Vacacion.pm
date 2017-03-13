use utf8;
package SRRHH::Schema::Result::Vacacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Vacacion

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

=head1 TABLE: C<vacacion>

=cut

__PACKAGE__->table("vacacion");

=head1 ACCESSORS

=head2 id_vacacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 tipo_vacacion

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias_disfrute

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias_pendientes

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_reintegro

  data_type: 'date'
  is_nullable: 1

=head2 fecha_suspension

  data_type: 'date'
  is_nullable: 1

=head2 suspendida

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_vacacion",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "tipo_vacacion",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias_disfrute",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias_pendientes",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_reintegro",
  { data_type => "date", is_nullable => 1 },
  "fecha_suspension",
  { data_type => "date", is_nullable => 1 },
  "suspendida",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_vacacion>

=back

=cut

__PACKAGE__->set_primary_key("id_vacacion");

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gznafK49EcGxctd1a29sgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
