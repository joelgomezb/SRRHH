package SRRHH::Schema::Result::Zgenero;
use strict;
use warnings;
use utf8;
use base qw/DBIx::Class::Core/;

__PACKAGE__->table_class('DBIx::Class::ResultSource::View');

# For the time being this is necessary even for virtual views
__PACKAGE__->table('trabajador');

# #
# # ->add_columns, etc.
# #
#
# # do not attempt to deploy() this view
__PACKAGE__->result_source_instance->is_virtual(1);

__PACKAGE__->add_columns(
   "resultado",
     { data_type => "text", is_nullable => 1 },
     );

__PACKAGE__->result_source_instance->view_definition(q[
	       SELECT zgenero () as resultado
]);

1;
