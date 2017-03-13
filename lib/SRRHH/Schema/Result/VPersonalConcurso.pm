use utf8;
package SRRHH::Schema::Result::VPersonalConcurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VPersonalConcurso

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

=head1 TABLE: C<v_personal_concurso>

=cut

__PACKAGE__->table("v_personal_concurso");
__PACKAGE__->result_source_instance->view_definition(" SELECT personas.procedencia,\n    personas.id_personal,\n    personas.cedula,\n    personas.primer_nombre,\n    personas.segundo_nombre,\n    personas.primer_apellido,\n    personas.segundo_apellido,\n    personas.sexo,\n    personas.email,\n    personas.estado_civil,\n    personas.fecha_nacimiento,\n    personas.telefono_celular,\n    personas.telefono_residencia\n   FROM ( SELECT 'MPPEE'::text AS procedencia,\n            p.id_personal,\n            p.cedula,\n            p.primer_nombre,\n            p.segundo_nombre,\n            p.primer_apellido,\n            p.segundo_apellido,\n            p.sexo,\n            p.email,\n            p.estado_civil,\n            p.fecha_nacimiento,\n            p.telefono_celular,\n            p.telefono_residencia\n           FROM (personal p\n             JOIN trabajador t USING (id_personal))\n          WHERE (((t.estatus)::text = 'A'::text) AND (NOT (p.cedula IN ( SELECT trabajador.cedula\n                   FROM trabajador\n                  WHERE (((trabajador.estatus)::text = 'E'::text) AND (NOT (trabajador.cedula IN ( SELECT trabajador_1.cedula\n                           FROM trabajador trabajador_1\n                          WHERE ((trabajador_1.estatus)::text = 'A'::text)))))))))\n        UNION ALL\n         SELECT 'MPPEE'::text AS procedencia,\n            p.id_personal,\n            p.cedula,\n            p.primer_nombre,\n            p.segundo_nombre,\n            p.primer_apellido,\n            p.segundo_apellido,\n            p.sexo,\n            p.email,\n            p.estado_civil,\n            p.fecha_nacimiento,\n            p.telefono_celular,\n            p.telefono_residencia\n           FROM personal p\n          WHERE (NOT (p.cedula IN ( SELECT t.cedula\n                   FROM trabajador t)))\n        UNION ALL\n         SELECT 'EXTERNO'::text AS procedencia,\n            elegible.id_elegible,\n            elegible.cedula,\n            elegible.primer_nombre,\n            elegible.segundo_nombre,\n            elegible.primer_apellido,\n            elegible.segundo_apellido,\n            elegible.sexo,\n            elegible.email,\n            elegible.estado_civil,\n            elegible.fecha_nacimiento,\n            elegible.telefono_celular,\n            elegible.telefono_residencia\n           FROM elegible\n        UNION ALL\n        ( SELECT DISTINCT 'EXTERNO'::text AS procedencia,\n            (p.id_personal * 0) AS id_personal,\n            p.cedula,\n            p.primer_nombre,\n            p.segundo_nombre,\n            p.primer_apellido,\n            p.segundo_apellido,\n            p.sexo,\n            p.email,\n            p.estado_civil,\n            p.fecha_nacimiento,\n            p.telefono_celular,\n            p.telefono_residencia\n           FROM (personal p\n             JOIN trabajador t USING (id_personal))\n          WHERE (((t.estatus)::text = 'E'::text) AND (NOT (p.cedula IN ( SELECT trabajador.cedula\n                   FROM trabajador\n                  WHERE ((trabajador.estatus)::text = 'A'::text)))))\n          ORDER BY 'EXTERNO'::text, (p.id_personal * 0), p.cedula, p.primer_nombre, p.segundo_nombre, p.primer_apellido, p.segundo_apellido, p.sexo, p.email, p.estado_civil, p.fecha_nacimiento, p.telefono_celular, p.telefono_residencia)) personas\n  ORDER BY personas.cedula");

=head1 ACCESSORS

=head2 procedencia

  data_type: 'text'
  is_nullable: 1

=head2 id_personal

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

=head2 estado_civil

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 fecha_nacimiento

  data_type: 'date'
  is_nullable: 1

=head2 telefono_celular

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=head2 telefono_residencia

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "procedencia",
  { data_type => "text", is_nullable => 1 },
  "id_personal",
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
  "estado_civil",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "fecha_nacimiento",
  { data_type => "date", is_nullable => 1 },
  "telefono_celular",
  { data_type => "varchar", is_nullable => 1, size => 15 },
  "telefono_residencia",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FsiVeVh0lDVsa5T7PzXrEw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
