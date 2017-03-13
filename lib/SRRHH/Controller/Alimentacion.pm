package SRRHH::Controller::Alimentacion;

use Moose;
use namespace::autoclean;
use utf8;
use Data::Dumper;
use Number::Format;
use DateTime;

BEGIN {extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

reportessigefirrhh::Controller::Alimentacion - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

sub begin : Private {
	my ( $self, $c ) = @_;

    if ( $c->user->administrador eq 'N' ) { 
       $c->detach( '/access_denied' );
    }
}


=head2 index

=cut

sub index :Path :Args(0) :FormConfig {
  my ( $self, $c ) = @_;

  my $form = $c->stash->{ form };

  if ( $form->submitted_and_valid ){
    my $anio = $form->param_value('anio');
    my $mes = $form->param_value('mes');
    my $tipo_fichero = $form->param_value('tipo_fichero');
    #enviar la solicitud al método que corresponda según el tipo de fichero a generar
    if ( $tipo_fichero == 1 ) {
      $c->res->redirect('/alimentacion/seleccion_abono_cuentas/'.$anio.'/'.$mes);
    }  else {
      $c->res->redirect('/alimentacion/solicitud_tarjeta/'.$anio.'/'.$mes);
    }     
  } 
}


=head2 seleccion_empresa_abono_cuenta
 método para generar el archivo de abono mensual de alimentacion
=cut
sub seleccion_empresa_abono_cuenta :Local :FormConfig{
  my ( $self, $c, $anio, $mes ) = @_;

  my $form = $c->stash->{ form };
  $c->stash( { anio => $anio, mes => $mes } );

  if ( $form->submitted_and_valid ) {
    my $empresa = $form->param_value('empresa');
    
    if ( $empresa == 1 ){
      #enviar la solicitud al método seleccion_abono_cuentas
      $c->res->redirect('/alimentacion/seleccion_abono_cuentas/'.$anio.'/'.$mes);
    } else {
      $c->flash->{'error_msg'} = 'Para la empresa seleccionada no existe información';   
    }
  }

}

=head2 seleccion_abono_cuentas
 método para generar el archivo de abono mensual de alimentacion
=cut
sub seleccion_abono_cuentas :Local FormConfig{
  my ( $self, $c, $anio, $mes )= @_;
  
  my $form = $c->stash->{ form };
  $c->stash( { anio => $anio, mes => $mes } );
 
  my $numfor = new Number::Format(THOUSANDS_SEP => '.', DECIMAL_POINT => ',' , DECIMAL_DIGITS => 2, DECIMAL_FILL => 1);

  #obtener los registros correspondientes a la fecha solicitada
  my $registros = $c->model('DB::VAlimentacion')->search( { anio => $anio, mes => $mes },
                                                                        {
                                                                          select => ['id_nomina_especial', 'nomina_especial','id_grupo_nomina','gruponomina', 'anio', 'mes', { sum => 'monto' } ],
                                                                          as => ['id_nomina_especial', 'nomina_especial','id_grupo_nomina','gruponomina', 'anio', 'mes', 'suma' ],
                                                                          group_by => [qw/ id_nomina_especial nomina_especial id_grupo_nomina gruponomina anio mes/],
                                                                          order_by => [qw/id_nomina_especial id_grupo_nomina/]
                                                                        } );
  #enviar datos del registro
  $c->stash->{ registros_abono } = [ $registros->all ];
  $c->stash->{ cantidad_registros } = $registros->count;
  #obtener el elemento simple table del formulario
  my $tabla_nominas = $form->get_all_element({ type => 'SimpleTable', name => 'tabla_nominas'});
  #declarar variable para el arreglo de filas de la tabla y el valor de monto total
  my @filas_nominas;
  my $total_monto;
  #agregar las filas al arreglo
  while ( my $nomina = $registros->next ) {
    my $fila;
    $fila = [      
      {
        type => 'Label', name => 'tipo_persona', label => $nomina->gruponomina,            
      },         
      { 
        type => 'Label', name => 'monto', value => $numfor->format_number($nomina->get_column('suma')),
        attributes => { class => 'sololectura', disabled => 'disabled' }, container_attributes => { align => 'right' } 
      },      
      {
        type => 'Checkbox', name => 'check_'.$nomina->id_nomina_especial.'_'.$nomina->id_grupo_nomina , container_attributes => { align => 'center' }
      }
    ];
    my $total_monto += $nomina->get_column('suma');
    push @filas_nominas, $fila;
  } 
  #definir variable con la fial final de la tabla
  my $fila_final = [    
    {
      type => 'Label', label => 'TOTAL SELECCIONADO' , container_attributes => { align => 'center' }           
    },
    {
      type => 'Label', name => 'total_seleccionado', value => '0,00', 
      attributes => { class => 'sololectura' }, container_attributes => { align => 'right' }                  
    },
    {
      type => 'Label', label => ''
    }
  ];
  #agregar la variable al arreglo de filas de la tabla 
  push @filas_nominas, $fila_final;
  #agregar el arreglo de fials a la simple table
  $tabla_nominas->rows(\@filas_nominas);
  #procesar la solicitud 
  if ( $form->submitted_and_valid ){
    #obtener la fecha del formulario
	my $fecha = $form->param_value('fe_abono');
	$fecha =~ s/-//g;
	#obtener todos los nombres de los checkbox seleccionados
    my @seleccionados = grep ( /^check_/, keys( %{$c->req->params} ) );   
    #declarar arreglo para guradar los id_nomina 
    my @valores_nomina;  
    my @valores_grupo;
    #obtener un arreglo de hashes con el id_nomina y llenar el arreglo de id_nominas
    my @valores;
    foreach my $valor( @seleccionados ){
      #sustraer los primeros 6 caracteres de la cadena con el nombre del chekbox
      my $val_check = substr $valor, 6;
      #obtener en un arreglo los valores separados por el caracter '_'
      my @dato = split /_/,$val_check;
      #poner el primer valor en el arreglo de id_nomina
      push @valores_nomina, $dato[0];     
      push @valores_grupo, $dato[1]; 
    }
    #pasar a strings los datos de nomina y grupo en arrays
    my $valores_nomina = join ('-', @valores_nomina);  
    my $valores_grupo = join ('-', @valores_grupo);  
    #si existen los datos enviar al método correspondientes
    if ( $mes && $anio && length $valores_nomina > 0  && length $valores_grupo > 0 ) {    
      #enviar datos a accion que genera el archivo al banco 
      $c->res->redirect('/alimentacion/generar_fichero_abono/'.$anio.'/'.$mes.'/'.$valores_nomina.'/'.$valores_grupo.'/'.$fecha );    
    }
    else {
      $c->res->redirect('/alimentacion/seleccion_abono_cuentas/'.$anio.'/'.$mes);
      $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado';
    }    
  }
}

=head2 generar_fichero_abono
 método para generar el archivo de abono mensual de alimentacion
=cut
sub generar_fichero_abono :Local {
  my ( $self, $c, $anio, $mes, $valores_nomina, $valores_grupo, $fecha )= @_;

  if ( $anio && $mes && length $valores_nomina > 0  && length $valores_grupo > 0 ) {
    #pasar a un arreglo los datos del string
    my @valores_nomina = split /-/, $valores_nomina;
    my @valores_grupo = split /-/, $valores_grupo;
    #definir arreglo con los datos para el banco
    my @plano;    
    #obtener los registros correspondientes a las condiciones especificadas
    my $registros = $c->model('DB::VAlimentacion')->search( { anio => $anio, 
                                                                            id_grupo_nomina => { 'IN' => \@valores_grupo }, 
                                                                            id_nomina_especial => {'IN' => \@valores_nomina },
                                                                            mes => $mes });    
    
    
    #llenar el arreglo con los datos para el bando 
    while ( my $dato = $registros->next){
      push @plano, $dato->abs;
    }
    my $dt = DateTime->now;

    #enviar datos al stash
    my $monto_total = $registros->get_column('monto')->sum;
    my $total_registros = $registros->count;
#     $c->stash->{ encabezado } = 'Atmccbde900613' . sprintf("%06d", $total_registros) . sprintf("%015d", $monto_total * 100) . $fecha;
    $c->stash->{ 'datos' } = \@plano;
    $c->stash->{ wrapper } = 'layouttexto';
    $c->response->content_type('text/plain; charset=utf-8');
    $c->res->header( 'Content-Disposition' => "attachment;filename=abono_cuenta_".$mes."_".$anio.".txt" );  
  } else {
    $c->flash->{'error_msg'} = 'Faltan datos para obtener el archivo solicitado.';
    $c->res->redirect('/alimentacion/seleccion_abono_cuentas/'.$anio.'/'.$mes);
  }
}


=head2 solicitud_tarjeta
  método para responder a la solicitud de tarjetas de alimentacion
=cut
sub solicitud_tarjeta :Local :FormConfig{
  my ( $self, $c, $anio, $mes ) = @_;

  my $form = $c->stash->{ form };
  
  $c->stash( { anio => $anio, mes => $mes } );

}

=head2 convertir_monto_abs
  método para convertir un monto a la nomencaltura del fichero abs
=cut
sub convertir_monto_abs :Private {
  my ( $self, $c, $monto ) = @_;

  my $cadena;
  my @numero;
  my $j;
  my $a;
  #buscar una coma en el monto
  my $buscar_coma = CORE::index ( $monto, ',' );
  my $buscar_punto = CORE::index ( $monto, '.' );
  #procesar en dependencia de si hay coma o no en el monto
  if ( $buscar_punto != -1 ) {
    $cadena = "$monto"."qwe";
    my $cadena_length = length $cadena;    
    for( $j = 0; $j < 15 - $cadena_length; $j++ ){
      $cadena = "0"."$cadena";
    }
  } else {
    @numero = split ( ".", $monto);
    $cadena = $numero[0].$numero[1];
    my $cadena_length = length $cadena;    
    for( $a = 0; $a < (15 - $cadena_length); $a++ ){
      $cadena = '0'.$cadena;
    }    
  } 
$c->log->info( "este es el monto  ".$monto ); 
$c->log->info( "asi queda la cadena  ".$monto ); 
  return $cadena;  
}

=head2 convertir_cantidad_abs
  método convertir una cantidad de registros a la nomencaltura del fichero abs
=cut
sub convertir_cantidad_abs :Private {
  my ( $self, $c, $cantidad ) = @_;
 
}




=head1 AUTHOR

Elvio Ramon Chavez Gonzalez

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
