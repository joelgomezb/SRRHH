use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::ARC;

ok( request('/arc')->is_success, 'Request should succeed' );
done_testing();
