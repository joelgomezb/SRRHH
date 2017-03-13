use utf8;
package SIGEFIRRHH::Schema::Result::VDiasNoLaborado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VDiasNoLaborado

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

=head1 TABLE: C<v_dias_no_laborados>

=cut

__PACKAGE__->table("v_dias_no_laborados");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 inicio_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 fin_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 incio_ausencia

  data_type: 'date'
  is_nullable: 1

=head2 fin_ausencia

  data_type: 'date'
  is_nullable: 1

=head2 dias_vacaciones

  data_type: 'integer'
  is_nullable: 1

=head2 dias_de_ausencias

  data_type: 'integer'
  is_nullable: 1

=head2 total_ausencias

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "inicio_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "fin_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "incio_ausencia",
  { data_type => "date", is_nullable => 1 },
  "fin_ausencia",
  { data_type => "date", is_nullable => 1 },
  "dias_vacaciones",
  { data_type => "integer", is_nullable => 1 },
  "dias_de_ausencias",
  { data_type => "integer", is_nullable => 1 },
  "total_ausencias",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0OqfLlineZVYfQJU1qJh+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
