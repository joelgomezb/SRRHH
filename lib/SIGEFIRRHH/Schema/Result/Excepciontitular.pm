use utf8;
package SIGEFIRRHH::Schema::Result::Excepciontitular;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Excepciontitular

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

=head1 TABLE: C<excepciontitular>

=cut

__PACKAGE__->table("excepciontitular");

=head1 ACCESSORS

=head2 id_excepcion_titular

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_plan_poliza

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_excepcion_titular",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_plan_poliza",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_excepcion_titular>

=back

=cut

__PACKAGE__->set_primary_key("id_excepcion_titular");

=head1 UNIQUE CONSTRAINTS

=head2 C<excepciontitular_cod>

=over 4

=item * L</id_personal>

=item * L</id_plan_poliza>

=back

=cut

__PACKAGE__->add_unique_constraint("excepciontitular_cod", ["id_personal", "id_plan_poliza"]);

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

=head2 id_plan_poliza

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Planpoliza>

=cut

__PACKAGE__->belongs_to(
  "id_plan_poliza",
  "SIGEFIRRHH::Schema::Result::Planpoliza",
  { id_plan_poliza => "id_plan_poliza" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HcoRrrz8T1pYDR3NwKpjdA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
