use utf8;
package SIGEFIRRHH::Schema::Result::Cargoespecifica;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Cargoespecifica

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

=head1 TABLE: C<cargoespecifica>

=cut

__PACKAGE__->table("cargoespecifica");

=head1 ACCESSORS

=head2 id_cargo_especifica

  data_type: 'integer'
  is_nullable: 0

=head2 id_uel_especifica

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_registro_cargos

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje

  data_type: 'double precision'
  default_value: 100
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_cargo_especifica",
  { data_type => "integer", is_nullable => 0 },
  "id_uel_especifica",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_registro_cargos",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje",
  { data_type => "double precision", default_value => 100, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cargo_especifica>

=back

=cut

__PACKAGE__->set_primary_key("id_cargo_especifica");

=head1 UNIQUE CONSTRAINTS

=head2 C<cargoesp_cod>

=over 4

=item * L</id_uel_especifica>

=item * L</id_registro_cargos>

=back

=cut

__PACKAGE__->add_unique_constraint("cargoesp_cod", ["id_uel_especifica", "id_registro_cargos"]);

=head1 RELATIONS

=head2 id_registro_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Registrocargo>

=cut

__PACKAGE__->belongs_to(
  "id_registro_cargo",
  "SIGEFIRRHH::Schema::Result::Registrocargo",
  { id_registro_cargos => "id_registro_cargos" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_uel_especifica

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Uelespecifica>

=cut

__PACKAGE__->belongs_to(
  "id_uel_especifica",
  "SIGEFIRRHH::Schema::Result::Uelespecifica",
  { id_uel_especifica => "id_uel_especifica" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IQSgkNNHJh673ImOJuSauA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
