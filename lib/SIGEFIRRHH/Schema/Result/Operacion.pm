use utf8;
package SIGEFIRRHH::Schema::Result::Operacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Operacion

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

=head1 TABLE: C<operacion>

=cut

__PACKAGE__->table("operacion");

=head1 ACCESSORS

=head2 id_operacion

  data_type: 'integer'
  is_nullable: 0

=head2 cod_operacion

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_operacion",
  { data_type => "integer", is_nullable => 0 },
  "cod_operacion",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "nombre",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_operacion>

=back

=cut

__PACKAGE__->set_primary_key("id_operacion");

=head1 UNIQUE CONSTRAINTS

=head2 C<operacion_cod>

=over 4

=item * L</cod_operacion>

=back

=cut

__PACKAGE__->add_unique_constraint("operacion_cod", ["cod_operacion"]);

=head1 RELATIONS

=head2 dependenciajudicials

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Dependenciajudicial>

=cut

__PACKAGE__->has_many(
  "dependenciajudicials",
  "SIGEFIRRHH::Schema::Result::Dependenciajudicial",
  { "foreign.id_operacion" => "self.id_operacion" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zv9qwIeFpBP1y9OdieMPhQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
