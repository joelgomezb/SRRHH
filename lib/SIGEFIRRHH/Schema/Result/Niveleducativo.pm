use utf8;
package SIGEFIRRHH::Schema::Result::Niveleducativo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Niveleducativo

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

=head1 TABLE: C<niveleducativo>

=cut

__PACKAGE__->table("niveleducativo");

=head1 ACCESSORS

=head2 id_nivel_educativo

  data_type: 'integer'
  is_nullable: 0

=head2 cod_nivel_educativo

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 orden

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_nivel_educativo",
  { data_type => "integer", is_nullable => 0 },
  "cod_nivel_educativo",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "orden",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_nivel_educativo>

=back

=cut

__PACKAGE__->set_primary_key("id_nivel_educativo");

=head1 UNIQUE CONSTRAINTS

=head2 C<niveleducativo_cod>

=over 4

=item * L</cod_nivel_educativo>

=back

=cut

__PACKAGE__->add_unique_constraint("niveleducativo_cod", ["cod_nivel_educativo"]);

=head1 RELATIONS

=head2 educacions

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Educacion>

=cut

__PACKAGE__->has_many(
  "educacions",
  "SIGEFIRRHH::Schema::Result::Educacion",
  { "foreign.id_nivel_educativo" => "self.id_nivel_educativo" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tituloes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Titulo>

=cut

__PACKAGE__->has_many(
  "tituloes",
  "SIGEFIRRHH::Schema::Result::Titulo",
  { "foreign.id_nivel_educativo" => "self.id_nivel_educativo" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UJsewLmigonBmZK6Ff/S/A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
