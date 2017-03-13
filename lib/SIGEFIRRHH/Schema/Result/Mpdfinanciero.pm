use utf8;
package SIGEFIRRHH::Schema::Result::Mpdfinanciero;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Mpdfinanciero

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

=head1 TABLE: C<mpdfinanciero>

=cut

__PACKAGE__->table("mpdfinanciero");

=head1 ACCESSORS

=head2 fecha_vigencia

  data_type: 'date'
  is_nullable: 0

=head2 codigo_organismo

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 codigo_grupo

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 numero_nomina

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 codigo_adm

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 codigo_clase

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=head2 grado

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 tipo_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 deno_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 jornada

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 cedula

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 apellido1

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 nombre1

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 codigo_ubi_geo

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 codigo_decreto_serie

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=head2 codigo_decreto_escala

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=head2 accion_administrativa

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 situacion_cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cod_asig_aprobada1

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada2

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada3

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada3

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada4

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada4

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada5

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada5

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada6

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada6

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada7

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada7

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada8

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada8

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada9

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada9

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_aprobada10

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 monto_asig_aprobada10

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada1

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada1

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada1

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada1

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada2

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada2

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada2

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada2

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada3

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada3

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada3

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada3

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada4

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada4

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada4

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada4

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada5

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada5

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada5

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada5

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada6

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada6

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada6

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada6

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada7

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada7

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada7

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada7

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada8

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada8

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada8

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada8

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada9

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada9

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada9

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada9

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 cod_asig_noaprobada10

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 denominacion_asig_noaprobada10

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 partida_concepto_noaprobada10

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 monto_asig_noaprobada10

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 fecha_vigencia_tran

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 codigo_org_tran

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 grupo_tran

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nomina_tran

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 espacios

  data_type: 'char'
  is_nullable: 1
  size: 24

=cut

__PACKAGE__->add_columns(
  "fecha_vigencia",
  { data_type => "date", is_nullable => 0 },
  "codigo_organismo",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "codigo_grupo",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "numero_nomina",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "codigo_adm",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "codigo_clase",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "grado",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "tipo_cargo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "deno_cargo",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "jornada",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "cedula",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "apellido1",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "nombre1",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "codigo_ubi_geo",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "codigo_decreto_serie",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "codigo_decreto_escala",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "accion_administrativa",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "situacion_cargo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cod_asig_aprobada1",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada1",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada2",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada2",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada3",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada3",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada4",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada4",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada5",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada5",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada6",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada6",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada7",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada7",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada8",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada8",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada9",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada9",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_aprobada10",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "monto_asig_aprobada10",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada1",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada1",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada1",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada1",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada2",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada2",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada2",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada2",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada3",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada3",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada3",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada3",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada4",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada4",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada4",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada4",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada5",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada5",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada5",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada5",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada6",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada6",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada6",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada6",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada7",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada7",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada7",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada7",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada8",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada8",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada8",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada8",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada9",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada9",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada9",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada9",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "cod_asig_noaprobada10",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "denominacion_asig_noaprobada10",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "partida_concepto_noaprobada10",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "monto_asig_noaprobada10",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "fecha_vigencia_tran",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "codigo_org_tran",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "grupo_tran",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nomina_tran",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "espacios",
  { data_type => "char", is_nullable => 1, size => 24 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sFl2aA0Qj3U/GKRyifXilw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
