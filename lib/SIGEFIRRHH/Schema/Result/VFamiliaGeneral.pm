use utf8;
package SIGEFIRRHH::Schema::Result::VFamiliaGeneral;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VFamiliaGeneral

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

=head1 TABLE: C<v_familia_general>

=cut

__PACKAGE__->table("v_familia_general");

=head1 ACCESSORS

=head2 indicador_unico

  data_type: 'integer'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 cedula_familiar

  data_type: 'integer'
  is_nullable: 1

=head2 parentesco

  data_type: 'text'
  is_nullable: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 edad

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "indicador_unico",
  { data_type => "integer", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "cedula_familiar",
  { data_type => "integer", is_nullable => 1 },
  "parentesco",
  { data_type => "text", is_nullable => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "edad",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jGzJiD9eki1d6Hr1LnfPcg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
