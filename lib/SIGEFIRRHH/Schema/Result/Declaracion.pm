use utf8;
package SIGEFIRRHH::Schema::Result::Declaracion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Declaracion

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

=head1 TABLE: C<declaracion>

=cut

__PACKAGE__->table("declaracion");

=head1 ACCESSORS

=head2 id_declaracion

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 descargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

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
  "id_declaracion",
  { data_type => "integer", is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "descargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
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

=item * L</id_declaracion>

=back

=cut

__PACKAGE__->set_primary_key("id_declaracion");

=head1 UNIQUE CONSTRAINTS

=head2 C<declaracion_cod>

=over 4

=item * L</fecha_registro>

=item * L</id_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("declaracion_cod", ["fecha_registro", "id_personal"]);

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YZobv2nlmtI3uyY9wZlxtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
