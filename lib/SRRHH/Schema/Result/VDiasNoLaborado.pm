use utf8;
package SRRHH::Schema::Result::VDiasNoLaborado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VDiasNoLaborado

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_dias_no_laborados>

=cut

__PACKAGE__->table("v_dias_no_laborados");
__PACKAGE__->result_source_instance->view_definition(" SELECT t.id_trabajador,\n    p.cedula,\n    p.primer_nombre,\n    p.segundo_nombre,\n    v.fecha_inicio AS inicio_vacaciones,\n    v.fecha_fin AS fin_vacaciones,\n    a.fecha_inicio AS incio_ausencia,\n    a.fecha_fin AS fin_ausencia,\n    (v.fecha_fin - v.fecha_inicio) AS dias_vacaciones,\n    (a.fecha_fin - a.fecha_inicio) AS dias_de_ausencias,\n    (((v.fecha_fin - v.fecha_inicio) + a.fecha_fin) - a.fecha_inicio) AS total_ausencias\n   FROM (((personal p\n     JOIN trabajador t ON ((p.id_personal = t.id_personal)))\n     JOIN vacaciondisfrutada v ON ((p.id_personal = v.id_personal)))\n     JOIN ausencia a ON ((p.id_personal = a.id_personal)))");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 inicio_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 fin_vacaciones

  data_type: 'date'
  is_nullable: 1

=head2 incio_ausencia

  data_type: 'date'
  is_nullable: 1

=head2 fin_ausencia

  data_type: 'date'
  is_nullable: 1

=head2 dias_vacaciones

  data_type: 'integer'
  is_nullable: 1

=head2 dias_de_ausencias

  data_type: 'integer'
  is_nullable: 1

=head2 total_ausencias

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "inicio_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "fin_vacaciones",
  { data_type => "date", is_nullable => 1 },
  "incio_ausencia",
  { data_type => "date", is_nullable => 1 },
  "fin_ausencia",
  { data_type => "date", is_nullable => 1 },
  "dias_vacaciones",
  { data_type => "integer", is_nullable => 1 },
  "dias_de_ausencias",
  { data_type => "integer", is_nullable => 1 },
  "total_ausencias",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dBUKx68w1dJwzuFdHbixVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
