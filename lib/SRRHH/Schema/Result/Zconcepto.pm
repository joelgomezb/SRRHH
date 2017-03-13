use utf8;
package SRRHH::Schema::Result::Zconcepto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Zconcepto

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

=head1 TABLE: C<zconceptos>

=cut

__PACKAGE__->table("zconceptos");

=head1 ACCESSORS

=head2 id_concepto

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zconceptos_id_concepto_seq'

=head2 cod_concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 nb_concepto

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 monto

  data_type: 'double precision'
  is_nullable: 1

=head2 id_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concepto",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zconceptos_id_concepto_seq",
  },
  "cod_concepto",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "nb_concepto",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "monto",
  { data_type => "double precision", is_nullable => 1 },
  "id_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concepto>

=back

=cut

__PACKAGE__->set_primary_key("id_concepto");

=head1 RELATIONS

=head2 id_constancia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Zconstancia>

=cut

__PACKAGE__->belongs_to(
  "id_constancia",
  "SRRHH::Schema::Result::Zconstancia",
  { id_constancia => "id_constancia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:18:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BmjiWXqOo7m0R4ziKhIy4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
