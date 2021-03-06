=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by ClickSend Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::ClickSendClient::AccountApi');

my $api = WWW::ClickSendClient::AccountApi->new();
isa_ok($api, 'WWW::ClickSendClient::AccountApi');

#
# account_get test
#
{
    my $result = $api->account_get();
}

#
# account_post test
#
{
    my $account = undef; # replace NULL with a proper value
    my $result = $api->account_post(account => $account);
}

#
# account_verify_send_put test
#
{
    my $account_verify = undef; # replace NULL with a proper value
    my $result = $api->account_verify_send_put(account_verify => $account_verify);
}

#
# account_verify_verify_by_activation_token_put test
#
{
    my $activation_token = undef; # replace NULL with a proper value
    my $result = $api->account_verify_verify_by_activation_token_put(activation_token => $activation_token);
}

#
# forgot_password_put test
#
{
    my $username = undef; # replace NULL with a proper value
    my $result = $api->forgot_password_put(username => $username);
}

#
# forgot_password_verify_put test
#
{
    my $verify_password = undef; # replace NULL with a proper value
    my $result = $api->forgot_password_verify_put(verify_password => $verify_password);
}

#
# forgot_username_put test
#
{
    my $email = undef; # replace NULL with a proper value
    my $result = $api->forgot_username_put(email => $email);
}


1;
