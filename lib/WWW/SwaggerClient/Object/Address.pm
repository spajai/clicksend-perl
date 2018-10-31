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
package WWW::SwaggerClient::Object::Address;

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


use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Base model for all address-related objects.
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



__PACKAGE__->class_documentation({description => 'Base model for all address-related objects.',
                                  class => 'Address',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'address_name' => {
    	datatype => 'string',
    	base_name => 'address_name',
    	description => 'Your address name.',
    	format => '',
    	read_only => '',
    		},
    'address_line_1' => {
    	datatype => 'string',
    	base_name => 'address_line_1',
    	description => 'Your address line 1',
    	format => '',
    	read_only => '',
    		},
    'address_city' => {
    	datatype => 'string',
    	base_name => 'address_city',
    	description => 'Your city',
    	format => '',
    	read_only => '',
    		},
    'address_postal_code' => {
    	datatype => 'string',
    	base_name => 'address_postal_code',
    	description => 'Your postal code',
    	format => '',
    	read_only => '',
    		},
    'address_country' => {
    	datatype => 'string',
    	base_name => 'address_country',
    	description => 'Your country',
    	format => '',
    	read_only => '',
    		},
    'address_line_2' => {
    	datatype => 'string',
    	base_name => 'address_line_2',
    	description => 'Your address line 2',
    	format => '',
    	read_only => '',
    		},
    'address_state' => {
    	datatype => 'string',
    	base_name => 'address_state',
    	description => 'Your state',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'address_name' => 'string',
    'address_line_1' => 'string',
    'address_city' => 'string',
    'address_postal_code' => 'string',
    'address_country' => 'string',
    'address_line_2' => 'string',
    'address_state' => 'string'
} );

__PACKAGE__->attribute_map( {
    'address_name' => 'address_name',
    'address_line_1' => 'address_line_1',
    'address_city' => 'address_city',
    'address_postal_code' => 'address_postal_code',
    'address_country' => 'address_country',
    'address_line_2' => 'address_line_2',
    'address_state' => 'address_state'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
