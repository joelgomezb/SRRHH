use utf8;
package SIGEFIRRHH::Schema::Result::Concurso;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Concurso

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

=head1 TABLE: C<concurso>

=cut

__PACKAGE__->table("concurso");

=head1 ACCESSORS

=head2 id_concurso

  data_type: 'integer'
  is_nullable: 0

=head2 cod_concurso

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 descripcion

  data_type: 'text'
  is_nullable: 1

=head2 estatus

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 1

=head2 fecha_apertura

  data_type: 'date'
  is_nullable: 1

=head2 inicio_convocatoria

  data_type: 'date'
  is_nullable: 1

=head2 fin_convocatoria

  data_type: 'date'
  is_nullable: 1

=head2 inicio_retiro

  data_type: 'date'
  is_nullable: 1

=head2 fin_retiro

  data_type: 'date'
  is_nullable: 1

=head2 inicio_inscripcion

  data_type: 'date'
  is_nullable: 1

=head2 fin_inscripcion

  data_type: 'date'
  is_nullable: 1

=head2 ini_publicacion_insc

  data_type: 'date'
  is_nullable: 1

=head2 fin_publicacion_insc

  data_type: 'date'
  is_nullable: 1

=head2 ini_examenes

  data_type: 'date'
  is_nullable: 1

=head2 fin_examenes

  data_type: 'date'
  is_nullable: 1

=head2 ini_publicacion_exam

  data_type: 'date'
  is_nullable: 1

=head2 fin_publicacion_exam

  data_type: 'date'
  is_nullable: 1

=head2 ini_entrevistas

  data_type: 'date'
  is_nullable: 1

=head2 fin_entrevistas

  data_type: 'date'
  is_nullable: 1

=head2 ini_publicacion_entr

  data_type: 'date'
  is_nullable: 1

=head2 fin_publicacion_entr

  data_type: 'date'
  is_nullable: 1

=head2 entrega_informe

  data_type: 'date'
  is_nullable: 1

=head2 id_organismo

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 aprobado_mpd

  data_type: 'varchar'
  default_value: 'S'
  is_nullable: 1
  size: 1

=head2 id_plan_personal

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_concurso",
  { data_type => "integer", is_nullable => 0 },
  "cod_concurso",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "descripcion",
  { data_type => "text", is_nullable => 1 },
  "estatus",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 1 },
  "fecha_apertura",
  { data_type => "date", is_nullable => 1 },
  "inicio_convocatoria",
  { data_type => "date", is_nullable => 1 },
  "fin_convocatoria",
  { data_type => "date", is_nullable => 1 },
  "inicio_retiro",
  { data_type => "date", is_nullable => 1 },
  "fin_retiro",
  { data_type => "date", is_nullable => 1 },
  "inicio_inscripcion",
  { data_type => "date", is_nullable => 1 },
  "fin_inscripcion",
  { data_type => "date", is_nullable => 1 },
  "ini_publicacion_insc",
  { data_type => "date", is_nullable => 1 },
  "fin_publicacion_insc",
  { data_type => "date", is_nullable => 1 },
  "ini_examenes",
  { data_type => "date", is_nullable => 1 },
  "fin_examenes",
  { data_type => "date", is_nullable => 1 },
  "ini_publicacion_exam",
  { data_type => "date", is_nullable => 1 },
  "fin_publicacion_exam",
  { data_type => "date", is_nullable => 1 },
  "ini_entrevistas",
  { data_type => "date", is_nullable => 1 },
  "fin_entrevistas",
  { data_type => "date", is_nullable => 1 },
  "ini_publicacion_entr",
  { data_type => "date", is_nullable => 1 },
  "fin_publicacion_entr",
  { data_type => "date", is_nullable => 1 },
  "entrega_informe",
  { data_type => "date", is_nullable => 1 },
  "id_organismo",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "aprobado_mpd",
  { data_type => "varchar", default_value => "S", is_nullable => 1, size => 1 },
  "id_plan_personal",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_concurso>

=back

=cut

__PACKAGE__->set_primary_key("id_concurso");

=head1 RELATIONS

=head2 concursocargoes

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Concursocargo>

=cut

__PACKAGE__->has_many(
  "concursocargoes",
  "SIGEFIRRHH::Schema::Result::Concursocargo",
  { "foreign.id_concurso" => "self.id_concurso" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_organismo

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->belongs_to(
  "id_organismo",
  "SIGEFIRRHH::Schema::Result::Organismo",
  { id_organismo => "id_organismo" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:f6mKnwUvQri8igKOG9oK2Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
