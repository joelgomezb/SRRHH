use utf8;
package SIGEFIRRHH::Schema::Result::Vacaciondisfrutada;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Vacaciondisfrutada

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

=head1 TABLE: C<vacaciondisfrutada>

=cut

__PACKAGE__->table("vacaciondisfrutada");

=head1 ACCESSORS

=head2 id_vacacion_disfrutada

  data_type: 'integer'
  is_nullable: 0

=head2 id_personal

  data_type: 'integer'
  is_nullable: 0

=head2 id_tipo_personal

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 dias_disfrute

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 semana_anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_reintegro

  data_type: 'date'
  is_nullable: 1

=head2 observaciones

  data_type: 'text'
  is_nullable: 1

=head2 id_vacacion

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_vacacion_disfrutada",
  { data_type => "integer", is_nullable => 0 },
  "id_personal",
  { data_type => "integer", is_nullable => 0 },
  "id_tipo_personal",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "dias_disfrute",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "semana_anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_reintegro",
  { data_type => "date", is_nullable => 1 },
  "observaciones",
  { data_type => "text", is_nullable => 1 },
  "id_vacacion",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_vacacion_disfrutada>

=back

=cut

__PACKAGE__->set_primary_key("id_vacacion_disfrutada");

=head1 RELATIONS

=head2 id_tipo_personal

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Tipopersonal>

=cut

__PACKAGE__->belongs_to(
  "id_tipo_personal",
  "SIGEFIRRHH::Schema::Result::Tipopersonal",
  { id_tipo_personal => "id_tipo_personal" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:K9gtKTAieA+WH63RvZ+9mg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
