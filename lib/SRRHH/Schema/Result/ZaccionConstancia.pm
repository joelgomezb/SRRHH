use utf8;
package SRRHH::Schema::Result::ZaccionConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::ZaccionConstancia

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

=head1 TABLE: C<zaccion_constancia>

=cut

__PACKAGE__->table("zaccion_constancia");

=head1 ACCESSORS

=head2 id_accion_constancia

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zaccion_constancia_id_accion_constancia_seq'

=head2 nb_acciones_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 desc_acciones_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=cut

__PACKAGE__->add_columns(
  "id_accion_constancia",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zaccion_constancia_id_accion_constancia_seq",
  },
  "nb_acciones_constancia",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "desc_acciones_constancia",
  { data_type => "varchar", is_nullable => 1, size => 500 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_accion_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_accion_constancia");

=head1 RELATIONS

=head2 zbitacora_constancias

Type: has_many

Related object: L<SRRHH::Schema::Result::ZbitacoraConstancia>

=cut

__PACKAGE__->has_many(
  "zbitacora_constancias",
  "SRRHH::Schema::Result::ZbitacoraConstancia",
  { "foreign.id_accion" => "self.id_accion_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:18:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vuWuvkwgKVZ6Nm6NWfZVFQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
