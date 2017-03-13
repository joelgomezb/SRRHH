use utf8;
package SRRHH::Schema::Result::VConcurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VConcurso

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

=head1 TABLE: C<v_concurso>

=cut

__PACKAGE__->table("v_concurso");
__PACKAGE__->result_source_instance->view_definition(" SELECT per.procedencia,\n    pc.id_postulado_concurso AS numero_inscripcion,\n    per.cedula,\n    per.primer_nombre,\n    per.segundo_nombre,\n    per.primer_apellido,\n    per.segundo_apellido,\n    per.sexo,\n    per.email,\n    rc.codigo_nomina AS cod_nomina,\n    d.cod_dependencia,\n    d.nombre AS dependencia,\n    rc.area_ocupacional AS cargo_especifico,\n    c.descripcion_cargo AS cargo_clasificador,\n    con.cod_concurso,\n    con.nombre AS concurso,\n    con.fecha_apertura AS apertura\n   FROM ((((((registrocargos rc\n     JOIN cargo c ON ((rc.id_cargo = c.id_cargo)))\n     JOIN concursocargo cc ON ((cc.id_registro_cargos = rc.id_registro_cargos)))\n     JOIN concurso con ON ((con.id_concurso = cc.id_concurso)))\n     JOIN dependencia d ON ((d.id_dependencia = rc.id_dependencia)))\n     JOIN postuladoconcurso pc ON ((pc.id_concurso_cargo = cc.id_concurso_cargo)))\n     JOIN v_personal_concurso per ON ((per.cedula = pc.cedula)))");

=head1 ACCESSORS

=head2 procedencia

  data_type: 'text'
  is_nullable: 1

=head2 numero_inscripcion

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

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 cargo_especifico

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 cargo_clasificador

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 cod_concurso

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 concurso

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 apertura

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "procedencia",
  { data_type => "text", is_nullable => 1 },
  "numero_inscripcion",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_nomina",
  { data_type => "integer", is_nullable => 1 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "dependencia",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "cargo_especifico",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "cargo_clasificador",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "cod_concurso",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "concurso",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "apertura",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YJ4fzNFOBb4f9gdXT9FusA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
