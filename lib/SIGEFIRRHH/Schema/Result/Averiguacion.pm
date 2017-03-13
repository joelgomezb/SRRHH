use utf8;
package SIGEFIRRHH::Schema::Result::Averiguacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Averiguacion

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

=head1 TABLE: C<averiguacion>

=cut

__PACKAGE__->table("averiguacion");

=head1 ACCESSORS

=head2 id_averiguacion

  data_type: 'integer'
  is_nullable: 0

=head2 estatus

  data_type: 'varchar'
  default_value: 'P'
  is_nullable: 0
  size: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 0

=head2 fecha_fin_proceso

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 inhabilitado

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 origen

  data_type: 'varchar'
  default_value: 'C'
  is_nullable: 0
  size: 1

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 resolucion

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 suspension_sueldo

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_averiguacion",
  { data_type => "integer", is_nullable => 0 },
  "estatus",
  { data_type => "varchar", default_value => "P", is_nullable => 0, size => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 0 },
  "fecha_fin_proceso",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "inhabilitado",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "origen",
  { data_type => "varchar", default_value => "C", is_nullable => 0, size => 1 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "resolucion",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "suspension_sueldo",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_averiguacion>

=back

=cut

__PACKAGE__->set_primary_key("id_averiguacion");

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SIGEFIRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q8KD5iR1N1Z9JPicqU8sAA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
