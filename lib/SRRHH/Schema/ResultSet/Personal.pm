package SRRHH::Schema::ResultSet::Personal;
use strict;
use warnings;
use base 'DBIx::Class::ResultSet';

=head2 consultar_ultimas_quincenas

Obtener un listado de los períodos de las últimas 3 quincenas de recibos
para un trabajador dado su número de cédula

=cut

sub consultar_ultimas_quincenas {
  my $self = shift;
  my $cedula = shift;
  my $page = shift if (@_);

  my $personal = $self->find( { cedula => $cedula }, { key => 'personal_cod' } );

  my $pagos = $personal->recibos_quincena->search( { fecha_fin => { '<=' => \'NOW()::date' } }, {
    select   => [ \'TO_CHAR(fecha_inicio,\'DD/MM/YYYY\')',
                  \'TO_CHAR(fecha_fin,\'DD/MM/YYYY\')',
                  'anio',
                  'mes',
                  'semana_quincena',
                  'tipopersonal',
                  \'TO_CHAR(ingresoorganismo,\'DD/MM/YYYY\')',
                  'codrac',
                  'nombreunidad',
                  'cedula',
                  'cargo',
                  'primer_apellido',
                  'segundo_apellido',
                  'primer_nombre',
                  'segundo_nombre',
                  'suebas',
                  { sum => 'asigna' },
                  { sum => 'deduce' },
                ],
    as       => [qw/ inicio fin anio mes semana_quincena tipopersonal fecha_ingreso codrac unidad cedula cargo primer_apellido segundo_apellido primer_nombre segundo_nombre suebas total_asignaciones total_deducciones /],
    group_by => [qw/ fecha_inicio fecha_fin anio mes semana_quincena tipopersonal ingresoorganismo codrac nombreunidad cedula cargo primer_apellido segundo_apellido primer_nombre segundo_nombre suebas /],
    order_by => { -desc => ['anio', 'mes', 'semana_quincena'] },
    page => $page,
    rows => 25,
  } );
  my @resultado;
  while ( my $pago = $pagos->next ) {
    my $datos = {};
    $datos->{ inicio } = $pago->get_column('inicio');
    $datos->{ fin } = $pago->get_column('fin');
    $datos->{ anio } = $pago->get_column('anio');
    $datos->{ mes } = $pago->get_column('mes');
    $datos->{ semana_quincena } = $pago->get_column('semana_quincena');
    $datos->{ tipopersonal } = $pago->get_column('tipopersonal');
    $datos->{ fecha_ingreso } = $pago->get_column('fecha_ingreso');
    $datos->{ codrac } = $pago->get_column('codrac');
    $datos->{ unidad } = $pago->get_column('unidad');
    $datos->{ cedula } = $pago->get_column('cedula');
    $datos->{ cargo } = $pago->get_column('cargo');
    $datos->{ nombre_completo } = $pago->get_column('primer_nombre') . ' ' . $pago->get_column('segundo_nombre') . ' ' . $pago->get_column('primer_apellido') . ' ' . $pago->get_column('segundo_apellido');
    $datos->{ suebas } = $pago->get_column('suebas');
    $datos->{ total_asignaciones } = $pago->get_column( 'total_asignaciones' );
    $datos->{ total_deducciones } = $pago->get_column( 'total_deducciones' );
    push @resultado, $datos;
  }
  return ( \@resultado, $pagos->pager );
}


=head2 consultar_detalle_quincena

=cut

sub consultar_detalle_quincena {
  my $self = shift;
  my $personal = shift if (@_);
  my $anio = shift if (@_);
  my $mes = shift if (@_);
  my $quincena = shift if (@_);

  my $detalles = $personal->recibos_quincena->search( {
    anio => $anio,
    mes => $mes,
    semana_quincena => $quincena
  }, {
    columns => [ qw/ codcon descon asigna deduce / ],
    order_by => qw/ codcon /,
  } );

  my @resultado;
  while ( my $detalle = $detalles->next ) {
    my $datos = {};
    $datos->{ codcon } = $detalle->codcon;
    $datos->{ descon } = $detalle->descon;
    $datos->{ asigna } = $detalle->asigna;
    $datos->{ deduce } = $detalle->deduce;
    push @resultado, $datos;
  }
  return \@resultado;
}

=head2 consultar_nomina_quincena

Obtener datos completos para recibo de una quincena específica para un trabajador

=cut

sub consultar_nomina_quincena {
  my $self = shift;
  my $cedula = shift;
  my $anio = shift if (@_);
  my $mes = shift if (@_);
  my $semana_quincena = shift if (@_);

  my $personal = $self->find( { cedula => $cedula }, { key => 'personal_cod' } );
  my $pago = $personal->recibos_quincena->search( {
    anio => $anio,
    mes => $mes,
    semana_quincena => $semana_quincena,
  },
  {
    select   => [ \'TO_CHAR(fecha_inicio,\'DD/MM/YYYY\')',
                  \'TO_CHAR(fecha_fin,\'DD/MM/YYYY\')',
                  'anio',
                  'mes',
                  'semana_quincena',
                  'tipopersonal',
                  \'TO_CHAR(ingresoorganismo,\'DD/MM/YYYY\')',
                  'codrac',
                  'nombreunidad',
                  'cedula',
                  'cargo',
                  'primer_apellido || \' \' || COALESCE(segundo_apellido, \'\') || \', \' || primer_nombre || \' \' || COALESCE(segundo_nombre, \'\') AS nombre_completo',
                  'suebas',
                  { sum => 'asigna' },
                  { sum => 'deduce' },
                ],
    as       => [qw/ inicio fin anio mes semana_quincena tipopersonal fecha_ingreso codrac unidad cedula cargo nombre_completo suebas total_asignaciones total_deducciones /],
    group_by => [qw/ fecha_inicio fecha_fin anio mes semana_quincena tipopersonal ingresoorganismo codrac nombreunidad cedula cargo nombre_completo suebas /],
    order_by => { -desc => ['anio', 'mes'] },
  } )->single;

  my $datos = {};
  if ( $pago ) {
    $datos->{ inicio } = $pago->get_column('inicio');
    $datos->{ fin } = $pago->get_column('fin');
    $datos->{ anio } = $pago->get_column('anio');
    $datos->{ mes } = $pago->get_column('mes');
    $datos->{ semana_quincena } = $pago->get_column('semana_quincena');
    $datos->{ tipopersonal } = $pago->get_column('tipopersonal');
    $datos->{ fecha_ingreso } = $pago->get_column('fecha_ingreso');
    $datos->{ codrac } = $pago->get_column('codrac');
    $datos->{ unidad } = $pago->get_column('unidad');
    $datos->{ cedula } = $pago->get_column('cedula');
    $datos->{ cargo } = $pago->get_column('cargo');
    $datos->{ nombre_completo } = $pago->get_column('nombre_completo');
    $datos->{ suebas } = $pago->get_column('suebas');
    $datos->{ total_asignaciones } = $pago->get_column( 'total_asignaciones' );
    $datos->{ total_deducciones } = $pago->get_column( 'total_deducciones' );
    $datos->{ detalles } = $self->consultar_detalle_quincena(
      $personal,
      $pago->get_column('anio'),
      $pago->get_column('mes'),
      $pago->get_column('semana_quincena')
    );
    return $datos;
  }
  else {
    return undef;
  }
}

=head2 consultar_ultimas_bonificaciones

Obtener un listado de las nominas especiales
para un trabajador dado su número de cédula

=cut

sub consultar_ultimas_bonificaciones {
  my $self = shift;
  my $cedula = shift;
  my $page = shift if (@_);

  my $personal = $self->find( { cedula => $cedula }, { key => 'personal_cod' } );
  my $bonificaciones = $personal->recibos_especiales->search( { nomina_especial => { 'LIKE' => '%P%' }  }, {
    select   => [ \'TO_CHAR(fecha_inicio,\'DD/MM/YYYY\')',
                  \'TO_CHAR(fecha_fin,\'DD/MM/YYYY\')',
                  'anio',
                  'mes',
                  'numero_nomina',
                  'nomina_especial',
                  'tipopersonal',
                  \'TO_CHAR(ingresoorganismo,\'DD/MM/YYYY\')',
                  'codrac',
                  'nombreunidad',
                  'cedula',
                  'cargo',
                  'primer_apellido',
                  'segundo_apellido',
                  'primer_nombre',
                  'segundo_nombre',
                  'suebas',
                  { sum => 'asigna' },
                  { sum => 'deduce' },
                ],
    as       => [qw/ inicio fin anio mes numero_nomina nomina_especial tipopersonal fecha_ingreso codrac unidad cedula cargo primer_apellido segundo_apellido primer_nombre segundo_nombre suebas total_asignaciones total_deducciones /],
    group_by => [qw/ fecha_inicio fecha_fin anio mes numero_nomina nomina_especial tipopersonal ingresoorganismo codrac nombreunidad cedula cargo primer_apellido segundo_apellido primer_nombre segundo_nombre suebas /],
    order_by => { -desc => ['anio', 'mes'] },
    page => $page,
    rows => 25,
  } );
  my @resultado;
  while ( my $bono = $bonificaciones->next ) {
    my $descripcion_nomina = $bono->get_column('nomina_especial');
    $descripcion_nomina =~ s/P//;
    my $datos = {};
    $datos->{ inicio } = $bono->get_column('inicio');
    $datos->{ fin } = $bono->get_column('fin');
    $datos->{ anio } = $bono->get_column('anio');
    $datos->{ mes } = $bono->get_column('mes');
    $datos->{ nomina_original } = $bono->get_column('numero_nomina');
    $datos->{ nomina_especial } = $descripcion_nomina;
    $datos->{ tipopersonal } = $bono->get_column('tipopersonal');
    $datos->{ fecha_ingreso } = $bono->get_column('fecha_ingreso');
    $datos->{ codrac } = $bono->get_column('codrac');
    $datos->{ unidad } = $bono->get_column('unidad');
    $datos->{ cedula } = $bono->get_column('cedula');
    $datos->{ cargo } = $bono->get_column('cargo');
    $datos->{ nombre_completo } = $bono->get_column('primer_nombre') . ' ' . $bono->get_column('segundo_nombre') . ' ' . $bono->get_column('primer_apellido') . ' ' . $bono->get_column('segundo_apellido');
    $datos->{ suebas } = $bono->get_column('suebas');
    $datos->{ total_asignaciones } = $bono->get_column( 'total_asignaciones' );
    $datos->{ total_deducciones } = $bono->get_column( 'total_deducciones' );
    push @resultado, $datos;
  }
  return ( \@resultado, $bonificaciones->pager );
}


=head2 consultar_detalle_bonificacion

=cut

sub consultar_detalle_bonificacion {
  my $self = shift;
  my $personal = shift if (@_);
  my $anio = shift if (@_);
  my $mes = shift if (@_);
  my $nomina_especial = shift if (@_);

  my $detalles = $personal->recibos_especiales->search( {
    anio => $anio,
    mes => $mes,
    nomina_especial => $nomina_especial,
  }, {
    columns => [ qw/ codcon descon asigna deduce / ],
    order_by => qw/ codcon /,
  } );

  my @resultado;
  while ( my $detalle = $detalles->next ) {
    my $datos = {};
    $datos->{ codcon } = $detalle->codcon;
    $datos->{ descon } = $detalle->descon;
    $datos->{ asigna } = $detalle->asigna;
    $datos->{ deduce } = $detalle->deduce;
    push @resultado, $datos;
  }
  return \@resultado;
}


=head2 consultar_nomina_bonificacion

Obtener datos completos para recibo de una bonificacion específica para un trabajador

=cut

sub consultar_nomina_bonificacion {
  my $self = shift;
  my $cedula = shift;
  my $anio = shift if (@_);
  my $mes = shift if (@_);
  my $numero_nomina = shift if (@_);


  my $personal = $self->find( { cedula => $cedula }, { key => 'personal_cod' } );
  my $bono = $personal->recibos_especiales->search( {
    anio => $anio,
    mes => $mes,
    numero_nomina => $numero_nomina,
  },
  {
    select   => [ \'TO_CHAR(fecha_inicio,\'DD/MM/YYYY\')',
                  \'TO_CHAR(fecha_fin,\'DD/MM/YYYY\')',
                  'anio',
                  'mes',
                  'numero_nomina',
                  'nomina_especial',
                  'tipopersonal',
                  \'TO_CHAR(ingresoorganismo,\'DD/MM/YYYY\')',
                  'codrac',
                  'nombreunidad',
                  'cedula',
                  'cargo',
                  'primer_apellido || \' \' || COALESCE(segundo_apellido, \'\') || \', \' || primer_nombre || \' \' || COALESCE(segundo_nombre, \'\') AS nombre_completo',
                  'suebas',
                  { sum => 'asigna' },
                  { sum => 'deduce' },
                ],
    as       => [qw/ inicio fin anio mes numero_nomina nomina_especial tipopersonal fecha_ingreso codrac unidad cedula cargo nombre_completo suebas total_asignaciones total_deducciones /],
    group_by => [qw/ fecha_inicio fecha_fin anio mes numero_nomina nomina_especial tipopersonal ingresoorganismo codrac nombreunidad cedula cargo nombre_completo suebas /],
    order_by => { -desc => ['anio', 'mes'] },
  } )->single;

  my $descripcion_nomina = $bono->get_column('nomina_especial');
  $descripcion_nomina =~ s/P//;

  my $datos = {};
  if ( $bono ) {
    $datos->{ inicio } = $bono->get_column('inicio');
    $datos->{ fin } = $bono->get_column('fin');
    $datos->{ anio } = $bono->get_column('anio');
    $datos->{ mes } = $bono->get_column('mes');
    $datos->{ nomina_original } = $bono->get_column('numero_nomina');
    $datos->{ nomina_especial } = $descripcion_nomina;
    $datos->{ tipopersonal } = $bono->get_column('tipopersonal');
    $datos->{ fecha_ingreso } = $bono->get_column('fecha_ingreso');
    $datos->{ codrac } = $bono->get_column('codrac');
    $datos->{ unidad } = $bono->get_column('unidad');
    $datos->{ cedula } = $bono->get_column('cedula');
    $datos->{ cargo } = $bono->get_column('cargo');
    $datos->{ nombre_completo } = $bono->get_column('nombre_completo');
    $datos->{ suebas } = $bono->get_column('suebas');
    $datos->{ total_asignaciones } = $bono->get_column( 'total_asignaciones' );
    $datos->{ total_deducciones } = $bono->get_column( 'total_deducciones' );
    $datos->{ detalles } = $self->consultar_detalle_bonificacion(
      $personal,
      $bono->get_column('anio'),
      $bono->get_column('mes'),
      $bono->get_column('nomina_especial')
    );
    return $datos;
  }
  else {
    return undef;
  }
}

1;
