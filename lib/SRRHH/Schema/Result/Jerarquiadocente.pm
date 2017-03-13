use utf8;
package SRRHH::Schema::Result::Jerarquiadocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Jerarquiadocente

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

=head1 TABLE: C<jerarquiadocente>

=cut

__PACKAGE__->table("jerarquiadocente");

=head1 ACCESSORS

=head2 id_jerarquia_docente

  data_type: 'integer'
  is_nullable: 0

=head2 digito_jerarquia

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_jerarquia_docente",
  { data_type => "integer", is_nullable => 0 },
  "digito_jerarquia",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_jerarquia_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_jerarquia_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<jerarquia_docente>

=over 4

=item * L</digito_jerarquia>

=back

=cut

__PACKAGE__->add_unique_constraint("jerarquia_docente", ["digito_jerarquia"]);

=head1 RELATIONS

=head2 jerarquiacategoriadocentes

Type: has_many

Related object: L<SRRHH::Schema::Result::Jerarquiacategoriadocente>

=cut

__PACKAGE__->has_many(
  "jerarquiacategoriadocentes",
  "SRRHH::Schema::Result::Jerarquiacategoriadocente",
  { "foreign.id_jerarquia_docente" => "self.id_jerarquia_docente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sAN98CjHlq4FSdjiIg4ygw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
