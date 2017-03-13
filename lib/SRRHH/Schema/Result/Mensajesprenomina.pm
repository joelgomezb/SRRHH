use utf8;
package SRRHH::Schema::Result::Mensajesprenomina;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Mensajesprenomina

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

=head1 TABLE: C<mensajesprenomina>

=cut

__PACKAGE__->table("mensajesprenomina");

=head1 ACCESSORS

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_nomina_especial

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 mensaje

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 id_mensajes_prenomina

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mensajesprenomina_id_mensajes_prenomina_seq'

=cut

__PACKAGE__->add_columns(
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_nomina_especial",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "mensaje",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "id_mensajes_prenomina",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mensajesprenomina_id_mensajes_prenomina_seq",
  },
);

=head1 RELATIONS

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 id_nomina_especial

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Nominaespecial>

=cut

__PACKAGE__->belongs_to(
  "id_nomina_especial",
  "SRRHH::Schema::Result::Nominaespecial",
  { id_nomina_especial => "id_nomina_especial" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nBn0XvKf/IBhJDQj7r+teg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
