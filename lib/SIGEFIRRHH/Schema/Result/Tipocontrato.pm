use utf8;
package SIGEFIRRHH::Schema::Result::Tipocontrato;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tipocontrato

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

=head1 TABLE: C<tipocontrato>

=cut

__PACKAGE__->table("tipocontrato");

=head1 ACCESSORS

=head2 id_tipo_contrato

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_contrato

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_tipo_contrato",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_contrato",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_contrato>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_contrato");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipocontrato_cod>

=over 4

=item * L</cod_tipo_contrato>

=back

=cut

__PACKAGE__->add_unique_constraint("tipocontrato_cod", ["cod_tipo_contrato"]);

=head1 RELATIONS

=head2 contratoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Contrato>

=cut

__PACKAGE__->has_many(
  "contratoes",
  "SIGEFIRRHH::Schema::Result::Contrato",
  { "foreign.id_tipo_contrato" => "self.id_tipo_contrato" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P7qN8MuUJR2cw+3W2Khy0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
