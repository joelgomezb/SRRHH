use utf8;
package SIGEFIRRHH::Schema::Result::VNominaIvss;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VNominaIvss

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

=head1 TABLE: C<v_nomina_ivss>

=cut

__PACKAGE__->table("v_nomina_ivss");

=head1 ACCESSORS

=head2 nombres

  data_type: 'text'
  is_nullable: 1

=head2 apellidos

  data_type: 'text'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nacimiento_dia

  data_type: 'text'
  is_nullable: 1

=head2 nacimiento_mes

  data_type: 'text'
  is_nullable: 1

=head2 nacimiento_anio

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 ingreso_dia

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_mes

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_anio

  data_type: 'text'
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=cut

__PACKAGE__->add_columns(
  "nombres",
  { data_type => "text", is_nullable => 1 },
  "apellidos",
  { data_type => "text", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nacimiento_dia",
  { data_type => "text", is_nullable => 1 },
  "nacimiento_mes",
  { data_type => "text", is_nullable => 1 },
  "nacimiento_anio",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "ingreso_dia",
  { data_type => "text", is_nullable => 1 },
  "ingreso_mes",
  { data_type => "text", is_nullable => 1 },
  "ingreso_anio",
  { data_type => "text", is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W5cjWuysZJHur/0F8j3xBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
