use utf8;
package SIGEFIRRHH::Schema::Result::Reconocimiento;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Reconocimiento

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

=head1 TABLE: C<reconocimiento>

=cut

__PACKAGE__->table("reconocimiento");

=head1 ACCESSORS

=head2 id_reconocimiento

  data_type: 'integer'
  is_nullable: 0

=head2 observaciones

  data_type: 'varchar'
  is_nullable: 1
  size: 254

=head2 fecha

  data_type: 'date'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_reconocimiento

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_organismo

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
  "id_reconocimiento",
  { data_type => "integer", is_nullable => 0 },
  "observaciones",
  { data_type => "varchar", is_nullable => 1, size => 254 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_reconocimiento",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_reconocimiento>

=back

=cut

__PACKAGE__->set_primary_key("id_reconocimiento");

=head1 UNIQUE CONSTRAINTS

=head2 C<reconocimiento_cod>

=over 4

=item * L</id_tipo_reconocimiento>

=item * L</id_personal>

=item * L</fecha>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "reconocimiento_cod",
  ["id_tipo_reconocimiento", "id_personal", "fecha"],
);

=head1 RELATIONS

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

=head2 id_tipo_reconocimiento

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tiporeconocimiento>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_reconocimiento",
  "SIGEFIRRHH::Schema::Result::Tiporeconocimiento",
  { id_tipo_reconocimiento => "id_tipo_reconocimiento" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u99HVz4QbR00SRHPuNfl4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
