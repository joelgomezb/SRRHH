use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Fideicomiso;

ok( request('/fideicomiso')->is_success, 'Request should succeed' );
done_testing();
