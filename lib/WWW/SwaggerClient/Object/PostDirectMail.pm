=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::PostDirectMail;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::SwaggerClient::Object::PostDirectMailArea;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Post direct mail model
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Post direct mail model',
                                  class => 'PostDirectMail',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'Campaign name',
    	format => '',
    	read_only => '',
    		},
    'file_urls' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'file_urls',
    	description => 'Campaign file URLs (maximum 2)',
    	format => '',
    	read_only => '',
    		},
    'size' => {
    	datatype => 'string',
    	base_name => 'size',
    	description => 'Document size - A5 or DL',
    	format => '',
    	read_only => '',
    		},
    'areas' => {
    	datatype => 'ARRAY[PostDirectMailArea]',
    	base_name => 'areas',
    	description => 'PostDirectMailArea model',
    	format => '',
    	read_only => '',
    		},
    'schedule' => {
    	datatype => 'int',
    	base_name => 'schedule',
    	description => 'Leave blank for immediate delivery. Your schedule time in unix format.',
    	format => '',
    	read_only => '',
    		},
    'source' => {
    	datatype => 'string',
    	base_name => 'source',
    	description => 'Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;.',
    	format => '',
    	read_only => '',
    		},
    'custom_string' => {
    	datatype => 'string',
    	base_name => 'custom_string',
    	description => 'A custom string for your own reference',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'name' => 'string',
    'file_urls' => 'ARRAY[string]',
    'size' => 'string',
    'areas' => 'ARRAY[PostDirectMailArea]',
    'schedule' => 'int',
    'source' => 'string',
    'custom_string' => 'string'
} );

__PACKAGE__->attribute_map( {
    'name' => 'name',
    'file_urls' => 'file_urls',
    'size' => 'size',
    'areas' => 'areas',
    'schedule' => 'schedule',
    'source' => 'source',
    'custom_string' => 'custom_string'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
