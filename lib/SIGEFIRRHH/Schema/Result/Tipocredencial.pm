use utf8;
package SIGEFIRRHH::Schema::Result::Tipocredencial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tipocredencial

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

=head1 TABLE: C<tipocredencial>

=cut

__PACKAGE__->table("tipocredencial");

=head1 ACCESSORS

=head2 id_tipo_credencial

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_credencial

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_credencial",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_credencial",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_credencial>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_credencial");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipocredencial_cod>

=over 4

=item * L</cod_tipo_credencial>

=back

=cut

__PACKAGE__->add_unique_constraint("tipocredencial_cod", ["cod_tipo_credencial"]);

=head1 RELATIONS

=head2 subtipocredencials

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Subtipocredencial>

=cut

__PACKAGE__->has_many(
  "subtipocredencials",
  "SIGEFIRRHH::Schema::Result::Subtipocredencial",
  { "foreign.id_tipo_credencial" => "self.id_tipo_credencial" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:71OFkbIH82GZIWXAxKpHeQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
