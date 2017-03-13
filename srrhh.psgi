use strict;
use warnings;

use SRRHH;

my $app = SRRHH->apply_default_middlewares(SRRHH->psgi_app);
$app;

