use utf8;
package SIGEFIRRHH::Schema::Result::Categoriadocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Categoriadocente

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

=head1 TABLE: C<categoriadocente>

=cut

__PACKAGE__->table("categoriadocente");

=head1 ACCESSORS

=head2 id_categoria_docente

  data_type: 'integer'
  is_nullable: 0

=head2 digito_categoria

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=cut

__PACKAGE__->add_columns(
  "id_categoria_docente",
  { data_type => "integer", is_nullable => 0 },
  "digito_categoria",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_categoria_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_categoria_docente");

=head1 UNIQUE CONSTRAINTS

=head2 C<categoriadocente_cod>

=over 4

=item * L</digito_categoria>

=back

=cut

__PACKAGE__->add_unique_constraint("categoriadocente_cod", ["digito_categoria"]);

=head1 RELATIONS

=head2 jerarquiacategoriadocentes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Jerarquiacategoriadocente>

=cut

__PACKAGE__->has_many(
  "jerarquiacategoriadocentes",
  "SIGEFIRRHH::Schema::Result::Jerarquiacategoriadocente",
  { "foreign.id_categoria_docente" => "self.id_categoria_docente" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/WwVrHOWYHYz7uSDhyiwlA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
