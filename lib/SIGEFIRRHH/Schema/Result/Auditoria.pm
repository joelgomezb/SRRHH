use utf8;
package SIGEFIRRHH::Schema::Result::Auditoria;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Auditoria

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

=head1 TABLE: C<auditoria>

=cut

__PACKAGE__->table("auditoria");

=head1 ACCESSORS

=head2 id_usuario

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  default_value: 0
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

=head2 ruta

  data_type: 'varchar'
  is_nullable: 0
  size: 150

=head2 accion

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 registro

  data_type: 'varchar'
  is_nullable: 0
  size: 400

=head2 cedula_trabajador

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

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
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "hora",
  { data_type => "time", is_nullable => 0 },
  "fecha",
  { data_type => "date", is_nullable => 0 },
  "usuario",
  { data_type => "varchar", is_nullable => 0, size => 90 },
  "ruta",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "accion",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "registro",
  { data_type => "varchar", is_nullable => 0, size => 400 },
  "cedula_trabajador",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "concepto",
  { data_type => "varchar", is_nullable => 1, size => 55 },
  "monto",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "frecuencia_pago",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j7zhBoAmlI560oukN/WdRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
