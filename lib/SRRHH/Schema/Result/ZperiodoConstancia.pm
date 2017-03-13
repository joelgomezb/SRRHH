use utf8;
package SRRHH::Schema::Result::ZperiodoConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::ZperiodoConstancia

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

=head1 TABLE: C<zperiodo_constancia>

=cut

__PACKAGE__->table("zperiodo_constancia");

=head1 ACCESSORS

=head2 id_periodo_constancia

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zperiodo_constancia_id_periodo_constancia_seq'

=head2 nb_periodo_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 desc_periodo_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=cut

__PACKAGE__->add_columns(
  "id_periodo_constancia",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zperiodo_constancia_id_periodo_constancia_seq",
  },
  "nb_periodo_constancia",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "desc_periodo_constancia",
  { data_type => "varchar", is_nullable => 1, size => 500 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_periodo_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_periodo_constancia");

=head1 RELATIONS

=head2 zconstancias

Type: has_many

Related object: L<SRRHH::Schema::Result::Zconstancia>

=cut

__PACKAGE__->has_many(
  "zconstancias",
  "SRRHH::Schema::Result::Zconstancia",
  { "foreign.periodo_constancia" => "self.id_periodo_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:18:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NiRLPQ0N/7umZ/H0E7jnYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
