use utf8;
package SRRHH::Schema::Result::Cuentapresupuesto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Cuentapresupuesto

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

=head1 TABLE: C<cuentapresupuesto>

=cut

__PACKAGE__->table("cuentapresupuesto");

=head1 ACCESSORS

=head2 id_cuenta_presupuesto

  data_type: 'integer'
  is_nullable: 0

=head2 cod_presupuesto

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 tipo

  data_type: 'varchar'
  default_value: 'D'
  is_nullable: 0
  size: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 indicador

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_cuenta_presupuesto",
  { data_type => "integer", is_nullable => 0 },
  "cod_presupuesto",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "tipo",
  { data_type => "varchar", default_value => "D", is_nullable => 0, size => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "indicador",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cuenta_presupuesto>

=back

=cut

__PACKAGE__->set_primary_key("id_cuenta_presupuesto");

=head1 UNIQUE CONSTRAINTS

=head2 C<cuentapresupuesto_cod>

=over 4

=item * L</cod_presupuesto>

=back

=cut

__PACKAGE__->add_unique_constraint("cuentapresupuesto_cod", ["cod_presupuesto"]);

=head1 RELATIONS

=head2 conceptocuentas

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptocuenta>

=cut

__PACKAGE__->has_many(
  "conceptocuentas",
  "SRRHH::Schema::Result::Conceptocuenta",
  { "foreign.id_cuenta_presupuesto" => "self.id_cuenta_presupuesto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 conceptopresupuestoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Conceptopresupuesto>

=cut

__PACKAGE__->has_many(
  "conceptopresupuestoes",
  "SRRHH::Schema::Result::Conceptopresupuesto",
  { "foreign.id_cuenta_presupuesto" => "self.id_cuenta_presupuesto" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 presupuestoespecificas

Type: has_many

Related object: L<SRRHH::Schema::Result::Presupuestoespecifica>

=cut

__PACKAGE__->has_many(
  "presupuestoespecificas",
  "SRRHH::Schema::Result::Presupuestoespecifica",
  { "foreign.id_cuenta_presupuesto" => "self.id_cuenta_presupuesto" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:29unXmauPRdDwyd13ar+1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
