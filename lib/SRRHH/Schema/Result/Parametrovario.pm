use utf8;
package SRRHH::Schema::Result::Parametrovario;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parametrovario

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

=head1 TABLE: C<parametrovarios>

=cut

__PACKAGE__->table("parametrovarios");

=head1 ACCESSORS

=head2 id_parametro_varios

  data_type: 'integer'
  is_nullable: 0

=head2 nuevo_regimen

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 alicuota_bfa_prestac

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 alicuota_bfa_bvac

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 alicuota_bvac_prestac

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 alicuota_bvac_bfa

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 dias_anio

  data_type: 'integer'
  default_value: 360
  is_nullable: 0

=head2 aniversario_disfrute

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 0
  size: 1

=head2 dias_bfa1997

  data_type: 'integer'
  default_value: 30
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_grupo_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 calculo_utilidades

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 alicuota_bono_petrolero

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 constante_petrolero_a

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 constante_petrolero_b

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 constante_petrolero_c

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 bono_extra

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 sumo_apn

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 calculo_alicuota_bfa

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 fecha_tope_utilidades

  data_type: 'date'
  is_nullable: 1

=head2 fecha_apertura_fideicomiso

  data_type: 'date'
  is_nullable: 1

=head2 regimen_derogado_procesado

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 intereses_adicionales

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 cambio_moneda

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 tipo_calculo_bfa

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 tope_horas_extra

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tope_horas_extra_mensual

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 ausencia_injustificada

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_varios",
  { data_type => "integer", is_nullable => 0 },
  "nuevo_regimen",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "alicuota_bfa_prestac",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "alicuota_bfa_bvac",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "alicuota_bvac_prestac",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "alicuota_bvac_bfa",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "dias_anio",
  { data_type => "integer", default_value => 360, is_nullable => 0 },
  "aniversario_disfrute",
  { data_type => "varchar", default_value => "A", is_nullable => 0, size => 1 },
  "dias_bfa1997",
  { data_type => "integer", default_value => 30, is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_grupo_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "calculo_utilidades",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "alicuota_bono_petrolero",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "constante_petrolero_a",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "constante_petrolero_b",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "constante_petrolero_c",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "bono_extra",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "sumo_apn",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "calculo_alicuota_bfa",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "fecha_tope_utilidades",
  { data_type => "date", is_nullable => 1 },
  "fecha_apertura_fideicomiso",
  { data_type => "date", is_nullable => 1 },
  "regimen_derogado_procesado",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "intereses_adicionales",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "cambio_moneda",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "tipo_calculo_bfa",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "tope_horas_extra",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tope_horas_extra_mensual",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "ausencia_injustificada",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_varios>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_varios");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametrovarios_cod>

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("parametrovarios_cod", ["id_tipo_personal"]);

=head1 RELATIONS

=head2 id_grupo_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_organismo",
  "SRRHH::Schema::Result::Grupoorganismo",
  { id_grupo_organismo => "id_grupo_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:agFZBg+A0usJ2EnqcEctVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
