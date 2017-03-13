use utf8;
package SRRHH::Schema::Result::Historicobaseislr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Historicobaseislr

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

=head1 TABLE: C<historicobaseislr>

=cut

__PACKAGE__->table("historicobaseislr");

=head1 ACCESSORS

=head2 id_historico_base_islr

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'historicobaseislr_id_historico_base_islr_seq'

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 id_tipo_personal

  data_type: 'integer'
  is_nullable: 1

=head2 numero_nomina

  data_type: 'integer'
  is_nullable: 1

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 semana_quincena

  data_type: 'integer'
  is_nullable: 1

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 porcentaje

  data_type: 'double precision'
  is_nullable: 1

=head2 asignaciones

  data_type: 'double precision'
  is_nullable: 1

=head2 deducciones

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_historico_base_islr",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "historicobaseislr_id_historico_base_islr_seq",
  },
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 1 },
  "id_tipo_personal",
  { data_type => "integer", is_nullable => 1 },
  "numero_nomina",
  { data_type => "integer", is_nullable => 1 },
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 1 },
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "semana_quincena",
  { data_type => "integer", is_nullable => 1 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "porcentaje",
  { data_type => "double precision", is_nullable => 1 },
  "asignaciones",
  { data_type => "double precision", is_nullable => 1 },
  "deducciones",
  { data_type => "double precision", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_historico_base_islr>

=back

=cut

__PACKAGE__->set_primary_key("id_historico_base_islr");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JN06x2ClCRVI4KKEKoL3Tw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
