use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Bonificaciones;

ok( request('/bonificaciones')->is_success, 'Request should succeed' );
done_testing();
