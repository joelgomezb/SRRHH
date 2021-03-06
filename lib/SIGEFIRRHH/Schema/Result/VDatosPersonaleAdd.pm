use utf8;
package SIGEFIRRHH::Schema::Result::VDatosPersonaleAdd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VDatosPersonaleAdd

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

=head1 TABLE: C<v_datos_personales_add>

=cut

__PACKAGE__->table("v_datos_personales_add");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_nombre

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 segundo_nombre

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 primer_apellido

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 segundo_apellido

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 descripcion_cargo

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 estatus

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_oficina

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_celular

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 telefono_residencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 email

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 dependencia

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 fecha_ingreso

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_nombre",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "segundo_nombre",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "primer_apellido",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "segundo_apellido",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "tipo_personal",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "descripcion_cargo",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "estatus",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_oficina",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_celular",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "telefono_residencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "email",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "dependencia",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "fecha_ingreso",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gxfaWV2qPqkks9dq5N97nw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
