use utf8;
package SIGEFIRRHH::Schema::Result::Registrocargo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Registrocargo

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

=head1 TABLE: C<registrocargos>

=cut

__PACKAGE__->table("registrocargos");

=head1 ACCESSORS

=head2 id_registro_cargos

  data_type: 'integer'
  is_nullable: 0

=head2 id_registro

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 codigo_nomina

  data_type: 'integer'
  is_nullable: 0

=head2 situacion

  data_type: 'varchar'
  default_value: 'O'
  is_nullable: 0
  size: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 4
  is_nullable: 0
  size: 1

=head2 condicion

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 1

=head2 fecha_creacion

  data_type: 'date'
  is_nullable: 1

=head2 horas

  data_type: 'double precision'
  default_value: 8
  is_nullable: 0

=head2 reporta_rac

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 id_trabajador

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 convenio_gremial

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 0
  size: 1

=head2 id_gremio

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 id_cargo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_dependencia

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sede

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 id_sitp

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tiempo_sitp

  data_type: 'date'
  is_nullable: 1

=head2 sueldo_basico

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 compensacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 primas_cargo

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 primas_trabajador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 1

=head2 aprobado_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 area_ocupacional

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "id_registro_cargos",
  { data_type => "integer", is_nullable => 0 },
  "id_registro",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "codigo_nomina",
  { data_type => "integer", is_nullable => 0 },
  "situacion",
  { data_type => "varchar", default_value => "O", is_nullable => 0, size => 1 },
  "estatus",
  { data_type => "varchar", default_value => 4, is_nullable => 0, size => 1 },
  "condicion",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 1 },
  "fecha_creacion",
  { data_type => "date", is_nullable => 1 },
  "horas",
  { data_type => "double precision", default_value => 8, is_nullable => 0 },
  "reporta_rac",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "id_trabajador",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "convenio_gremial",
  { data_type => "varchar", default_value => "N", is_nullable => 0, size => 1 },
  "id_gremio",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "id_cargo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_dependencia",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sede",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "id_sitp",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tiempo_sitp",
  { data_type => "date", is_nullable => 1 },
  "sueldo_basico",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "compensacion",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "primas_cargo",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "primas_trabajador",
  { data_type => "double precision", default_value => 0, is_nullable => 1 },
  "aprobado_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "area_ocupacional",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_registro_cargos>

=back

=cut

__PACKAGE__->set_primary_key("id_registro_cargos");

=head1 RELATIONS

=head2 cargoespecificas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Cargoespecifica>

=cut

__PACKAGE__->has_many(
  "cargoespecificas",
  "SIGEFIRRHH::Schema::Result::Cargoespecifica",
  { "foreign.id_registro_cargos" => "self.id_registro_cargos" },
  { cascade_copy => 0, cascade_delete => 0 },
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

=head2 id_gremio

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gremio>

=cut

__PACKAGE__->belongs_to(
  "id_gremio",
  "SIGEFIRRHH::Schema::Result::Gremio",
  { id_gremio => "id_gremio" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 id_registro

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Registro>

=cut

__PACKAGE__->belongs_to(
  "id_registro",
  "SIGEFIRRHH::Schema::Result::Registro",
  { id_registro => "id_registro" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 id_sede

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->belongs_to(
  "id_sede",
  "SIGEFIRRHH::Schema::Result::Sede",
  { id_sede => "id_sede" },
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
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 trabajadors

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Trabajador>

=cut

__PACKAGE__->has_many(
  "trabajadors",
  "SIGEFIRRHH::Schema::Result::Trabajador",
  { "foreign.id_registro_cargos" => "self.id_registro_cargos" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PiKAv+RX0O7LjPcQ/e2kJg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
