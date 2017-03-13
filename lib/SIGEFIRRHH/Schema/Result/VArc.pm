use utf8;
package SIGEFIRRHH::Schema::Result::VArc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VArc

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

=head1 TABLE: C<v_arc>

=cut

__PACKAGE__->table("v_arc");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 numero_rif

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1

=head2 nombre_completo

  data_type: 'text'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 nro_mes

  data_type: 'text'
  is_nullable: 1

=head2 nombre_mes

  data_type: 'text'
  is_nullable: 1

=head2 devengado

  data_type: 'numeric'
  is_nullable: 1

=head2 retencion

  data_type: 'numeric'
  is_nullable: 1

=head2 porcentaje_retencion

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "numero_rif",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nombre_completo",
  { data_type => "text", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "nro_mes",
  { data_type => "text", is_nullable => 1 },
  "nombre_mes",
  { data_type => "text", is_nullable => 1 },
  "devengado",
  { data_type => "numeric", is_nullable => 1 },
  "retencion",
  { data_type => "numeric", is_nullable => 1 },
  "porcentaje_retencion",
  { data_type => "numeric", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cv0lmvsIU/AoBo3Ldvy6kQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
