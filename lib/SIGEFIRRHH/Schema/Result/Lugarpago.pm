use utf8;
package SIGEFIRRHH::Schema::Result::Lugarpago;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Lugarpago

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

=head1 TABLE: C<lugarpago>

=cut

__PACKAGE__->table("lugarpago");

=head1 ACCESSORS

=head2 id_lugar_pago

  data_type: 'integer'
  is_nullable: 0

=head2 id_ciudad

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 cod_lugar_pago

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 direccion

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 id_sede

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cod_cesta

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "id_lugar_pago",
  { data_type => "integer", is_nullable => 0 },
  "id_ciudad",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "cod_lugar_pago",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "direccion",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "id_sede",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cod_cesta",
  { data_type => "varchar", is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_lugar_pago>

=back

=cut

__PACKAGE__->set_primary_key("id_lugar_pago");

=head1 UNIQUE CONSTRAINTS

=head2 C<lugarpago_cod>

=over 4

=item * L</id_sede>

=item * L</cod_lugar_pago>

=back

=cut

__PACKAGE__->add_unique_constraint("lugarpago_cod", ["id_sede", "cod_lugar_pago"]);

=head1 RELATIONS

=head2 id_ciudad

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Ciudad>

=cut

__PACKAGE__->belongs_to(
  "id_ciudad",
  "SIGEFIRRHH::Schema::Result::Ciudad",
  { id_ciudad => "id_ciudad" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_sede

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->belongs_to(
  "id_sede",
  "SIGEFIRRHH::Schema::Result::Sede",
  { id_sede => "id_sede" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 trabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_lugar_pago" => "self.id_lugar_pago" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JnE81CfUASLz9l5V6e9U0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
