use utf8;
package SRRHH::Schema::Result::Relacionpersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Relacionpersonal

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

=head1 TABLE: C<relacionpersonal>

=cut

__PACKAGE__->table("relacionpersonal");

=head1 ACCESSORS

=head2 id_relacion_personal

  data_type: 'integer'
  is_nullable: 0

=head2 cod_relacion

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 desc_relacion

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_relacion_personal",
  { data_type => "integer", is_nullable => 0 },
  "cod_relacion",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "desc_relacion",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_relacion_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_relacion_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<relacionpersonal_cod>

=over 4

=item * L</cod_relacion>

=back

=cut

__PACKAGE__->add_unique_constraint("relacionpersonal_cod", ["cod_relacion"]);

=head1 RELATIONS

=head2 clasificacionpersonals

Type: has_many

Related object: L<SRRHH::Schema::Result::Clasificacionpersonal>

=cut

__PACKAGE__->has_many(
  "clasificacionpersonals",
  "SRRHH::Schema::Result::Clasificacionpersonal",
  { "foreign.id_relacion_personal" => "self.id_relacion_personal" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rA/Ts5C8tcWOaTMajib6RQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
