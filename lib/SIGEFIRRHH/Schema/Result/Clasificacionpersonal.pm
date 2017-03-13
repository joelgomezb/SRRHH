use utf8;
package SIGEFIRRHH::Schema::Result::Clasificacionpersonal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Clasificacionpersonal

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

=head1 TABLE: C<clasificacionpersonal>

=cut

__PACKAGE__->table("clasificacionpersonal");

=head1 ACCESSORS

=head2 id_clasificacion_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_categoria_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_relacion_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_categoria_presupuesto

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_clasificacion_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_categoria_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_relacion_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_categoria_presupuesto",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_clasificacion_personal>

=back

=cut

__PACKAGE__->set_primary_key("id_clasificacion_personal");

=head1 UNIQUE CONSTRAINTS

=head2 C<clasificacionpersonal_cod>

=over 4

=item * L</id_categoria_personal>

=item * L</id_relacion_personal>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "clasificacionpersonal_cod",
  ["id_categoria_personal", "id_relacion_personal"],
);

=head1 RELATIONS

=head2 causapersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Causapersonal>

=cut

__PACKAGE__->has_many(
  "causapersonals",
  "SIGEFIRRHH::Schema::Result::Causapersonal",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialapns

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialapn>

=cut

__PACKAGE__->has_many(
  "historialapns",
  "SIGEFIRRHH::Schema::Result::Historialapn",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialorganismoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialorganismo>

=cut

__PACKAGE__->has_many(
  "historialorganismoes",
  "SIGEFIRRHH::Schema::Result::Historialorganismo",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historialremuns

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historialremun>

=cut

__PACKAGE__->has_many(
  "historialremuns",
  "SIGEFIRRHH::Schema::Result::Historialremun",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_categoria_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Categoriapersonal>

=cut

__PACKAGE__->belongs_to(
  "id_categoria_personal",
  "SIGEFIRRHH::Schema::Result::Categoriapersonal",
  { id_categoria_personal => "id_categoria_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_relacion_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Relacionpersonal>

=cut

__PACKAGE__->belongs_to(
  "id_relacion_personal",
  "SIGEFIRRHH::Schema::Result::Relacionpersonal",
  { id_relacion_personal => "id_relacion_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 registrositps

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Registrositp>

=cut

__PACKAGE__->has_many(
  "registrositps",
  "SIGEFIRRHH::Schema::Result::Registrositp",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tipopersonals

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->has_many(
  "tipopersonals",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  {
    "foreign.id_clasificacion_personal" => "self.id_clasificacion_personal",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:e1wScj6rCl38ZbZ0y6JHog


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
