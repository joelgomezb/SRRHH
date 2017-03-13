use utf8;
package SIGEFIRRHH::Schema::Result::VTmpRecibosUnificado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VTmpRecibosUnificado

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

=head1 TABLE: C<v_tmp_recibos_unificados>

=cut

__PACKAGE__->table("v_tmp_recibos_unificados");

=head1 ACCESSORS

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 nomina_especial

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 co_clasificador_presupuestario

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 bs_monto

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "nomina_especial",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "co_clasificador_presupuestario",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "bs_monto",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:n2rWnV3Qw5DqcqkrGu8GJA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
