use utf8;
package SIGEFIRRHH::Schema::Result::VConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VConstancia

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

=head1 TABLE: C<v_constancias>

=cut

__PACKAGE__->table("v_constancias");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'text'
  is_nullable: 1

=head2 sexo

  data_type: 'text'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 descripcion_cargo

  data_type: 'text'
  is_nullable: 1

=head2 encargaduria

  data_type: 'text'
  is_nullable: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 nombre

  data_type: 'text'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 unidad_ejecutora

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 frecon

  data_type: 'integer'
  is_nullable: 1

=head2 nombramiento

  data_type: 'text'
  is_nullable: 1

=head2 firmante

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_uno

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_dos

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_tres

  data_type: 'text'
  is_nullable: 1

=head2 pie_pagina_cuatro

  data_type: 'text'
  is_nullable: 1

=head2 iniciales

  data_type: 'text'
  is_nullable: 1

=head2 oficina

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  { data_type => "text", is_nullable => 1 },
  "segundo_nombre",
  { data_type => "text", is_nullable => 1 },
  "primer_apellido",
  { data_type => "text", is_nullable => 1 },
  "segundo_apellido",
  { data_type => "text", is_nullable => 1 },
  "nacionalidad",
  { data_type => "text", is_nullable => 1 },
  "sexo",
  { data_type => "text", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "descripcion_cargo",
  { data_type => "text", is_nullable => 1 },
  "encargaduria",
  { data_type => "text", is_nullable => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "nombre",
  { data_type => "text", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "concepto",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "unidad_ejecutora",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "frecon",
  { data_type => "integer", is_nullable => 1 },
  "nombramiento",
  { data_type => "text", is_nullable => 1 },
  "firmante",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_uno",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_dos",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_tres",
  { data_type => "text", is_nullable => 1 },
  "pie_pagina_cuatro",
  { data_type => "text", is_nullable => 1 },
  "iniciales",
  { data_type => "text", is_nullable => 1 },
  "oficina",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D8SSxkg4W5twfeHhdwHHCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
