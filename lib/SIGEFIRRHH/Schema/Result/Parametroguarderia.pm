use utf8;
package SIGEFIRRHH::Schema::Result::Parametroguarderia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametroguarderia

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

=head1 TABLE: C<parametroguarderia>

=cut

__PACKAGE__->table("parametroguarderia");

=head1 ACCESSORS

=head2 id_parametro_guarderia

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 sueldo_maximo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 edad_maxima

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 monto_patron

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 pago_nomina

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 quien_cobra

  data_type: 'varchar'
  default_value: 'M'
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_guarderia",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "sueldo_maximo",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "edad_maxima",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "monto_patron",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "pago_nomina",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "quien_cobra",
  { data_type => "varchar", default_value => "M", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_guarderia>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_guarderia");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametroguarderia_cod>

=over 4

=item * L</id_tipo_personal>

=back

=cut

__PACKAGE__->add_unique_constraint("parametroguarderia_cod", ["id_tipo_personal"]);

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WEBxGJTAcp4jCBU+rjtrTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
