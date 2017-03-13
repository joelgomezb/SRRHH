use utf8;
package SIGEFIRRHH::Schema::Result::Registrodocente;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Registrodocente

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

=head1 TABLE: C<registrodocente>

=cut

__PACKAGE__->table("registrodocente");

=head1 ACCESSORS

=head2 id_registro_docente

  data_type: 'integer'
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_apertura_escolar

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 situacion

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 origen

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 horas_administrativas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 horas_docente

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 total_horas

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 horas_restante

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_registro_docente",
  { data_type => "integer", is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_apertura_escolar",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "situacion",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "origen",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "horas_administrativas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "horas_docente",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "total_horas",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "horas_restante",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_registro_docente>

=back

=cut

__PACKAGE__->set_primary_key("id_registro_docente");

=head1 RELATIONS

=head2 id_apertura_escolar

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Aperturaescolar>

=cut

__PACKAGE__->belongs_to(
  "id_apertura_escolar",
  "SIGEFIRRHH::Schema::Result::Aperturaescolar",
  { id_apertura_escolar => "id_apertura_escolar" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_cargo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Cargo>

=cut

__PACKAGE__->belongs_to(
  "id_cargo",
  "SIGEFIRRHH::Schema::Result::Cargo",
  { id_cargo => "id_cargo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_dependencia

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Dependencia>

=cut

__PACKAGE__->belongs_to(
  "id_dependencia",
  "SIGEFIRRHH::Schema::Result::Dependencia",
  { id_dependencia => "id_dependencia" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_trabajador

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->belongs_to(
  "id_trabajador",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { id_trabajador => "id_trabajador" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+jNa367fH9kLBUk+QTKmLw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
