use utf8;
package SIGEFIRRHH::Schema::Result::Sindicato;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Sindicato

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

=head1 TABLE: C<sindicato>

=cut

__PACKAGE__->table("sindicato");

=head1 ACCESSORS

=head2 id_sindicato

  data_type: 'integer'
  is_nullable: 0

=head2 cod_sindicato

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 id_concepto

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_sindicato",
  { data_type => "integer", is_nullable => 0 },
  "cod_sindicato",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "id_concepto",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_sindicato>

=back

=cut

__PACKAGE__->set_primary_key("id_sindicato");

=head1 UNIQUE CONSTRAINTS

=head2 C<sindicato_cod>

=over 4

=item * L</cod_sindicato>

=back

=cut

__PACKAGE__->add_unique_constraint("sindicato_cod", ["cod_sindicato"]);

=head1 RELATIONS

=head2 id_concepto

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Concepto>

=cut

__PACKAGE__->belongs_to(
  "id_concepto",
  "SIGEFIRRHH::Schema::Result::Concepto",
  { id_concepto => "id_concepto" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q9ggRXwsajstqH39ait9Vw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
