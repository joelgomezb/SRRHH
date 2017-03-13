use utf8;
package SIGEFIRRHH::Schema::Result::VCorpoelec;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VCorpoelec

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_corpoelec>

=cut

__PACKAGE__->table("v_corpoelec");

=head1 ACCESSORS

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 trabajador

  data_type: 'text'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_ingreso_apn

  data_type: 'date'
  is_nullable: 1

=head2 fecha_prestaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 fecha_egreso

  data_type: 'date'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "trabajador",
  { data_type => "text", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "fecha_ingreso_apn",
  { data_type => "date", is_nullable => 1 },
  "fecha_prestaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "fecha_egreso",
  { data_type => "date", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QfKJmcElVwV5kIHCFu4hJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
