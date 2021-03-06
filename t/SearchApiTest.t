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

use_ok('WWW::ClickSendClient::SearchApi');

my $api = WWW::ClickSendClient::SearchApi->new();
isa_ok($api, 'WWW::ClickSendClient::SearchApi');

#
# search_contacts_lists_get test
#
{
    my $q = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->search_contacts_lists_get(q => $q, page => $page, limit => $limit);
}


1;
