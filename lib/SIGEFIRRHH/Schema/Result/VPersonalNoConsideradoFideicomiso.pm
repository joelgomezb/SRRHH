use utf8;
package SIGEFIRRHH::Schema::Result::VPersonalNoConsideradoFideicomiso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VPersonalNoConsideradoFideicomiso

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

=head1 TABLE: C<v_personal_no_considerado_fideicomiso>

=cut

__PACKAGE__->table("v_personal_no_considerado_fideicomiso");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 trimestre

  data_type: 'double precision'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 nombre_completo

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "trimestre",
  { data_type => "double precision", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "nombre_completo",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LTbk7MNDxvUTdRsHGNgwYw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
