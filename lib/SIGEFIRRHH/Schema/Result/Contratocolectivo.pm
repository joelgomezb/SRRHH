use utf8;
package SIGEFIRRHH::Schema::Result::Contratocolectivo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Contratocolectivo

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

=head1 TABLE: C<contratocolectivo>

=cut

__PACKAGE__->table("contratocolectivo");

=head1 ACCESSORS

=head2 id_contrato_colectivo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_contrato_colectivo

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 denominacion

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 descripcion

  data_type: 'text'
  is_nullable: 1

=head2 sector

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 fecha_vencimiento

  data_type: 'date'
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_contrato_colectivo",
  { data_type => "integer", is_nullable => 0 },
  "cod_contrato_colectivo",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "denominacion",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "descripcion",
  { data_type => "text", is_nullable => 1 },
  "sector",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "fecha_vencimiento",
  { data_type => "date", is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_contrato_colectivo>

=back

=cut

__PACKAGE__->set_primary_key("id_contrato_colectivo");

=head1 UNIQUE CONSTRAINTS

=head2 C<contratocolectivo_cod>

=over 4

=item * L</cod_contrato_colectivo>

=back

=cut

__PACKAGE__->add_unique_constraint("contratocolectivo_cod", ["cod_contrato_colectivo"]);

=head1 RELATIONS

=head2 conceptotipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->has_many(
  "conceptotipopersonals",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { "foreign.id_contrato_colectivo" => "self.id_contrato_colectivo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rxp+5185rHAQ/rCdf5D8cA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
