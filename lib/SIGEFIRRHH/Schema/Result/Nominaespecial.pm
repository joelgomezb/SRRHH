use utf8;
package SIGEFIRRHH::Schema::Result::Nominaespecial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::Nominaespecial

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

=head1 TABLE: C<nominaespecial>

=cut

__PACKAGE__->table("nominaespecial");

=head1 ACCESSORS

=head2 id_nomina_especial

  data_type: 'integer'
  is_nullable: 0

=head2 numero_nomina

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 anio

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 fecha_registro

  data_type: 'date'
  is_nullable: 1

=head2 id_grupo_nomina

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 descripcion

  data_type: 'varchar'
  is_nullable: 0
  size: 60

=head2 estatus

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 fecha_proceso

  data_type: 'date'
  is_nullable: 1

=head2 mes

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 usuario

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 id_frecuencia_pago

  data_type: 'bigint'
  is_foreign_key: 1
  is_nullable: 0

=head2 fecha_inicio

  data_type: 'date'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'date'
  is_nullable: 1

=head2 personal

  data_type: 'varchar'
  default_value: 'A'
  is_nullable: 1
  size: 1

=head2 pagada

  data_type: 'varchar'
  default_value: 'N'
  is_nullable: 1
  size: 1

=head2 fecha_pago

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id_nomina_especial",
  { data_type => "integer", is_nullable => 0 },
  "numero_nomina",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "anio",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "fecha_registro",
  { data_type => "date", is_nullable => 1 },
  "id_grupo_nomina",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "descripcion",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "estatus",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "fecha_proceso",
  { data_type => "date", is_nullable => 1 },
  "mes",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "usuario",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "id_frecuencia_pago",
  { data_type => "bigint", is_foreign_key => 1, is_nullable => 0 },
  "fecha_inicio",
  { data_type => "date", is_nullable => 1 },
  "fecha_fin",
  { data_type => "date", is_nullable => 1 },
  "personal",
  { data_type => "varchar", default_value => "A", is_nullable => 1, size => 1 },
  "pagada",
  { data_type => "varchar", default_value => "N", is_nullable => 1, size => 1 },
  "fecha_pago",
  { data_type => "date", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_nomina_especial>

=back

=cut

__PACKAGE__->set_primary_key("id_nomina_especial");

=head1 RELATIONS

=head2 asuencianominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Asuencianomina>

=cut

__PACKAGE__->has_many(
  "asuencianominas",
  "SIGEFIRRHH::Schema::Result::Asuencianomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ausencianominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Ausencianomina>

=cut

__PACKAGE__->has_many(
  "ausencianominas",
  "SIGEFIRRHH::Schema::Result::Ausencianomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historiconominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historiconomina>

=cut

__PACKAGE__->has_many(
  "historiconominas",
  "SIGEFIRRHH::Schema::Result::Historiconomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicoquincenas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historicoquincena>

=cut

__PACKAGE__->has_many(
  "historicoquincenas",
  "SIGEFIRRHH::Schema::Result::Historicoquincena",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 historicosemanas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Historicosemana>

=cut

__PACKAGE__->has_many(
  "historicosemanas",
  "SIGEFIRRHH::Schema::Result::Historicosemana",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id_frecuencia_pago

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Frecuenciapago>

=cut

__PACKAGE__->belongs_to(
  "id_frecuencia_pago",
  "SIGEFIRRHH::Schema::Result::Frecuenciapago",
  { id_frecuencia_pago => "id_frecuencia_pago" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

=head2 id_grupo_nomina

Type: belongs_to

Related object: L<SIGEFIRRHH::Schema::Result::Gruponomina>

=cut

__PACKAGE__->belongs_to(
  "id_grupo_nomina",
  "SIGEFIRRHH::Schema::Result::Gruponomina",
  { id_grupo_nomina => "id_grupo_nomina" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "SET NULL",
    on_update     => "NO ACTION",
  },
);

=head2 mensajesprenominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Mensajesprenomina>

=cut

__PACKAGE__->has_many(
  "mensajesprenominas",
  "SIGEFIRRHH::Schema::Result::Mensajesprenomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimanominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Ultimanomina>

=cut

__PACKAGE__->has_many(
  "ultimanominas",
  "SIGEFIRRHH::Schema::Result::Ultimanomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ultimaprenominas

Type: has_many

Related object: L<SIGEFIRRHH::Schema::Result::Ultimaprenomina>

=cut

__PACKAGE__->has_many(
  "ultimaprenominas",
  "SIGEFIRRHH::Schema::Result::Ultimaprenomina",
  { "foreign.id_nomina_especial" => "self.id_nomina_especial" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:26:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:h7F3hwks4iwSd225oNJdIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
