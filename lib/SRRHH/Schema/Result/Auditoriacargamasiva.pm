use utf8;
package SRRHH::Schema::Result::Auditoriacargamasiva;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Auditoriacargamasiva

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

=head1 TABLE: C<auditoriacargamasiva>

=cut

__PACKAGE__->table("auditoriacargamasiva");

=head1 ACCESSORS

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 1

=head2 hora

  data_type: 'time'
  is_nullable: 0

=head2 fecha

  data_type: 'date'
  is_nullable: 0

=head2 usuario

  data_type: 'varchar'
  is_nullable: 0
  size: 90

=head2 accion

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 cedula_trabajador

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 1

=head2 registro

  data_type: 'varchar'
  is_nullable: 0
  size: 400

=head2 concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 55

=head2 monto

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 frecuencia_pago

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_usuario",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "id_organismo",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 1,
  },
  "hora",
  { data_type => "time", is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "accion",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "cedula_trabajador",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_nullable => 1 },
  "registro",
  { data_type => "varchar", is_nullable => 0, size => 400 },
  "concepto",
  { data_type => "varchar", is_nullable => 1, size => 55 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "frecuencia_pago",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 RELATIONS

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FPzmbJIL62mEaA9a8VE2ow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
