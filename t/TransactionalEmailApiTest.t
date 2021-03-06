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

use_ok('WWW::ClickSendClient::TransactionalEmailApi');

my $api = WWW::ClickSendClient::TransactionalEmailApi->new();
isa_ok($api, 'WWW::ClickSendClient::TransactionalEmailApi');

#
# email_history_export_get test
#
{
    my $filename = undef; # replace NULL with a proper value
    my $date_from = undef; # replace NULL with a proper value
    my $date_to = undef; # replace NULL with a proper value
    my $result = $api->email_history_export_get(filename => $filename, date_from => $date_from, date_to => $date_to);
}

#
# email_history_get test
#
{
    my $date_from = undef; # replace NULL with a proper value
    my $date_to = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->email_history_get(date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
}

#
# email_price_post test
#
{
    my $email = undef; # replace NULL with a proper value
    my $result = $api->email_price_post(email => $email);
}

#
# email_send_post test
#
{
    my $email = undef; # replace NULL with a proper value
    my $result = $api->email_send_post(email => $email);
}


1;
