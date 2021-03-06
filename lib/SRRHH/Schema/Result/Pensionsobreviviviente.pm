use utf8;
package SRRHH::Schema::Result::Pensionsobreviviviente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Pensionsobreviviviente

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

=head1 TABLE: C<pensionsobreviviviente>

=cut

__PACKAGE__->table("pensionsobreviviviente");

=head1 ACCESSORS

=head2 id_pension_sobreviviente

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 0

=head2 porcentaje_maximo_pension

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 base

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 1
  size: 1

=head2 numero_meses

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
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
  "id_pension_sobreviviente",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 0 },
  "porcentaje_maximo_pension",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "base",
  { data_type => "varchar", default_value => "P", is_nullable => 1, size => 1 },
  "numero_meses",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_pension_sobreviviente>

=back

=cut

__PACKAGE__->set_primary_key("id_pension_sobreviviente");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8lIvX4Bkdd5X54CbWbhBKg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
