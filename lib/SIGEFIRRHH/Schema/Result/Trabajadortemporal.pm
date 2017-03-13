use utf8;
package SIGEFIRRHH::Schema::Result::Trabajadortemporal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Trabajadortemporal

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

=head1 TABLE: C<trabajadortemporal>

=cut

__PACKAGE__->table("trabajadortemporal");

=head1 ACCESSORS

=head2 id_trabajador

  data_type: 'integer'
  is_nullable: 0

=head2 lunes_primera

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 lunes_segunda

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 lunes_retroactivo

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 hay_retroactivo

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 id_grupo_nomina

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_trabajador",
  { data_type => "integer", is_nullable => 0 },
  "lunes_primera",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "lunes_segunda",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "lunes_retroactivo",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "hay_retroactivo",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dwmCTVtdKloj9+/EAi5htg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
