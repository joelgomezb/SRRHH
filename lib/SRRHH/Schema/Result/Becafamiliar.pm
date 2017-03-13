use utf8;
package SRRHH::Schema::Result::Becafamiliar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Becafamiliar

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

=head1 TABLE: C<becafamiliar>

=cut

__PACKAGE__->table("becafamiliar");

=head1 ACCESSORS

=head2 id_beca_familiar

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_familiar

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 fecha

  data_type: 'date'
  is_nullable: 1

=head2 tramite_beca

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 nivel_educativo

  data_type: 'varchar'
  default_value: 'O'
  is_nullable: 0
  size: 1

=head2 monto_beca

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 grado

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 promedio_notas

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 estatus_beca

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 instituto

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 instituto_otra_beca

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 carrera_especialidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 otra_beca

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 pagada

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 monto_otra_beca

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 trajo_recaudos

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 fecha_ultimo_pago

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_beca_familiar",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_familiar",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "fecha",
  { data_type => "date", is_nullable => 1 },
  "tramite_beca",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "nivel_educativo",
  { data_type => "varchar", default_value => "O", is_nullable => 0, size => 1 },
  "monto_beca",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "grado",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "promedio_notas",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "estatus_beca",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "instituto",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "instituto_otra_beca",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "carrera_especialidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "otra_beca",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "pagada",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "monto_otra_beca",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "trajo_recaudos",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "fecha_ultimo_pago",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_beca_familiar>

=back

=cut

__PACKAGE__->set_primary_key("id_beca_familiar");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:f/sHLpqv8zN52GM7YMwQfw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
