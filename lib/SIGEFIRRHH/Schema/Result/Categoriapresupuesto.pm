use utf8;
package SIGEFIRRHH::Schema::Result::Categoriapresupuesto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Categoriapresupuesto

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

=head1 TABLE: C<categoriapresupuesto>

=cut

__PACKAGE__->table("categoriapresupuesto");

=head1 ACCESSORS

=head2 id_categoria_presupuesto

  data_type: 'integer'
  is_nullable: 0

=head2 cod_categoria

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 desc_categoria

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id_categoria_presupuesto",
  { data_type => "integer", is_nullable => 0 },
  "cod_categoria",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "desc_categoria",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_categoria_presupuesto>

=back

=cut

__PACKAGE__->set_primary_key("id_categoria_presupuesto");

=head1 RELATIONS

=head2 seguridadpresupuestoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Seguridadpresupuesto>

=cut

__PACKAGE__->has_many(
  "seguridadpresupuestoes",
  "SIGEFIRRHH::Schema::Result::Seguridadpresupuesto",
  {
    "foreign.id_categoria_presupuesto" => "self.id_categoria_presupuesto",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D0N3rbN3Z69I1Q+SSBOA0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
