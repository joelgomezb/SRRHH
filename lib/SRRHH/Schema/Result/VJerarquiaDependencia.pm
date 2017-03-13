use utf8;
package SRRHH::Schema::Result::VJerarquiaDependencia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::VJerarquiaDependencia

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

=head1 TABLE: C<v_jerarquia_dependencias>

=cut

__PACKAGE__->table("v_jerarquia_dependencias");
__PACKAGE__->result_source_instance->view_definition("( SELECT DISTINCT v_jerarquia.id_dependencia_padre AS id_dependencia,\n    v_jerarquia.codigo_dependencia_padre AS cod_dependencia,\n    v_jerarquia.dependencia_padre AS nombre,\n    NULL::integer AS padre,\n    1 AS nivel\n   FROM v_jerarquia\n  ORDER BY v_jerarquia.id_dependencia_padre, v_jerarquia.codigo_dependencia_padre, v_jerarquia.dependencia_padre, NULL::integer, 1::integer)\nUNION\n SELECT v_jerarquia.id_dependencia_hija AS id_dependencia,\n    v_jerarquia.codigo_dependencia_hija AS cod_dependencia,\n    v_jerarquia.dependencia_hija AS nombre,\n    v_jerarquia.id_dependencia_padre AS padre,\n    2 AS nivel\n   FROM v_jerarquia\n  ORDER BY 2");

=head1 ACCESSORS

=head2 id_dependencia

  data_type: 'integer'
  is_nullable: 1

=head2 cod_dependencia

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 padre

  data_type: 'integer'
  is_nullable: 1

=head2 nivel

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_dependencia",
  { data_type => "integer", is_nullable => 1 },
  "cod_dependencia",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "padre",
  { data_type => "integer", is_nullable => 1 },
  "nivel",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-09 11:04:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LQW23XLygH3Ie9U3a3JWfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
