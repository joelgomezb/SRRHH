use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Aportes;

ok( request('/aportes')->is_success, 'Request should succeed' );
done_testing();
