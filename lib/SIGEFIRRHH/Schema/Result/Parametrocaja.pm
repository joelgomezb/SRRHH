use utf8;
package SIGEFIRRHH::Schema::Result::Parametrocaja;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametrocaja

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

=head1 TABLE: C<parametrocaja>

=cut

__PACKAGE__->table("parametrocaja");

=head1 ACCESSORS

=head2 id_parametro_caja

  data_type: 'integer'
  is_nullable: 0

=head2 aporte_fijo

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 aporte_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 aporte_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 maximo_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 maximo_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 ingreso_automatico

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 recalculo

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 0
  size: 1

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_caja",
  { data_type => "integer", is_nullable => 0 },
  "aporte_fijo",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "aporte_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "aporte_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "maximo_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "maximo_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "ingreso_automatico",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "recalculo",
  { data_type => "varchar", default_value => "S", is_nullable => 0, size => 1 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_caja>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_caja");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametrocaja_cod>

=over 4

=item * L</id_concepto_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("parametrocaja_cod", ["id_concepto_tipo_personal"]);

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ig/sjP25V2J0+rBL60GAXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
