use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::SolicitudConstancia;

ok( request('/solicitudconstancia')->is_success, 'Request should succeed' );
done_testing();
