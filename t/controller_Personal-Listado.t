use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Personal::Listado;

ok( request('/personal/listado')->is_success, 'Request should succeed' );
done_testing();
