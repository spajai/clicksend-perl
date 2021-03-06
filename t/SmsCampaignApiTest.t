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

use_ok('WWW::ClickSendClient::SmsCampaignApi');

my $api = WWW::ClickSendClient::SmsCampaignApi->new();
isa_ok($api, 'WWW::ClickSendClient::SmsCampaignApi');

#
# sms_campaign_by_sms_campaign_id_get test
#
{
    my $sms_campaign_id = undef; # replace NULL with a proper value
    my $result = $api->sms_campaign_by_sms_campaign_id_get(sms_campaign_id => $sms_campaign_id);
}

#
# sms_campaigns_by_sms_campaign_id_put test
#
{
    my $sms_campaign_id = undef; # replace NULL with a proper value
    my $campaign = undef; # replace NULL with a proper value
    my $result = $api->sms_campaigns_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id, campaign => $campaign);
}

#
# sms_campaigns_cancel_by_sms_campaign_id_put test
#
{
    my $sms_campaign_id = undef; # replace NULL with a proper value
    my $result = $api->sms_campaigns_cancel_by_sms_campaign_id_put(sms_campaign_id => $sms_campaign_id);
}

#
# sms_campaigns_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->sms_campaigns_get(page => $page, limit => $limit);
}

#
# sms_campaigns_price_post test
#
{
    my $campaign = undef; # replace NULL with a proper value
    my $result = $api->sms_campaigns_price_post(campaign => $campaign);
}

#
# sms_campaigns_send_post test
#
{
    my $campaign = undef; # replace NULL with a proper value
    my $result = $api->sms_campaigns_send_post(campaign => $campaign);
}


1;
