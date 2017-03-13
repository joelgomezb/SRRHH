use utf8;
package SIGEFIRRHH::Schema::Result::Excepcionticket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Excepcionticket

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

=head1 TABLE: C<excepcionticket>

=cut

__PACKAGE__->table("excepcionticket");

=head1 ACCESSORS

=head2 id_excepcion_ticket

  data_type: 'integer'
  is_nullable: 0

=head2 numero_tickets

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 id_trabajador

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_excepcion_ticket",
  { data_type => "integer", is_nullable => 0 },
  "numero_tickets",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "id_trabajador",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_excepcion_ticket>

=back

=cut

__PACKAGE__->set_primary_key("id_excepcion_ticket");

=head1 UNIQUE CONSTRAINTS

=head2 C<excepcionticket_cod>

=over 4

=item * L</id_trabajador>

=back

=cut

__PACKAGE__->add_unique_constraint("excepcionticket_cod", ["id_trabajador"]);

=head1 RELATIONS

=head2 id_trabajador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UKFropDp6/KVmmphg4mNBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
