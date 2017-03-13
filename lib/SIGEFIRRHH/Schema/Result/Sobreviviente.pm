use utf8;
package SIGEFIRRHH::Schema::Result::Sobreviviente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Sobreviviente

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

=head1 TABLE: C<sobreviviente>

=cut

__PACKAGE__->table("sobreviviente");

=head1 ACCESSORS

=head2 id_sobreviviente

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_familiar

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_pension

  data_type: 'date'
  is_nullable: 0

=head2 porcentaje_pension_original

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_pension_original

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 monto_pension_actual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 observacion

  data_type: 'varchar'
  is_nullable: 1
  size: 400

=cut

__PACKAGE__->add_columns(
  "id_sobreviviente",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_familiar",
  { data_type => "integer", is_nullable => 0 },
  "fecha_pension",
  { data_type => "date", is_nullable => 0 },
  "porcentaje_pension_original",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_pension_original",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "monto_pension_actual",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "observacion",
  { data_type => "varchar", is_nullable => 1, size => 400 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sobreviviente>

=back

=cut

__PACKAGE__->set_primary_key("id_sobreviviente");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wAwHhWiaUZMu3gKcHhwcKg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
