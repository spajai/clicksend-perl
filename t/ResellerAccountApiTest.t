=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::ResellerAccountApi');

my $api = WWW::SwaggerClient::ResellerAccountApi->new();
isa_ok($api, 'WWW::SwaggerClient::ResellerAccountApi');

#
# reseller_accounts_by_client_user_id_get test
#
{
    my $client_user_id = undef; # replace NULL with a proper value
    my $result = $api->reseller_accounts_by_client_user_id_get(client_user_id => $client_user_id);
}

#
# reseller_accounts_by_client_user_id_put test
#
{
    my $client_user_id = undef; # replace NULL with a proper value
    my $reseller_account = undef; # replace NULL with a proper value
    my $result = $api->reseller_accounts_by_client_user_id_put(client_user_id => $client_user_id, reseller_account => $reseller_account);
}

#
# reseller_accounts_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->reseller_accounts_get(page => $page, limit => $limit);
}

#
# reseller_accounts_post test
#
{
    my $reseller_account = undef; # replace NULL with a proper value
    my $result = $api->reseller_accounts_post(reseller_account => $reseller_account);
}


1;
