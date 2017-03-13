use utf8;
package SIGEFIRRHH::Schema::Result::Contrato;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Contrato

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

=head1 TABLE: C<contrato>

=cut

__PACKAGE__->table("contrato");

=head1 ACCESSORS

=head2 id_contrato

  data_type: 'integer'
  is_nullable: 0

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 fecha_rescision

  data_type: 'date'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 'V'
  is_nullable: 0
  size: 1

=head2 modalidad

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=head2 prorroga

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 institucion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 monto_unico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 monto_mensual

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 objeto_contrato

  data_type: 'text'
  is_nullable: 1

=head2 tareas_contrato

  data_type: 'text'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_tipo_contrato

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_tipo_personal

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

=head2 apartado

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_contrato",
  { data_type => "integer", is_nullable => 0 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "fecha_rescision",
  { data_type => "date", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => "V", is_nullable => 0, size => 1 },
  "modalidad",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
  "prorroga",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "institucion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "monto_unico",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "monto_mensual",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "objeto_contrato",
  { data_type => "text", is_nullable => 1 },
  "tareas_contrato",
  { data_type => "text", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_tipo_contrato",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "apartado",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_contrato>

=back

=cut

__PACKAGE__->set_primary_key("id_contrato");

=head1 UNIQUE CONSTRAINTS

=head2 C<contrato_cod>

=over 4

=item * L</id_personal>

=item * L</id_tipo_contrato>

=item * L</fecha_inicio>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "contrato_cod",
  ["id_personal", "id_tipo_contrato", "fecha_inicio"],
);

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

=head2 id_tipo_contrato

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipocontrato>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_contrato",
  "SIGEFIRRHH::Schema::Result::Tipocontrato",
  { id_tipo_contrato => "id_tipo_contrato" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yIvJjbVdiqvAyJNngvXELw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
