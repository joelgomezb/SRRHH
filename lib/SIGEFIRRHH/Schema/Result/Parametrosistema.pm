use utf8;
package SIGEFIRRHH::Schema::Result::Parametrosistema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Parametrosistema

=head1 DESCRIPTION

Parámetros propios del sistema, no debe ser editable directamente por usuarios normales, unicamente por el administrador del sistema o soporte técnico

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

=head1 TABLE: C<parametrosistema>

=cut

__PACKAGE__->table("parametrosistema");

=head1 ACCESSORS

=head2 nombre_parametro

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 valor_parametro

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 tipo_parametro

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 descripcion_parametro

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "nombre_parametro",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "valor_parametro",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "tipo_parametro",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "descripcion_parametro",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</nombre_parametro>

=back

=cut

__PACKAGE__->set_primary_key("nombre_parametro");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Gddjy7RhOV00jlT8dTgcKg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
