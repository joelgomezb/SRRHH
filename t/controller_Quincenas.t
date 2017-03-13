use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Quincenas;

ok( request('/quincenas')->is_success, 'Request should succeed' );
done_testing();
