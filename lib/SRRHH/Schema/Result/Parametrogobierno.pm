use utf8;
package SRRHH::Schema::Result::Parametrogobierno;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Parametrogobierno

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

=head1 TABLE: C<parametrogobierno>

=cut

__PACKAGE__->table("parametrogobierno");

=head1 ACCESSORS

=head2 id_parametro_gobierno

  data_type: 'integer'
  is_nullable: 0

=head2 limsem_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 limmen_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 limsem_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 limmen_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 limsem_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 limmen_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 edadmasc_sso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadfem_sso

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadmasc_lph

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadfem_lph

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadmasc_fju

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 edadfem_fju

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_integral

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcentaje_parcial

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcbpat_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcmpat_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcapat_sso

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porctrab_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcpat_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porctrab_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcpat_lph

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porctrab_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 porcpat_fju

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 id_grupo_organismo

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 limsem_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 limmen_spf

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_parametro_gobierno",
  { data_type => "integer", is_nullable => 0 },
  "limsem_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "limmen_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "limsem_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "limmen_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "limsem_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "limmen_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "edadmasc_sso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadfem_sso",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadmasc_lph",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadfem_lph",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadmasc_fju",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "edadfem_fju",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "porcentaje_integral",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcentaje_parcial",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcbpat_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcmpat_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcapat_sso",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porctrab_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcpat_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porctrab_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcpat_lph",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porctrab_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "porcpat_fju",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "id_grupo_organismo",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "limsem_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "limmen_spf",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_parametro_gobierno>

=back

=cut

__PACKAGE__->set_primary_key("id_parametro_gobierno");

=head1 UNIQUE CONSTRAINTS

=head2 C<parametrogobierno_cod>

=over 4

=item * L</id_grupo_organismo>

=back

=cut

__PACKAGE__->add_unique_constraint("parametrogobierno_cod", ["id_grupo_organismo"]);

=head1 RELATIONS

=head2 id_grupo_organismo

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Grupoorganismo>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_organismo",
  "SRRHH::Schema::Result::Grupoorganismo",
  { id_grupo_organismo => "id_grupo_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ycR7k8lSMCAQrCh29V0sDw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
