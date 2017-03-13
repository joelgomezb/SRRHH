use utf8;
package SIGEFIRRHH::Schema::Result::VWebHijo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VWebHijo

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

=head1 TABLE: C<v_web_hijos>

=cut

__PACKAGE__->table("v_web_hijos");

=head1 ACCESSORS

=head2 ipk_id_hijos

  data_type: 'integer'
  is_nullable: 1

=head2 ifk_cedula_funcionarios

  data_type: 'integer'
  is_nullable: 1

=head2 c_cedula_hijos

  data_type: 'integer'
  is_nullable: 1

=head2 c_nombre_hijos

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 c_apell_hijos

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 c_fecha_nac_hijos

  data_type: 'date'
  is_nullable: 1

=head2 c_estatu_becado_hijos

  data_type: 'text'
  is_nullable: 1

=head2 c_estatu_solici_hijos

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 c_tipo_solici_hijos

  data_type: 'text'
  is_nullable: 1

=head2 c_fecha_solici_hijos

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ipk_id_hijos",
  { data_type => "integer", is_nullable => 1 },
  "ifk_cedula_funcionarios",
  { data_type => "integer", is_nullable => 1 },
  "c_cedula_hijos",
  { data_type => "integer", is_nullable => 1 },
  "c_nombre_hijos",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "c_apell_hijos",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "c_fecha_nac_hijos",
  { data_type => "date", is_nullable => 1 },
  "c_estatu_becado_hijos",
  { data_type => "text", is_nullable => 1 },
  "c_estatu_solici_hijos",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "c_tipo_solici_hijos",
  { data_type => "text", is_nullable => 1 },
  "c_fecha_solici_hijos",
  { data_type => "date", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Os6NyOIm2t8hTrPkvo6W/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
