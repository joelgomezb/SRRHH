use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::CajaAhorro::ReporteCajaAhorro;

ok( request('/cajaahorro/reportecajaahorro')->is_success, 'Request should succeed' );
done_testing();
