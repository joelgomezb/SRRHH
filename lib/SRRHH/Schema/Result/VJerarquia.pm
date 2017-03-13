use utf8;
package SRRHH::Schema::Result::VJerarquia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VJerarquia

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

=head1 TABLE: C<v_jerarquia>

=cut

__PACKAGE__->table("v_jerarquia");
__PACKAGE__->result_source_instance->view_definition(" SELECT j.id_dependencia_padre,\n    j.codigo_dependencia_padre,\n    j.dependencia_padre,\n    j.id_dependencia_hija,\n    j.codigo_dependencia_hija,\n    j.dependencia_hija\n   FROM ( SELECT d.id_dependencia AS id_dependencia_padre,\n            d.cod_dependencia AS codigo_dependencia_padre,\n            d.nombre AS dependencia_padre,\n            h.id_dependencia AS id_dependencia_hija,\n            h.cod_dependencia AS codigo_dependencia_hija,\n            h.nombre AS dependencia_hija\n           FROM dependencia d,\n            ( SELECT dependencia.id_dependencia,\n                    dependencia.id_padre,\n                    dependencia.cod_dependencia,\n                    dependencia.nombre,\n                    dependencia.nivel\n                   FROM dependencia\n                  WHERE ((dependencia.id_dependencia <> dependencia.id_padre) AND (dependencia.id_padre <> 0))\n                  ORDER BY dependencia.cod_dependencia) h\n          WHERE ((d.id_dependencia = d.id_dependencia) AND (d.id_dependencia = h.id_padre))\n        UNION ALL\n         SELECT d.id_dependencia AS id_dependencia_padre,\n            d.cod_dependencia AS codigo_dependencia_padre,\n            d.nombre AS dependencia_padre,\n            h.id_dependencia AS id_dependencia_hija,\n            h.cod_dependencia AS codigo_dependencia_hija,\n            h.nombre AS dependencia_hija\n           FROM dependencia d,\n            ( SELECT dependencia.id_dependencia,\n                    dependencia.id_padre,\n                    dependencia.cod_dependencia,\n                    dependencia.nombre,\n                    dependencia.nivel\n                   FROM dependencia\n                  WHERE ((dependencia.id_dependencia = dependencia.id_padre) AND (dependencia.id_padre <> 0))\n                  ORDER BY dependencia.cod_dependencia) h\n          WHERE ((d.id_dependencia = d.id_dependencia) AND (d.id_dependencia = h.id_padre))) j\n  ORDER BY j.dependencia_hija");

=head1 ACCESSORS

=head2 id_dependencia_padre

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_dependencia_padre

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 dependencia_padre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 id_dependencia_hija

  data_type: 'integer'
  is_nullable: 1

=head2 codigo_dependencia_hija

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 dependencia_hija

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=cut

__PACKAGE__->add_columns(
  "id_dependencia_padre",
  { data_type => "integer", is_nullable => 1 },
  "codigo_dependencia_padre",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "dependencia_padre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "id_dependencia_hija",
  { data_type => "integer", is_nullable => 1 },
  "codigo_dependencia_hija",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "dependencia_hija",
  { data_type => "varchar", is_nullable => 1, size => 90 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U6iHktI2dJcQofTPSTIVpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
