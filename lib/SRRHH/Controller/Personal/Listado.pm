package SRRHH::Controller::Personal::Listado;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller::HTML::FormFu'; }

=head1 NAME

SRRHH::Controller::Personal::Listado - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub begin : Private {
	my ( $self, $c ) = @_;

    if ( $c->user->administrador eq 'N' ) { 
       $c->detach( '/access_denied' );
    }
}


sub index :Path :Args(0) :FormConfig {
    my ( $self, $c ) = @_;

	$c->stash->{template} = 'personal/listado.tt2';
}


sub index_FORM_VALID {
	my ( $self, $c ) = @_;


	my $form = $c->stash->{'form'};

	if ( $form->submitted_and_valid ){
		
		my $valores = $c->model("DB::Zlistatrab")->search({} , { bind => [ $form->param_value('anio'), $form->param_value('mes') ]});

		if ( $valores->count > 0 ) {
			my @listado;
			my @datos;

			foreach( $valores->all ){
				@datos = split(',', $_->resultado );
				$datos[0] =~ s/\(//g;
				$datos[1] =~ s/\"//g;
				$datos[2] =~ s/\"//g;
				$datos[3] =~ s/\"//g;
				$datos[4] =~ s/\"//g;
				$datos[5] =~ s/\"//g;
				$datos[8] =~ s/\)//g;
			
				push @listado, {
					cedula 		=> $datos[0],
					trabajador 	=> $datos[1],
					dependencia 	=> $datos[2],
					cargo 		=> $datos[3],
					grado 		=> $datos[4],
					tipopersonal 	=> $datos[5],
					ingreso 	=> $datos[6],
					vacaciones 	=> $datos[7],
					antiguedad 	=> $datos[8]
				   };
			}
		
			$c->stash->{'valores'} = \@listado;
			$c->stash->{'mes'} = $form->param_value('mes');
			$c->stash->{'anio'} = $form->param_value('anio');
			$c->stash->{'template'} = 'personal/lista_personal.tt2';
			$c->stash->{ wrapper } = 'pdf';
			$c->stash->{ current_view } = 'PDFLatex';
			$c->response->content_type('application/pdf');
			$c->response->header('Content-Disposition', "attachment;filename=ListadoPersonal.pdf");
		}else{
			$c->flash->{'error_msg'} = "No hay registros en la base de datos con los parametros seleccionado";
		}
	}
}

=encoding utf8

=head1 AUTHOR

Joel Gomez,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
