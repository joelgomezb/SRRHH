use utf8;
package SRRHH::Schema::Result::Tiposede;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Tiposede

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

=head1 TABLE: C<tiposede>

=cut

__PACKAGE__->table("tiposede");

=head1 ACCESSORS

=head2 id_tipo_sede

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_sede

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_sede",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_sede",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_sede>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_sede");

=head1 UNIQUE CONSTRAINTS

=head2 C<tiposede_cod>

=over 4

=item * L</cod_tipo_sede>

=back

=cut

__PACKAGE__->add_unique_constraint("tiposede_cod", ["cod_tipo_sede"]);

=head1 RELATIONS

=head2 sedediplomaticas

Type: has_many

Related object: L<SRRHH::Schema::Result::Sedediplomatica>

=cut

__PACKAGE__->has_many(
  "sedediplomaticas",
  "SRRHH::Schema::Result::Sedediplomatica",
  { "foreign.id_tipo_sede" => "self.id_tipo_sede" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eFjoEityDco3whXD7fPRrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
