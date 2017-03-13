use utf8;
package SIGEFIRRHH::Schema::Result::VAcumuladoAnual;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VAcumuladoAnual

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

=head1 TABLE: C<v_acumulado_anual>

=cut

__PACKAGE__->table("v_acumulado_anual");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 codtno

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 tipopersonal

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 base_legal

  data_type: 'text'
  is_nullable: 1

=head2 codcon

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 descon

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombreunidad

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 enero

  data_type: 'double precision'
  is_nullable: 1

=head2 febrero

  data_type: 'double precision'
  is_nullable: 1

=head2 marzo

  data_type: 'double precision'
  is_nullable: 1

=head2 abril

  data_type: 'double precision'
  is_nullable: 1

=head2 mayo

  data_type: 'double precision'
  is_nullable: 1

=head2 junio

  data_type: 'double precision'
  is_nullable: 1

=head2 julio

  data_type: 'double precision'
  is_nullable: 1

=head2 agosto

  data_type: 'double precision'
  is_nullable: 1

=head2 septiembre

  data_type: 'double precision'
  is_nullable: 1

=head2 octubre

  data_type: 'double precision'
  is_nullable: 1

=head2 noviembre

  data_type: 'double precision'
  is_nullable: 1

=head2 diciembre

  data_type: 'double precision'
  is_nullable: 1

=head2 total

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "codtno",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "tipopersonal",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "base_legal",
  { data_type => "text", is_nullable => 1 },
  "codcon",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "descon",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombreunidad",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "enero",
  { data_type => "double precision", is_nullable => 1 },
  "febrero",
  { data_type => "double precision", is_nullable => 1 },
  "marzo",
  { data_type => "double precision", is_nullable => 1 },
  "abril",
  { data_type => "double precision", is_nullable => 1 },
  "mayo",
  { data_type => "double precision", is_nullable => 1 },
  "junio",
  { data_type => "double precision", is_nullable => 1 },
  "julio",
  { data_type => "double precision", is_nullable => 1 },
  "agosto",
  { data_type => "double precision", is_nullable => 1 },
  "septiembre",
  { data_type => "double precision", is_nullable => 1 },
  "octubre",
  { data_type => "double precision", is_nullable => 1 },
  "noviembre",
  { data_type => "double precision", is_nullable => 1 },
  "diciembre",
  { data_type => "double precision", is_nullable => 1 },
  "total",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5ptciLq+oejwWem/906THg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
