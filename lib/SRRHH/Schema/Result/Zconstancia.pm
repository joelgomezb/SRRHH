use utf8;
package SRRHH::Schema::Result::Zconstancia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Zconstancia

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

=head1 TABLE: C<zconstancia>

=cut

__PACKAGE__->table("zconstancia");

=head1 ACCESSORS

=head2 id_constancia

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'zconstancia_id_constancia_seq'

=head2 tipo_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 periodo_constancia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 fecha_constancia

  data_type: 'timestamp'
  is_nullable: 1

=head2 fecha_validacion

  data_type: 'timestamp'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 300

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 nb_apll

  data_type: 'varchar'
  is_nullable: 1
  size: 250

=head2 tipo_trabajador

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 firma

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 unidad

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 situacion

  data_type: 'integer'
  is_nullable: 1

=head2 encargaduria

  data_type: 'varchar'
  is_nullable: 1
  size: 150

=head2 cod_constancia

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "id_constancia",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "zconstancia_id_constancia_seq",
  },
  "tipo_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "periodo_constancia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "fecha_constancia",
  { data_type => "timestamp", is_nullable => 1 },
  "fecha_validacion",
  { data_type => "timestamp", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 300 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "nb_apll",
  { data_type => "varchar", is_nullable => 1, size => 250 },
  "tipo_trabajador",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "firma",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "unidad",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "situacion",
  { data_type => "integer", is_nullable => 1 },
  "encargaduria",
  { data_type => "varchar", is_nullable => 1, size => 150 },
  "cod_constancia",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_constancia>

=back

=cut

__PACKAGE__->set_primary_key("id_constancia");

=head1 RELATIONS

=head2 firma

Type: belongs_to

Related object: L<SRRHH::Schema::Result::ZfirmaConstancia>

=cut

__PACKAGE__->belongs_to(
  "firma",
  "SRRHH::Schema::Result::ZfirmaConstancia",
  { id_firma_constancia => "firma" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 periodo_constancia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::ZperiodoConstancia>

=cut

__PACKAGE__->belongs_to(
  "periodo_constancia",
  "SRRHH::Schema::Result::ZperiodoConstancia",
  { id_periodo_constancia => "periodo_constancia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 tipo_constancia

Type: belongs_to

Related object: L<SRRHH::Schema::Result::ZtipoConstancia>

=cut

__PACKAGE__->belongs_to(
  "tipo_constancia",
  "SRRHH::Schema::Result::ZtipoConstancia",
  { id_tipo_constancia => "tipo_constancia" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 zbitacora_constancias

Type: has_many

Related object: L<SRRHH::Schema::Result::ZbitacoraConstancia>

=cut

__PACKAGE__->has_many(
  "zbitacora_constancias",
  "SRRHH::Schema::Result::ZbitacoraConstancia",
  { "foreign.id_constancia" => "self.id_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 zconceptos

Type: has_many

Related object: L<SRRHH::Schema::Result::Zconcepto>

=cut

__PACKAGE__->has_many(
  "zconceptos",
  "SRRHH::Schema::Result::Zconcepto",
  { "foreign.id_constancia" => "self.id_constancia" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-20 15:18:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5H2CN7/9pTN/jRaTzLmiUA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
