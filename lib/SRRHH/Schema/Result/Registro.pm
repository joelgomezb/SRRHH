use utf8;
package SRRHH::Schema::Result::Registro;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Registro

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

=head1 TABLE: C<registro>

=cut

__PACKAGE__->table("registro");

=head1 ACCESSORS

=head2 id_registro

  data_type: 'integer'
  is_nullable: 0

=head2 numero_registro

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 aprobacion_mpd

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_grupo_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_registro",
  { data_type => "integer", is_nullable => 0 },
  "numero_registro",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "aprobacion_mpd",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_grupo_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_registro>

=back

=cut

__PACKAGE__->set_primary_key("id_registro");

=head1 UNIQUE CONSTRAINTS

=head2 C<registro_cod>

=over 4

=item * L</id_organismo>

=item * L</numero_registro>

=back

=cut

__PACKAGE__->add_unique_constraint("registro_cod", ["id_organismo", "numero_registro"]);

=head1 RELATIONS

=head2 id_grupo_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_organismo",
  "SRRHH::Schema::Result::Grupoorganismo",
  { id_grupo_organismo => "id_grupo_organismo" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 registrocargos

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->has_many(
  "registrocargos",
  "SRRHH::Schema::Result::Registrocargo",
  { "foreign.id_registro" => "self.id_registro" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 registropersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Registropersonal>

=cut

__PACKAGE__->has_many(
  "registropersonals",
  "SRRHH::Schema::Result::Registropersonal",
  { "foreign.id_registro" => "self.id_registro" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ILW6OtYnmKfHhLrqf2xEpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
