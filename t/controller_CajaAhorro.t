use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::CajaAhorro;

ok( request('/cajaahorro')->is_success, 'Request should succeed' );
done_testing();
