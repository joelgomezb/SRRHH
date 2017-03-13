use utf8;
package SIGEFIRRHH::Schema::Result::Frecuenciapago;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Frecuenciapago

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

=head1 TABLE: C<frecuenciapago>

=cut

__PACKAGE__->table("frecuenciapago");

=head1 ACCESSORS

=head2 id_frecuencia_pago

  data_type: 'integer'
  is_nullable: 0

=head2 cod_frecuencia_pago

  data_type: 'integer'
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 reservado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_frecuencia_pago",
  { data_type => "integer", is_nullable => 0 },
  "cod_frecuencia_pago",
  { data_type => "integer", is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "reservado",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_frecuencia_pago>

=back

=cut

__PACKAGE__->set_primary_key("id_frecuencia_pago");

=head1 UNIQUE CONSTRAINTS

=head2 C<frecuenciapago_codigo>

=over 4

=item * L</id_organismo>

=item * L</cod_frecuencia_pago>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "frecuenciapago_codigo",
  ["id_organismo", "cod_frecuencia_pago"],
);

=head1 RELATIONS

=head2 frecuenciatipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Frecuenciatipopersonal>

=cut

__PACKAGE__->has_many(
  "frecuenciatipopersonals",
  "SIGEFIRRHH::Schema::Result::Frecuenciatipopersonal",
  { "foreign.id_frecuencia_pago" => "self.id_frecuencia_pago" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 nominaespecials

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Nominaespecial>

=cut

__PACKAGE__->has_many(
  "nominaespecials",
  "SIGEFIRRHH::Schema::Result::Nominaespecial",
  { "foreign.id_frecuencia_pago" => "self.id_frecuencia_pago" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:78Z3JOntENy6NlDem24o1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
