use utf8;
package SIGEFIRRHH::Schema::Result::Elegibleafiliacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Elegibleafiliacion

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

=head1 TABLE: C<elegibleafiliacion>

=cut

__PACKAGE__->table("elegibleafiliacion");

=head1 ACCESSORS

=head2 id_elegible_afiliacion

  data_type: 'integer'
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 id_gremio

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 numero_afiliacion

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_elegible_afiliacion",
  { data_type => "integer", is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "id_gremio",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "numero_afiliacion",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_afiliacion>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_afiliacion");

=head1 RELATIONS

=head2 id_gremio

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gremio>

=cut

__PACKAGE__->belongs_to(
  "id_gremio",
  "SIGEFIRRHH::Schema::Result::Gremio",
  { id_gremio => "id_gremio" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KqszngIMmSxYkPjb3kGPlQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
