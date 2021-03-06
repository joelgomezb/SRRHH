use utf8;
package SIGEFIRRHH::Schema::Result::Pruebapreseleccionado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Pruebapreseleccionado

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

=head1 TABLE: C<pruebapreseleccionado>

=cut

__PACKAGE__->table("pruebapreseleccionado");

=head1 ACCESSORS

=head2 id_prueba_preseleccionado

  data_type: 'integer'
  is_nullable: 0

=head2 id_postulado_concurso

  data_type: 'integer'
  is_nullable: 0

=head2 id_prueba_seleccion

  data_type: 'integer'
  is_nullable: 0

=head2 resultado

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 entrevistador

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_prueba_preseleccionado",
  { data_type => "integer", is_nullable => 0 },
  "id_postulado_concurso",
  { data_type => "integer", is_nullable => 0 },
  "id_prueba_seleccion",
  { data_type => "integer", is_nullable => 0 },
  "resultado",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "entrevistador",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_prueba_preseleccionado>

=back

=cut

__PACKAGE__->set_primary_key("id_prueba_preseleccionado");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IDz7lqwOCZYGvyJRV0Fgmg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
