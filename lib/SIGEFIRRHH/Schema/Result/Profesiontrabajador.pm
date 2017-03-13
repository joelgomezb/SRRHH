use utf8;
package SIGEFIRRHH::Schema::Result::Profesiontrabajador;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Profesiontrabajador

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

=head1 TABLE: C<profesiontrabajador>

=cut

__PACKAGE__->table("profesiontrabajador");

=head1 ACCESSORS

=head2 id_profesion_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 id_profesion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 actualmente

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_profesion_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "id_profesion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "actualmente",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_profesion_trabajador>

=back

=cut

__PACKAGE__->set_primary_key("id_profesion_trabajador");

=head1 UNIQUE CONSTRAINTS

=head2 C<profesiontrabajador_cod>

=over 4

=item * L</id_profesion>

=item * L</id_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("profesiontrabajador_cod", ["id_profesion", "id_personal"]);

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_profesion

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Profesion>

=cut

__PACKAGE__->belongs_to(
  "id_profesion",
  "SIGEFIRRHH::Schema::Result::Profesion",
  { id_profesion => "id_profesion" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MU1apnpJqRfHsSDEQaHLaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
