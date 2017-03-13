use utf8;
package SIGEFIRRHH::Schema::Result::Disquete;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Disquete

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

=head1 TABLE: C<disquete>

=cut

__PACKAGE__->table("disquete");

=head1 ACCESSORS

=head2 id_disquete

  data_type: 'integer'
  is_nullable: 0

=head2 cod_disquete

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 tipo_disquete

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 id_banco

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 ingresos

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 egresos

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 id_concepto

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_disquete",
  { data_type => "integer", is_nullable => 0 },
  "cod_disquete",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "descripcion",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "tipo_disquete",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "id_banco",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "ingresos",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "egresos",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "id_concepto",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_disquete>

=back

=cut

__PACKAGE__->set_primary_key("id_disquete");

=head1 UNIQUE CONSTRAINTS

=head2 C<disquete_cod>

=over 4

=item * L</cod_disquete>

=back

=cut

__PACKAGE__->add_unique_constraint("disquete_cod", ["cod_disquete"]);

=head1 RELATIONS

=head2 detalledisquetes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Detalledisquete>

=cut

__PACKAGE__->has_many(
  "detalledisquetes",
  "SIGEFIRRHH::Schema::Result::Detalledisquete",
  { "foreign.id_disquete" => "self.id_disquete" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_banco

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Banco>

=cut

__PACKAGE__->belongs_to(
  "id_banco",
  "SIGEFIRRHH::Schema::Result::Banco",
  { id_banco => "id_banco" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GvPTXWELladN8Jv9caIh0Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
