use utf8;
package SIGEFIRRHH::Schema::Result::Remesa;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Remesa

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

=head1 TABLE: C<remesa>

=cut

__PACKAGE__->table("remesa");

=head1 ACCESSORS

=head2 id_remesa

  data_type: 'integer'
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  is_nullable: 0

=head2 numero

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_creacion

  data_type: 'date'
  is_nullable: 1

=head2 fecha_cierre

  data_type: 'date'
  is_nullable: 1

=head2 fecha_envio

  data_type: 'date'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_nullable: 0

=head2 id_usuario

  data_type: 'integer'
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_remesa",
  { data_type => "integer", is_nullable => 0 },
  "anio",
  { data_type => "integer", is_nullable => 0 },
  "numero",
  { data_type => "integer", is_nullable => 0 },
  "fecha_creacion",
  { data_type => "date", is_nullable => 1 },
  "fecha_cierre",
  { data_type => "date", is_nullable => 1 },
  "fecha_envio",
  { data_type => "date", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_nullable => 0 },
  "id_usuario",
  { data_type => "integer", is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_remesa>

=back

=cut

__PACKAGE__->set_primary_key("id_remesa");

=head1 UNIQUE CONSTRAINTS

=head2 C<remesa_cod>

=over 4

=item * L</id_organismo>

=item * L</anio>

=item * L</numero>

=back

=cut

__PACKAGE__->add_unique_constraint("remesa_cod", ["id_organismo", "anio", "numero"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:revozg06Lyx9UQOAUC0HPg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
