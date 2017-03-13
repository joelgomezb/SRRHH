use utf8;
package SRRHH::Schema::Result::Comisionservicio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Comisionservicio

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

=head1 TABLE: C<comisionservicio>

=cut

__PACKAGE__->table("comisionservicio");

=head1 ACCESSORS

=head2 id_comision_servicio

  data_type: 'integer'
  is_nullable: 0

=head2 id_sede_diplomatica

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 nombre_institucion

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_comision_servicio",
  { data_type => "integer", is_nullable => 0 },
  "id_sede_diplomatica",
  { data_type => "integer", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "nombre_institucion",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_comision_servicio>

=back

=cut

__PACKAGE__->set_primary_key("id_comision_servicio");

=head1 UNIQUE CONSTRAINTS

=head2 C<comisionservicio_cod>

=over 4

=item * L</id_personal>

=item * L</fecha_inicio>

=back

=cut

__PACKAGE__->add_unique_constraint("comisionservicio_cod", ["id_personal", "fecha_inicio"]);

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gm1HFf/JFbduLOkRlCRMlw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
