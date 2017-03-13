use utf8;
package SRRHH::Schema::Result::Elegiblefamiliar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Elegiblefamiliar

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

=head1 TABLE: C<elegiblefamiliar>

=cut

__PACKAGE__->table("elegiblefamiliar");

=head1 ACCESSORS

=head2 id_elegible_familiar

  data_type: 'integer'
  is_nullable: 0

=head2 alergias

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 alergico

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 cedula_familiar

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 estado_civil

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 0

=head2 goza_beca

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 goza_prima_por_hijo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 goza_seguro

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 goza_utiles

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 grado

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 grupo_sanguineo

  data_type: 'varchar'
  default_value: 'NO'
  is_nullable: 0
  size: 3

=head2 mismo_organismo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 nino_excepcional

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 nivel_educativo

  data_type: 'varchar'
  default_value: 'B'
  is_nullable: 0
  size: 1

=head2 parentesco

  data_type: 'varchar'
  default_value: 'C'
  is_nullable: 0
  size: 1

=head2 sexo

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 0
  size: 1

=head2 talla_franela

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 talla_gorra

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 talla_pantalon

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 id_elegible

  data_type: 'integer'
  is_nullable: 0

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 promedio_nota

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_elegible_familiar",
  { data_type => "integer", is_nullable => 0 },
  "alergias",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "alergico",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "cedula_familiar",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "estado_civil",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 0 },
  "goza_beca",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "goza_prima_por_hijo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "goza_seguro",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "goza_utiles",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "grado",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "grupo_sanguineo",
  { data_type => "varchar", default_value => "NO", is_nullable => 0, size => 3 },
  "mismo_organismo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "nino_excepcional",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "nivel_educativo",
  { data_type => "varchar", default_value => "B", is_nullable => 0, size => 1 },
  "parentesco",
  { data_type => "varchar", default_value => "C", is_nullable => 0, size => 1 },
  "sexo",
  { data_type => "varchar", default_value => "F", is_nullable => 0, size => 1 },
  "talla_franela",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "talla_gorra",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "talla_pantalon",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "id_elegible",
  { data_type => "integer", is_nullable => 0 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "promedio_nota",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_elegible_familiar>

=back

=cut

__PACKAGE__->set_primary_key("id_elegible_familiar");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wstvF993GwYdcPsQ1slhIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
