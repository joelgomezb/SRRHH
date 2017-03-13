use utf8;
package SIGEFIRRHH::Schema::Result::Constancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Constancia

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

=head1 TABLE: C<constancia>

=cut

__PACKAGE__->table("constancia");

=head1 ACCESSORS

=head2 id_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 tipo

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 oficina

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 firmante

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 nombramiento

  data_type: 'text'
  is_nullable: 1

=head2 observacion

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_uno

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 pie_pagina_dos

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 pie_pagina_tres

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 direccion

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 telefono

  data_type: 'integer'
  is_nullable: 1

=head2 pie_pagina_cuatro

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 iniciales

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "id_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "tipo",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "oficina",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "firmante",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "cargo",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "nombramiento",
  { data_type => "text", is_nullable => 1 },
  "observacion",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_uno",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "pie_pagina_dos",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "pie_pagina_tres",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "direccion",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "telefono",
  { data_type => "integer", is_nullable => 1 },
  "pie_pagina_cuatro",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "iniciales",
  { data_type => "varchar", is_nullable => 1, size => 10 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_constancia");

=head1 RELATIONS

=head2 conceptoconstancias

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Conceptoconstancia>

=cut

__PACKAGE__->has_many(
  "conceptoconstancias",
  "SIGEFIRRHH::Schema::Result::Conceptoconstancia",
  { "foreign.id_constancia" => "self.id_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 constancia

Type: might_have

Related object: L<SIGEFIRRHH::Schema::Result::Constancia>

=cut

__PACKAGE__->might_have(
  "constancia",
  "SIGEFIRRHH::Schema::Result::Constancia",
  { "foreign.id_constancia" => "self.id_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_constancia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Constancia>

=cut

__PACKAGE__->belongs_to(
  "id_constancia",
  "SIGEFIRRHH::Schema::Result::Constancia",
  { id_constancia => "id_constancia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W6XChF89FAvXVapYS4dl6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
