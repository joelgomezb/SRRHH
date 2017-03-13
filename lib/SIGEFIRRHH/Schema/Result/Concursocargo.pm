use utf8;
package SIGEFIRRHH::Schema::Result::Concursocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Concursocargo

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

=head1 TABLE: C<concursocargo>

=cut

__PACKAGE__->table("concursocargo");

=head1 ACCESSORS

=head2 id_concurso_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 id_concurso

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_registro_cargos

  data_type: 'integer'
  is_nullable: 0

=head2 id_postulado_concurso

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concurso_cargo",
  { data_type => "integer", is_nullable => 0 },
  "id_concurso",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_registro_cargos",
  { data_type => "integer", is_nullable => 0 },
  "id_postulado_concurso",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concurso_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_concurso_cargo");

=head1 RELATIONS

=head2 id_concurso

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concurso>

=cut

__PACKAGE__->belongs_to(
  "id_concurso",
  "SIGEFIRRHH::Schema::Result::Concurso",
  { id_concurso => "id_concurso" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RIXqAqMyqxcHqgJufojVgA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
