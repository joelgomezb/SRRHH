use utf8;
package SIGEFIRRHH::Schema::Result::VWebFuncionario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VWebFuncionario

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

=head1 TABLE: C<v_web_funcionarios>

=cut

__PACKAGE__->table("v_web_funcionarios");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nombres

  data_type: 'text'
  is_nullable: 1

=head2 apellidos

  data_type: 'text'
  is_nullable: 1

=head2 telefono

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1

=head2 cargo_funcionarios

  data_type: 'text'
  is_nullable: 1

=head2 dependecia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 division

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 departamento

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nombres",
  { data_type => "text", is_nullable => 1 },
  "apellidos",
  { data_type => "text", is_nullable => 1 },
  "telefono",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "text", is_nullable => 1 },
  "cargo_funcionarios",
  { data_type => "text", is_nullable => 1 },
  "dependecia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "division",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "departamento",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TMnw07eE/n/fVJp/CHXJUA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
