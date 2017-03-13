use utf8;
package SIGEFIRRHH::Schema::Result::Conceptoconstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Conceptoconstancia

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

=head1 TABLE: C<conceptoconstancia>

=cut

__PACKAGE__->table("conceptoconstancia");

=head1 ACCESSORS

=head2 id_concepto_constancia

  data_type: 'integer'
  is_nullable: 0

=head2 id_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_concepto_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 origen

  data_type: 'varchar'
  default_value: 'F'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto_constancia",
  { data_type => "integer", is_nullable => 0 },
  "id_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_concepto_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "origen",
  { data_type => "varchar", default_value => "F", is_nullable => 1, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto_constancia");

=head1 RELATIONS

=head2 id_concepto_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Conceptotipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_concepto_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Conceptotipopersonal",
  { id_concepto_tipo_personal => "id_concepto_tipo_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_constancia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Constancia>

=cut

__PACKAGE__->belongs_to(
  "id_constancia",
  "SIGEFIRRHH::Schema::Result::Constancia",
  { id_constancia => "id_constancia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NsDjAfGeqPSEObNGvNU+6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
