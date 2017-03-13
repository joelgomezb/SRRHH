use utf8;
package SIGEFIRRHH::Schema::Result::VMontosPlanificacion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SIGEFIRRHH::Schema::Result::VMontosPlanificacion

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<v_montos_planificacion>

=cut

__PACKAGE__->table("v_montos_planificacion");

=head1 ACCESSORS

=head2 anio

  data_type: 'integer'
  is_nullable: 1

=head2 mes

  data_type: 'integer'
  is_nullable: 1

=head2 nacionalidad

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 cedula

  data_type: 'integer'
  is_nullable: 1

=head2 primer_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_apellido

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 primer_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 segundo_nombre

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 sexo

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 antiguedad

  data_type: 'text'
  is_nullable: 1

=head2 ingreso_organismo

  data_type: 'text'
  is_nullable: 1

=head2 codigo_nomina

  data_type: 'text'
  is_nullable: 1

=head2 cargo

  data_type: 'varchar'
  is_nullable: 1
  size: 60

=head2 tipo_personal

  data_type: 'text'
  is_nullable: 1

=head2 categoria

  data_type: 'text'
  is_nullable: 1

=head2 fecha_fin

  data_type: 'text'
  is_nullable: 1

=head2 sueldo_base

  data_type: 'double precision'
  is_nullable: 1

=head2 profesionalizacion

  data_type: 'double precision'
  is_nullable: 1

=head2 prima_antiguedad

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_1

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_1

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_2

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_2

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_3

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_3

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_4

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_4

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_5

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_5

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_6

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_6

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_7

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_7

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_8

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_8

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_9

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_9

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_10

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_10

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_11

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_11

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_12

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_12

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_13

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_13

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_14

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_14

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_15

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_15

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_16

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_16

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_17

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_17

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_18

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_18

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_19

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_19

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_20

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_20

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_21

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_21

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_22

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_22

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_23

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_23

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_24

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_24

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_25

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_25

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_26

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_26

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_27

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_27

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_28

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_28

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_29

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_29

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_30

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_30

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_31

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_31

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_32

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_32

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_33

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_33

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_34

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_34

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_35

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_35

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_36

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_36

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_37

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_37

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_38

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_38

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_39

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_39

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_40

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_40

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_41

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_41

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_42

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_42

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_43

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_43

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_44

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_44

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_45

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_45

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_46

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_46

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_47

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_47

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_48

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_48

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_49

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_49

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_50

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_50

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_51

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_51

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_52

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_52

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_53

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_53

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_54

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_54

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_55

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_55

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_56

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_56

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_57

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_57

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_58

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_58

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_59

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_59

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_60

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_60

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_61

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_61

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_62

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_62

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_63

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_63

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_64

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_64

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_65

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_65

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_66

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_66

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_67

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_67

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_68

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_68

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_69

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_69

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_70

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_70

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_71

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_71

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_72

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_72

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_73

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_73

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_74

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_74

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_75

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_75

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_76

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_76

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_77

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_77

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_78

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_78

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_79

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_79

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_80

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_80

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_81

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_81

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_82

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_82

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_83

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_83

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_84

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_84

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_85

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_85

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_86

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_86

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_87

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_87

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_88

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_88

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_89

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_89

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_90

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_90

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_91

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_91

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_92

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_92

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_93

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_93

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_94

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_94

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_95

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_95

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_96

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_96

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_97

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_97

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_98

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_98

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_99

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_99

  data_type: 'double precision'
  is_nullable: 1

=head2 nombre_otro_concepto_100

  data_type: 'text'
  is_nullable: 1

=head2 monto_otro_concepto_100

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "anio",
  { data_type => "integer", is_nullable => 1 },
  "mes",
  { data_type => "integer", is_nullable => 1 },
  "nacionalidad",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "cedula",
  { data_type => "integer", is_nullable => 1 },
  "primer_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_apellido",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "primer_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "segundo_nombre",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "sexo",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "antiguedad",
  { data_type => "text", is_nullable => 1 },
  "ingreso_organismo",
  { data_type => "text", is_nullable => 1 },
  "codigo_nomina",
  { data_type => "text", is_nullable => 1 },
  "cargo",
  { data_type => "varchar", is_nullable => 1, size => 60 },
  "tipo_personal",
  { data_type => "text", is_nullable => 1 },
  "categoria",
  { data_type => "text", is_nullable => 1 },
  "fecha_fin",
  { data_type => "text", is_nullable => 1 },
  "sueldo_base",
  { data_type => "double precision", is_nullable => 1 },
  "profesionalizacion",
  { data_type => "double precision", is_nullable => 1 },
  "prima_antiguedad",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_1",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_1",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_2",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_2",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_3",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_3",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_4",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_4",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_5",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_5",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_6",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_6",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_7",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_7",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_8",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_8",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_9",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_9",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_10",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_10",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_11",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_11",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_12",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_12",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_13",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_13",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_14",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_14",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_15",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_15",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_16",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_16",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_17",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_17",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_18",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_18",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_19",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_19",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_20",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_20",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_21",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_21",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_22",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_22",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_23",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_23",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_24",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_24",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_25",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_25",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_26",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_26",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_27",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_27",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_28",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_28",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_29",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_29",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_30",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_30",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_31",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_31",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_32",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_32",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_33",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_33",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_34",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_34",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_35",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_35",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_36",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_36",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_37",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_37",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_38",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_38",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_39",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_39",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_40",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_40",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_41",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_41",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_42",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_42",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_43",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_43",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_44",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_44",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_45",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_45",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_46",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_46",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_47",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_47",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_48",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_48",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_49",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_49",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_50",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_50",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_51",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_51",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_52",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_52",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_53",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_53",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_54",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_54",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_55",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_55",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_56",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_56",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_57",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_57",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_58",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_58",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_59",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_59",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_60",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_60",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_61",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_61",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_62",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_62",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_63",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_63",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_64",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_64",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_65",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_65",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_66",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_66",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_67",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_67",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_68",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_68",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_69",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_69",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_70",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_70",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_71",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_71",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_72",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_72",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_73",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_73",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_74",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_74",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_75",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_75",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_76",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_76",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_77",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_77",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_78",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_78",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_79",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_79",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_80",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_80",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_81",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_81",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_82",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_82",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_83",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_83",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_84",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_84",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_85",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_85",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_86",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_86",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_87",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_87",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_88",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_88",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_89",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_89",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_90",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_90",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_91",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_91",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_92",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_92",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_93",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_93",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_94",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_94",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_95",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_95",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_96",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_96",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_97",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_97",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_98",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_98",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_99",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_99",
  { data_type => "double precision", is_nullable => 1 },
  "nombre_otro_concepto_100",
  { data_type => "text", is_nullable => 1 },
  "monto_otro_concepto_100",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-10-18 11:48:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/eNrZvduyZh0AAxvCJMdag


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
