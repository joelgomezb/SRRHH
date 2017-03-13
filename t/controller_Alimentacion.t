use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Alimentacion;

ok( request('/alimentacion')->is_success, 'Request should succeed' );
done_testing();
