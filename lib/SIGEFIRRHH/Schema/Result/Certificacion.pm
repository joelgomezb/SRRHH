use utf8;
package SIGEFIRRHH::Schema::Result::Certificacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Certificacion

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

=head1 TABLE: C<certificacion>

=cut

__PACKAGE__->table("certificacion");

=head1 ACCESSORS

=head2 id_certificacion

  data_type: 'integer'
  is_nullable: 0

=head2 id_area_conocimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 fecha_certificacion

  data_type: 'date'
  is_nullable: 1

=head2 vigencia

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre_certificacion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 nombre_entidad

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
  "id_certificacion",
  { data_type => "integer", is_nullable => 0 },
  "id_area_conocimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "fecha_certificacion",
  { data_type => "date", is_nullable => 1 },
  "vigencia",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre_certificacion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "nombre_entidad",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_certificacion>

=back

=cut

__PACKAGE__->set_primary_key("id_certificacion");

=head1 RELATIONS

=head2 id_area_conocimiento

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Areaconocimiento>

=cut

__PACKAGE__->belongs_to(
  "id_area_conocimiento",
  "SIGEFIRRHH::Schema::Result::Areaconocimiento",
  { id_area_conocimiento => "id_area_conocimiento" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2TnAt5DNd4dlZduwei6DqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
