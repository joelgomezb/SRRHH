use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Nomina;

ok( request('/nomina')->is_success, 'Request should succeed' );
done_testing();
