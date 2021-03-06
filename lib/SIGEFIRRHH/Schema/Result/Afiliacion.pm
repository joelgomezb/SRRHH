use utf8;
package SIGEFIRRHH::Schema::Result::Afiliacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Afiliacion

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

=head1 TABLE: C<afiliacion>

=cut

__PACKAGE__->table("afiliacion");

=head1 ACCESSORS

=head2 id_afiliacion

  data_type: 'integer'
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 id_gremio

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 numero_afiliacion

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_afiliacion",
  { data_type => "integer", is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "id_gremio",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "numero_afiliacion",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_afiliacion>

=back

=cut

__PACKAGE__->set_primary_key("id_afiliacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<afiliacion_cod>

=over 4

=item * L</id_personal>

=item * L</id_gremio>

=back

=cut

__PACKAGE__->add_unique_constraint("afiliacion_cod", ["id_personal", "id_gremio"]);

=head1 RELATIONS

=head2 id_gremio

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gremio>

=cut

__PACKAGE__->belongs_to(
  "id_gremio",
  "SIGEFIRRHH::Schema::Result::Gremio",
  { id_gremio => "id_gremio" },
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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NlwEoHXQlx0qjEZtysabXg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
