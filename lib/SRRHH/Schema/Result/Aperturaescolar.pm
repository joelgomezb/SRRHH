use utf8;
package SRRHH::Schema::Result::Aperturaescolar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Aperturaescolar

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

=head1 TABLE: C<aperturaescolar>

=cut

__PACKAGE__->table("aperturaescolar");

=head1 ACCESSORS

=head2 id_apertura_escolar

  data_type: 'integer'
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 cargos_apertura

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 cargos_restante

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 horas_apertura

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 horas_restante

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_apertura_escolar",
  { data_type => "integer", is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_cargo",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "cargos_apertura",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "cargos_restante",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "horas_apertura",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "horas_restante",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_apertura_escolar>

=back

=cut

__PACKAGE__->set_primary_key("id_apertura_escolar");

=head1 RELATIONS

=head2 id_dependencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 registrodocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Registrodocente>

=cut

__PACKAGE__->has_many(
  "registrodocentes",
  "SRRHH::Schema::Result::Registrodocente",
  { "foreign.id_apertura_escolar" => "self.id_apertura_escolar" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aQvUxDFRYoLdgmaJgBrfrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
