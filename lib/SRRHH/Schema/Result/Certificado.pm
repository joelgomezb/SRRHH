use utf8;
package SRRHH::Schema::Result::Certificado;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Certificado

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

=head1 TABLE: C<certificado>

=cut

__PACKAGE__->table("certificado");

=head1 ACCESSORS

=head2 id_certificado

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 fecha_emision

  data_type: 'date'
  is_nullable: 1

=head2 numero

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 10

=head2 libro

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 folio

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_certificado",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "fecha_emision",
  { data_type => "date", is_nullable => 1 },
  "numero",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 10 },
  "libro",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "folio",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_certificado>

=back

=cut

__PACKAGE__->set_primary_key("id_certificado");

=head1 RELATIONS

=head2 id_personal

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->belongs_to(
  "id_personal",
  "SRRHH::Schema::Result::Personal",
  { id_personal => "id_personal" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FaM+ErThZk2XHIrq0Ebbbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
