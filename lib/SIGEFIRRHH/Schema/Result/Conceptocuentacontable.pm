use utf8;
package SIGEFIRRHH::Schema::Result::Conceptocuentacontable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptocuentacontable

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

=head1 TABLE: C<conceptocuentacontable>

=cut

__PACKAGE__->table("conceptocuentacontable");

=head1 ACCESSORS

=head2 id_concepto_cuenta_contable

  data_type: 'integer'
  is_nullable: 0

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cuenta_contable

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_concepto_cuenta_contable",
  { data_type => "integer", is_nullable => 0 },
  "id_concepto_tipo_personal",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "id_cuenta_contable",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_cuenta_contable>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_cuenta_contable");

=head1 UNIQUE CONSTRAINTS

=head2 C<conceptocuencont_cod>

=over 4

=item * L</id_concepto_tipo_personal>

=item * L</id_cuenta_contable>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "conceptocuencont_cod",
  ["id_concepto_tipo_personal", "id_cuenta_contable"],
);

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

=head2 id_cuenta_contable

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cuentacontable>

=cut

__PACKAGE__->belongs_to(
  "id_cuenta_contable",
  "SIGEFIRRHH::Schema::Result::Cuentacontable",
  { id_cuenta_contable => "id_cuenta_contable" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C1xZwBRGkEsg6drkp4FXIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
