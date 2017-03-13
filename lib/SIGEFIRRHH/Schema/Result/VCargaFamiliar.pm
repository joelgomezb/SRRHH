use utf8;
package SIGEFIRRHH::Schema::Result::VCargaFamiliar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VCargaFamiliar

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

=head1 TABLE: C<v_carga_familiar>

=cut

__PACKAGE__->table("v_carga_familiar");

=head1 ACCESSORS

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_apellido_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 parentescos

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_apellido_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "parentescos",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QOqjw0jOGu6m+8ECrQ22cA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
