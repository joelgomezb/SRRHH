use utf8;
package SRRHH::Schema::Result::Clasificaciondependencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Clasificaciondependencia

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

=head1 TABLE: C<clasificaciondependencia>

=cut

__PACKAGE__->table("clasificaciondependencia");

=head1 ACCESSORS

=head2 id_clasificacion_dependencia

  data_type: 'integer'
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_caracteristica_dependencia

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_clasificacion_dependencia",
  { data_type => "integer", is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_caracteristica_dependencia",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_clasificacion_dependencia>

=back

=cut

__PACKAGE__->set_primary_key("id_clasificacion_dependencia");

=head1 UNIQUE CONSTRAINTS

=head2 C<clasificaciond_cod>

=over 4

=item * L</id_dependencia>

=item * L</id_caracteristica_dependencia>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "clasificaciond_cod",
  ["id_dependencia", "id_caracteristica_dependencia"],
);

=head1 RELATIONS

=head2 id_dependencia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zoeY+3dLnZljzJ4STxMcUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
