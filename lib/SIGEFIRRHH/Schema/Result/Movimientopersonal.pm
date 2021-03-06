use utf8;
package SIGEFIRRHH::Schema::Result::Movimientopersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Movimientopersonal

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

=head1 TABLE: C<movimientopersonal>

=cut

__PACKAGE__->table("movimientopersonal");

=head1 ACCESSORS

=head2 id_movimiento_personal

  data_type: 'integer'
  is_nullable: 0

=head2 cod_movimiento_personal

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 descripcion

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
  "id_movimiento_personal",
  { data_type => "integer", is_nullable => 0 },
  "cod_movimiento_personal",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_movimiento_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_movimiento_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<movimientopersonal_cod>

=over 4

=item * L</cod_movimiento_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("movimientopersonal_cod", ["cod_movimiento_personal"]);

=head1 RELATIONS

=head2 causamovimientoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Causamovimiento>

=cut

__PACKAGE__->has_many(
  "causamovimientoes",
  "SIGEFIRRHH::Schema::Result::Causamovimiento",
  {
    "foreign.id_movimiento_personal" => "self.id_movimiento_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:G3MdoV+3h6Oi6yER/Mdpmg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
