use utf8;
package SRRHH::Schema::Result::ZbitacoraConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::ZbitacoraConstancia

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

=head1 TABLE: C<zbitacora_constancia>

=cut

__PACKAGE__->table("zbitacora_constancia");

=head1 ACCESSORS

=head2 id_bitacora

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zbitacora_constancia_id_bitacora_seq'

=head2 uid_usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 nb_usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 fecha_accion

  data_type: 'timestamp'
  is_nullable: 1

=head2 id_accion

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_bitacora",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zbitacora_constancia_id_bitacora_seq",
  },
  "uid_usuario",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "nb_usuario",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "fecha_accion",
  { data_type => "timestamp", is_nullable => 1 },
  "id_accion",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_bitacora>

=back

=cut

__PACKAGE__->set_primary_key("id_bitacora");

=head1 RELATIONS

=head2 id_accion

Type: belongs_to

Related object: L<SRRHH::Schema::Result::ZaccionConstancia>

=cut

__PACKAGE__->belongs_to(
  "id_accion",
  "SRRHH::Schema::Result::ZaccionConstancia",
  { id_accion_constancia => "id_accion" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GNNkrK+i16gnIpsgocArtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
