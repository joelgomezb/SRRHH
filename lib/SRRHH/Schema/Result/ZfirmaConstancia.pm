use utf8;
package SRRHH::Schema::Result::ZfirmaConstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::ZfirmaConstancia

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

=head1 TABLE: C<zfirma_constancia>

=cut

__PACKAGE__->table("zfirma_constancia");

=head1 ACCESSORS

=head2 id_firma_constancia

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zfirma_constancia_id_firma_constancia_seq'

=head2 nb_firma_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 350

=head2 cargo_firma_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 pie0_firma_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=head2 pie1_firma_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 350

=head2 pie2_firma_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 350

=head2 pie_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 500

=head2 firma_activa

  data_type: 'boolean'
  is_nullable: 1

=head2 fe_inicio_cargo

  data_type: 'timestamp'
  is_nullable: 1

=head2 fe_fin_cargo

  data_type: 'timestamp'
  is_nullable: 1

=head2 nb_imagen_firma

  data_type: 'varchar'
  is_nullable: 1
  size: 150

=cut

__PACKAGE__->add_columns(
  "id_firma_constancia",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zfirma_constancia_id_firma_constancia_seq",
  },
  "nb_firma_constancia",
  { data_type => "varchar", is_nullable => 1, size => 350 },
  "cargo_firma_constancia",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "pie0_firma_constancia",
  { data_type => "varchar", is_nullable => 1, size => 500 },
  "pie1_firma_constancia",
  { data_type => "varchar", is_nullable => 1, size => 350 },
  "pie2_firma_constancia",
  { data_type => "varchar", is_nullable => 1, size => 350 },
  "pie_constancia",
  { data_type => "varchar", is_nullable => 1, size => 500 },
  "firma_activa",
  { data_type => "boolean", is_nullable => 1 },
  "fe_inicio_cargo",
  { data_type => "timestamp", is_nullable => 1 },
  "fe_fin_cargo",
  { data_type => "timestamp", is_nullable => 1 },
  "nb_imagen_firma",
  { data_type => "varchar", is_nullable => 1, size => 150 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_firma_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_firma_constancia");

=head1 RELATIONS

=head2 zconstancias

Type: has_many

Related object: L<SRRHH::Schema::Result::Zconstancia>

=cut

__PACKAGE__->has_many(
  "zconstancias",
  "SRRHH::Schema::Result::Zconstancia",
  { "foreign.firma" => "self.id_firma_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:18:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zT26bdZgssuf/7rNC1HUvQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
