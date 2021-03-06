use utf8;
package SIGEFIRRHH::Schema::Result::Suplencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Suplencia

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

=head1 TABLE: C<suplencia>

=cut

__PACKAGE__->table("suplencia");

=head1 ACCESSORS

=head2 id_suplencia

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 0

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 persona_suplencia

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 motivo_suplencia

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_suplencia",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 0 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "persona_suplencia",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "motivo_suplencia",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "cargo",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "organismo",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_suplencia>

=back

=cut

__PACKAGE__->set_primary_key("id_suplencia");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4ygbbw/I69AcF4c8iAGNyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
