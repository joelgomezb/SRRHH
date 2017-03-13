use utf8;
package SRRHH::Schema::Result::Parametroutile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parametroutile

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

=head1 TABLE: C<parametroutiles>

=cut

__PACKAGE__->table("parametroutiles");

=head1 ACCESSORS

=head2 id_parametro_utiles

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nivel_educativo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 cantidad_beneficiarios

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_utiles

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 quien_cobra

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_utiles",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nivel_educativo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "cantidad_beneficiarios",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_utiles",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "quien_cobra",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_utiles>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_utiles");

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WSFDBL+/7Ft+vW2aW+NDHg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
