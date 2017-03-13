use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SRRHH';
use SRRHH::Controller::Fideicomiso::ReporteFideicomiso;

ok( request('/fideicomiso/reportefideicomiso')->is_success, 'Request should succeed' );
done_testing();
