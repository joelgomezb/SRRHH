use utf8;
package SRRHH::Schema::Result::Embargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Embargo

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

=head1 TABLE: C<embargo>

=cut

__PACKAGE__->table("embargo");

=head1 ACCESSORS

=head2 id_embargo

  data_type: 'integer'
  is_nullable: 0

=head2 oficio

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 expediente

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 1

=head2 numero_menores

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 numero_tickets

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_embargo",
  { data_type => "integer", is_nullable => 0 },
  "oficio",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "expediente",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "fecha_vigencia",
  { data_type => "date", is_nullable => 1 },
  "numero_menores",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "numero_tickets",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_embargo>

=back

=cut

__PACKAGE__->set_primary_key("id_embargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<embargo_cod>

=over 4

=item * L</id_personal>

=item * L</fecha_vigencia>

=back

=cut

__PACKAGE__->add_unique_constraint("embargo_cod", ["id_personal", "fecha_vigencia"]);

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6+XQKQyWMqEE/ig9mQo9JQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
