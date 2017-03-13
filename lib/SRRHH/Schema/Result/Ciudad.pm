use utf8;
package SRRHH::Schema::Result::Ciudad;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SRRHH::Schema::Result::Ciudad

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

=head1 TABLE: C<ciudad>

=cut

__PACKAGE__->table("ciudad");

=head1 ACCESSORS

=head2 id_ciudad

  data_type: 'integer'
  is_nullable: 0

=head2 abreviatura

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cod_ciudad

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 id_estado

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 nombre

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 multiplicador

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=head2 fluctuacion

  data_type: 'double precision'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_ciudad",
  { data_type => "integer", is_nullable => 0 },
  "abreviatura",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cod_ciudad",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "id_estado",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "nombre",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "multiplicador",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
  "fluctuacion",
  { data_type => "double precision", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_ciudad>

=back

=cut

__PACKAGE__->set_primary_key("id_ciudad");

=head1 UNIQUE CONSTRAINTS

=head2 C<ciudad_cod>

=over 4

=item * L</id_estado>

=item * L</cod_ciudad>

=back

=cut

__PACKAGE__->add_unique_constraint("ciudad_cod", ["id_estado", "cod_ciudad"]);

=head1 RELATIONS

=head2 cuentabancoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Cuentabanco>

=cut

__PACKAGE__->has_many(
  "cuentabancoes",
  "SRRHH::Schema::Result::Cuentabanco",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 detalletabuladormres

Type: has_many

Related object: L<SRRHH::Schema::Result::Detalletabuladormre>

=cut

__PACKAGE__->has_many(
  "detalletabuladormres",
  "SRRHH::Schema::Result::Detalletabuladormre",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 educacions

Type: has_many

Related object: L<SRRHH::Schema::Result::Educacion>

=cut

__PACKAGE__->has_many(
  "educacions",
  "SRRHH::Schema::Result::Educacion",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 establecimientosaluds

Type: has_many

Related object: L<SRRHH::Schema::Result::Establecimientosalud>

=cut

__PACKAGE__->has_many(
  "establecimientosaluds",
  "SRRHH::Schema::Result::Establecimientosalud",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_estado

Type: belongs_to

Related object: L<SRRHH::Schema::Result::Estado>

=cut

__PACKAGE__->belongs_to(
  "id_estado",
  "SRRHH::Schema::Result::Estado",
  { id_estado => "id_estado" },
  { is_deferrable => 0, on_delete => "SET NULL", on_update => "NO ACTION" },
);

=head2 lugarpagoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Lugarpago>

=cut

__PACKAGE__->has_many(
  "lugarpagoes",
  "SRRHH::Schema::Result::Lugarpago",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 organismoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Organismo>

=cut

__PACKAGE__->has_many(
  "organismoes",
  "SRRHH::Schema::Result::Organismo",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 personal_id_ciudad_nacimientoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->has_many(
  "personal_id_ciudad_nacimientoes",
  "SRRHH::Schema::Result::Personal",
  { "foreign.id_ciudad_nacimiento" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 personal_id_ciudad_residencias

Type: has_many

Related object: L<SRRHH::Schema::Result::Personal>

=cut

__PACKAGE__->has_many(
  "personal_id_ciudad_residencias",
  "SRRHH::Schema::Result::Personal",
  { "foreign.id_ciudad_residencia" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 proyectoes

Type: has_many

Related object: L<SRRHH::Schema::Result::Proyecto>

=cut

__PACKAGE__->has_many(
  "proyectoes",
  "SRRHH::Schema::Result::Proyecto",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sedediplomaticas

Type: has_many

Related object: L<SRRHH::Schema::Result::Sedediplomatica>

=cut

__PACKAGE__->has_many(
  "sedediplomaticas",
  "SRRHH::Schema::Result::Sedediplomatica",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sedes

Type: has_many

Related object: L<SRRHH::Schema::Result::Sede>

=cut

__PACKAGE__->has_many(
  "sedes",
  "SRRHH::Schema::Result::Sede",
  { "foreign.id_ciudad" => "self.id_ciudad" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-11 14:37:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wjHmB3/jocwsxKzqMQo0kw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
