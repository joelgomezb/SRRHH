use utf8;
package SIGEFIRRHH::Schema::Result::VConcurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VConcurso

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6FdI1/1lMYY6OOZxCuO1Gg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
