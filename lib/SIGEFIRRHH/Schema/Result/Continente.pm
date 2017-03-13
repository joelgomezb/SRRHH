use utf8;
package SIGEFIRRHH::Schema::Result::Continente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Continente

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

=head1 TABLE: C<continente>

=cut

__PACKAGE__->table("continente");

=head1 ACCESSORS

=head2 id_continente

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_continente

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "id_continente",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_continente",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_continente>

=back

=cut

__PACKAGE__->set_primary_key("id_continente");

=head1 UNIQUE CONSTRAINTS

=head2 C<continente_cod>

=over 4

=item * L</cod_continente>

=back

=cut

__PACKAGE__->add_unique_constraint("continente_cod", ["cod_continente"]);

=head1 RELATIONS

=head2 regioncontinentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Regioncontinente>

=cut

__PACKAGE__->has_many(
  "regioncontinentes",
  "SIGEFIRRHH::Schema::Result::Regioncontinente",
  { "foreign.id_continente" => "self.id_continente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XTQCEknI19OA3IzLUw4Kxg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
