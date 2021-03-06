use utf8;
package SIGEFIRRHH::Schema::Result::Tipoacreencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Tipoacreencia

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

=head1 TABLE: C<tipoacreencia>

=cut

__PACKAGE__->table("tipoacreencia");

=head1 ACCESSORS

=head2 id_tipo_acreencia

  data_type: 'integer'
  is_nullable: 0

=head2 cod_tipo_acreencia

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_tipo_acreencia",
  { data_type => "integer", is_nullable => 0 },
  "cod_tipo_acreencia",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_tipo_acreencia>

=back

=cut

__PACKAGE__->set_primary_key("id_tipo_acreencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<tipoacreencia_cod>

=over 4

=item * L</cod_tipo_acreencia>

=back

=cut

__PACKAGE__->add_unique_constraint("tipoacreencia_cod", ["cod_tipo_acreencia"]);

=head1 RELATIONS

=head2 acreencias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Acreencia>

=cut

__PACKAGE__->has_many(
  "acreencias",
  "SIGEFIRRHH::Schema::Result::Acreencia",
  { "foreign.id_tipo_acreencia" => "self.id_tipo_acreencia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R4fRwcJ1XQ5zUy3o7FP1Sw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
