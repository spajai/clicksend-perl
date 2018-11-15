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
package WWW::ClickSendClient::AccountApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::ClickSendClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::ClickSendClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::ClickSendClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# account_get
#
# Get account information
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'account_get' } = { 
    	summary => 'Get account information',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/account';

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
# account_post
#
# Create a new account
# 
# @param Account $account Account model (required)
{
    my $params = {
    'account' => {
        data_type => 'Account',
        description => 'Account model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_post' } = { 
    	summary => 'Create a new account',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_post {
    my ($self, %args) = @_;

    # verify the required parameter 'account' is set
    unless (exists $args{'account'}) {
      croak("Missing the required parameter 'account' when calling account_post");
    }

    # parse inputs
    my $_resource_path = '/account';

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
    if ( exists $args{'account'}) {
        $_body_data = $args{'account'};
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
# account_verify_send_put
#
# Send account activation token
# 
# @param AccountVerify $account_verify Account details (required)
{
    my $params = {
    'account_verify' => {
        data_type => 'AccountVerify',
        description => 'Account details',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_verify_send_put' } = { 
    	summary => 'Send account activation token',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_verify_send_put {
    my ($self, %args) = @_;

    # verify the required parameter 'account_verify' is set
    unless (exists $args{'account_verify'}) {
      croak("Missing the required parameter 'account_verify' when calling account_verify_send_put");
    }

    # parse inputs
    my $_resource_path = '/account-verify/send';

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

    my $_body_data;
    # body params
    if ( exists $args{'account_verify'}) {
        $_body_data = $args{'account_verify'};
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
# account_verify_verify_by_activation_token_put
#
# Verify new account
# 
# @param int $activation_token  (required)
{
    my $params = {
    'activation_token' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_verify_verify_by_activation_token_put' } = { 
    	summary => 'Verify new account',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_verify_verify_by_activation_token_put {
    my ($self, %args) = @_;

    # verify the required parameter 'activation_token' is set
    unless (exists $args{'activation_token'}) {
      croak("Missing the required parameter 'activation_token' when calling account_verify_verify_by_activation_token_put");
    }

    # parse inputs
    my $_resource_path = '/account-verify/verify/{activation_token}';

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
    if ( exists $args{'activation_token'}) {
        my $_base_variable = "{" . "activation_token" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'activation_token'});
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
# forgot_password_put
#
# Forgot password
# 
# @param string $username Username belonging to account (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'Username belonging to account',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_password_put' } = { 
    	summary => 'Forgot password',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_password_put {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling forgot_password_put");
    }

    # parse inputs
    my $_resource_path = '/forgot-password';

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

    my $_body_data;
    # body params
    if ( exists $args{'username'}) {
        $_body_data = $args{'username'};
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
# forgot_password_verify_put
#
# Verify forgot password
# 
# @param AccountForgotPasswordVerify $verify_password verifyPassword data (required)
{
    my $params = {
    'verify_password' => {
        data_type => 'AccountForgotPasswordVerify',
        description => 'verifyPassword data',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_password_verify_put' } = { 
    	summary => 'Verify forgot password',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_password_verify_put {
    my ($self, %args) = @_;

    # verify the required parameter 'verify_password' is set
    unless (exists $args{'verify_password'}) {
      croak("Missing the required parameter 'verify_password' when calling forgot_password_verify_put");
    }

    # parse inputs
    my $_resource_path = '/forgot-password/verify';

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

    my $_body_data;
    # body params
    if ( exists $args{'verify_password'}) {
        $_body_data = $args{'verify_password'};
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
# forgot_username_put
#
# Forgot username
# 
# @param string $email Email belonging to account (required)
{
    my $params = {
    'email' => {
        data_type => 'string',
        description => 'Email belonging to account',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_username_put' } = { 
    	summary => 'Forgot username',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_username_put {
    my ($self, %args) = @_;

    # verify the required parameter 'email' is set
    unless (exists $args{'email'}) {
      croak("Missing the required parameter 'email' when calling forgot_username_put");
    }

    # parse inputs
    my $_resource_path = '/forgot-username';

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

    my $_body_data;
    # body params
    if ( exists $args{'email'}) {
        $_body_data = $args{'email'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

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