use utf8;
package SRRHH::Schema::Result::Entidadeducativa;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Entidadeducativa

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

=head1 TABLE: C<entidadeducativa>

=cut

__PACKAGE__->table("entidadeducativa");

=head1 ACCESSORS

=head2 id_entidad_educativa

  data_type: 'integer'
  is_nullable: 0

=head2 cod_entidad_educativa

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 cod_ince

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 numero_rif

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 persona_contacto

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sector

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 telefono1

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono2

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 numero_med

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 id_tipo_entidad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_estado

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_entidad_educativa",
  { data_type => "integer", is_nullable => 0 },
  "cod_entidad_educativa",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "cod_ince",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "numero_rif",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "persona_contacto",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sector",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "telefono1",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono2",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "numero_med",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "id_tipo_entidad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_estado",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_entidad_educativa>

=back

=cut

__PACKAGE__->set_primary_key("id_entidad_educativa");

=head1 UNIQUE CONSTRAINTS

=head2 C<entidadeducativa_codigo>

=over 4

=item * L</cod_entidad_educativa>

=back

=cut

__PACKAGE__->add_unique_constraint("entidadeducativa_codigo", ["cod_entidad_educativa"]);

=head1 RELATIONS

=head2 cursoentidads

Type: has_many

Related object: L<SRRHH::Schema::Result::Cursoentidad>

=cut

__PACKAGE__->has_many(
  "cursoentidads",
  "SRRHH::Schema::Result::Cursoentidad",
  { "foreign.id_entidad_educativa" => "self.id_entidad_educativa" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_estado

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Estado>

=cut

__PACKAGE__->belongs_to(
  "id_estado",
  "SRRHH::Schema::Result::Estado",
  { id_estado => "id_estado" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_tipo_entidad

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipoentidad>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_entidad",
  "SRRHH::Schema::Result::Tipoentidad",
  { id_tipo_entidad => "id_tipo_entidad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uCI7DbPRp1F3xRp1WV/M/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
