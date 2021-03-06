use utf8;
package SRRHH::Schema::Result::Seriecargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Seriecargo

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

=head1 TABLE: C<seriecargo>

=cut

__PACKAGE__->table("seriecargo");

=head1 ACCESSORS

=head2 id_serie_cargo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_serie_cargo

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 id_grupo_ocupacional

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_serie_cargo",
  { data_type => "integer", is_nullable => 0 },
  "cod_serie_cargo",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "id_grupo_ocupacional",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 1,
  },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_serie_cargo>

=back

=cut

__PACKAGE__->set_primary_key("id_serie_cargo");

=head1 UNIQUE CONSTRAINTS

=head2 C<seriecargo_cod>

=over 4

=item * L</cod_serie_cargo>

=back

=cut

__PACKAGE__->add_unique_constraint("seriecargo_cod", ["cod_serie_cargo"]);

=head1 RELATIONS

=head2 id_grupo_ocupacional

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Grupoocupacional>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_ocupacional",
  "SRRHH::Schema::Result::Grupoocupacional",
  { id_grupo_ocupacional => "id_grupo_ocupacional" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LumQIEqEf4uXp+qcaEKjGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
