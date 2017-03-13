use utf8;
package SIGEFIRRHH::Schema::Result::Guarderiafamiliar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Guarderiafamiliar

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

=head1 TABLE: C<guarderiafamiliar>

=cut

__PACKAGE__->table("guarderiafamiliar");

=head1 ACCESSORS

=head2 id_guarderia_familiar

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_familiar

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_guarderia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 0

=head2 monto_mensualidad

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_inscripcion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_guarderia_familiar",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_familiar",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_guarderia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 0 },
  "monto_mensualidad",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_inscripcion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_guarderia_familiar>

=back

=cut

__PACKAGE__->set_primary_key("id_guarderia_familiar");

=head1 UNIQUE CONSTRAINTS

=head2 C<guarderiafamiliar_cod>

=over 4

=item * L</id_personal>

=item * L</id_familiar>

=back

=cut

__PACKAGE__->add_unique_constraint("guarderiafamiliar_cod", ["id_personal", "id_familiar"]);

=head1 RELATIONS

=head2 id_familiar

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Familiar>

=cut

__PACKAGE__->belongs_to(
  "id_familiar",
  "SIGEFIRRHH::Schema::Result::Familiar",
  { id_familiar => "id_familiar" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_guarderia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Guarderia>

=cut

__PACKAGE__->belongs_to(
  "id_guarderia",
  "SIGEFIRRHH::Schema::Result::Guarderia",
  { id_guarderia => "id_guarderia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_guarderia_2

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Guarderia>

=cut

__PACKAGE__->belongs_to(
  "id_guarderia_2",
  "SIGEFIRRHH::Schema::Result::Guarderia",
  { id_guarderia => "id_guarderia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:n9nhmr8YMcrWkEYzMyrcXw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
