package SRRHH::View::TT;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config({
    INCLUDE_PATH => [
        SRRHH->path_to( 'root', 'src' ),
        SRRHH->path_to( 'root', 'lib' )
    ],
    PRE_PROCESS  => 'config/main',
    WRAPPER      => 'site/wrapper',
    ERROR        => 'error.tt2',
    TIMER        => 0,
    render_die   => 1,
	TEMPLATE_EXTENSION   => '.tt2',
    CATALYST_VAR  => 'Catalyst',
    ENCODING => 'UTF-8',
});

=head1 NAME

SRRHH::View::TT - Catalyst TTSite View

=head1 SYNOPSIS

See L<SRRHH>

=head1 DESCRIPTION

Catalyst TTSite View.

=head1 AUTHOR

Joel Gomez,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

