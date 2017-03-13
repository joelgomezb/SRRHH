use utf8;
package SIGEFIRRHH::Schema::Result::Ramoocupacional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Ramoocupacional

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

=head1 TABLE: C<ramoocupacional>

=cut

__PACKAGE__->table("ramoocupacional");

=head1 ACCESSORS

=head2 id_ramo_ocupacional

  data_type: 'integer'
  is_nullable: 0

=head2 cod_ramo_ocupacional

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_ramo_ocupacional",
  { data_type => "integer", is_nullable => 0 },
  "cod_ramo_ocupacional",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_ramo_ocupacional>

=back

=cut

__PACKAGE__->set_primary_key("id_ramo_ocupacional");

=head1 UNIQUE CONSTRAINTS

=head2 C<ramoocupacional_cod>

=over 4

=item * L</cod_ramo_ocupacional>

=back

=cut

__PACKAGE__->add_unique_constraint("ramoocupacional_cod", ["cod_ramo_ocupacional"]);

=head1 RELATIONS

=head2 grupoocupacionals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Grupoocupacional>

=cut

__PACKAGE__->has_many(
  "grupoocupacionals",
  "SIGEFIRRHH::Schema::Result::Grupoocupacional",
  { "foreign.id_ramo_ocupacional" => "self.id_ramo_ocupacional" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:l5832DrkFqq2Lked+37d6g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
