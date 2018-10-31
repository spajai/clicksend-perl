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
package WWW::SwaggerClient::InboundFAXRulesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::SwaggerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::SwaggerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# fax_inbound_automation_delete
#
# Delete inbound fax automation
# 
# @param int $inbound_rule_id Inbound rule id (required)
{
    my $params = {
    'inbound_rule_id' => {
        data_type => 'int',
        description => 'Inbound rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_inbound_automation_delete' } = { 
    	summary => 'Delete inbound fax automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_inbound_automation_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'inbound_rule_id' is set
    unless (exists $args{'inbound_rule_id'}) {
      croak("Missing the required parameter 'inbound_rule_id' when calling fax_inbound_automation_delete");
    }

    # parse inputs
    my $_resource_path = '/automations/fax/inbound/{inbound_rule_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'inbound_rule_id'}) {
        my $_base_variable = "{" . "inbound_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'inbound_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# fax_inbound_automation_get
#
# Get specific inbound fax automation
# 
# @param int $inbound_rule_id Inbound rule id (required)
{
    my $params = {
    'inbound_rule_id' => {
        data_type => 'int',
        description => 'Inbound rule id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_inbound_automation_get' } = { 
    	summary => 'Get specific inbound fax automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_inbound_automation_get {
    my ($self, %args) = @_;

    # verify the required parameter 'inbound_rule_id' is set
    unless (exists $args{'inbound_rule_id'}) {
      croak("Missing the required parameter 'inbound_rule_id' when calling fax_inbound_automation_get");
    }

    # parse inputs
    my $_resource_path = '/automations/fax/inbound/{inbound_rule_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'inbound_rule_id'}) {
        my $_base_variable = "{" . "inbound_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'inbound_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# fax_inbound_automation_post
#
# Create new inbound fax automation
# 
# @param InboundFAXRule $inbound_fax_rule Inbound fax rule model (required)
{
    my $params = {
    'inbound_fax_rule' => {
        data_type => 'InboundFAXRule',
        description => 'Inbound fax rule model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_inbound_automation_post' } = { 
    	summary => 'Create new inbound fax automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_inbound_automation_post {
    my ($self, %args) = @_;

    # verify the required parameter 'inbound_fax_rule' is set
    unless (exists $args{'inbound_fax_rule'}) {
      croak("Missing the required parameter 'inbound_fax_rule' when calling fax_inbound_automation_post");
    }

    # parse inputs
    my $_resource_path = '/automations/fax/inbound';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'inbound_fax_rule'}) {
        $_body_data = $args{'inbound_fax_rule'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# fax_inbound_automation_put
#
# Update inbound fax automation
# 
# @param int $inbound_rule_id Inbound rule id (required)
# @param InboundFAXRule $inbound_fax_rule Inbound fax rule model (required)
{
    my $params = {
    'inbound_rule_id' => {
        data_type => 'int',
        description => 'Inbound rule id',
        required => '1',
    },
    'inbound_fax_rule' => {
        data_type => 'InboundFAXRule',
        description => 'Inbound fax rule model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_inbound_automation_put' } = { 
    	summary => 'Update inbound fax automation',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_inbound_automation_put {
    my ($self, %args) = @_;

    # verify the required parameter 'inbound_rule_id' is set
    unless (exists $args{'inbound_rule_id'}) {
      croak("Missing the required parameter 'inbound_rule_id' when calling fax_inbound_automation_put");
    }

    # verify the required parameter 'inbound_fax_rule' is set
    unless (exists $args{'inbound_fax_rule'}) {
      croak("Missing the required parameter 'inbound_fax_rule' when calling fax_inbound_automation_put");
    }

    # parse inputs
    my $_resource_path = '/automations/fax/inbound/{inbound_rule_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'inbound_rule_id'}) {
        my $_base_variable = "{" . "inbound_rule_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'inbound_rule_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'inbound_fax_rule'}) {
        $_body_data = $args{'inbound_fax_rule'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# fax_inbound_automations_get
#
# Get all inbound fax automations
# 
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page number',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Number of records per page',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_inbound_automations_get' } = { 
    	summary => 'Get all inbound fax automations',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_inbound_automations_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/automations/fax/inbound';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

1;
