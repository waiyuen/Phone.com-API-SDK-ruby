# swagger_client

SwaggerClient - the Ruby gem for the Phone.com API

This is a Phone.com api Swagger definition

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::AccountsApi.new

account_id = 56 # Integer | Account ID


begin
  #Retrieve details of an individual account
  result = api_instance.get_account(account_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phone.com/v4*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /accounts/{account_id} | Retrieve details of an individual account
*SwaggerClient::AccountsApi* | [**list_accounts**](docs/AccountsApi.md#list_accounts) | **GET** /accounts | Get a list of accounts visible to the authenticated user or client
*SwaggerClient::ApplicationsApi* | [**get_account_application**](docs/ApplicationsApi.md#get_account_application) | **GET** /accounts/{account_id}/applications/{application_id} | Show details of an individual application
*SwaggerClient::ApplicationsApi* | [**list_account_applications**](docs/ApplicationsApi.md#list_account_applications) | **GET** /accounts/{account_id}/applications | Get a list of applications you have defined
*SwaggerClient::AvailablenumbersApi* | [**list_available_phone_numbers**](docs/AvailablenumbersApi.md#list_available_phone_numbers) | **GET** /phone-numbers/available | 
*SwaggerClient::CalleridsApi* | [**get_caller_ids**](docs/CalleridsApi.md#get_caller_ids) | **GET** /accounts/{account_id}/extensions/{extension_id}/caller-ids | Show the Caller ID options a given extension can use
*SwaggerClient::CalllogsApi* | [**get_account_call_logs**](docs/CalllogsApi.md#get_account_call_logs) | **GET** /accounts/{account_id}/call-logs/{call_id} | Show details of an individual Call Log entry
*SwaggerClient::CalllogsApi* | [**list_account_call_logs**](docs/CalllogsApi.md#list_account_call_logs) | **GET** /accounts/{account_id}/call-logs | Get a list of call details associated with your account
*SwaggerClient::CallsApi* | [**create_account_call**](docs/CallsApi.md#create_account_call) | **POST** /accounts/{account_id}/calls | Make a phone call
*SwaggerClient::ContactsApi* | [**create_account_extension_contact**](docs/ContactsApi.md#create_account_extension_contact) | **POST** /accounts/{account_id}/extensions/{extension_id}/contacts | Add a new address book contact for an extension
*SwaggerClient::ContactsApi* | [**delete_account_extension_contact**](docs/ContactsApi.md#delete_account_extension_contact) | **DELETE** /accounts/{account_id}/extensions/{extension_id}/contacts/{contact_id} | 
*SwaggerClient::ContactsApi* | [**get_account_extension_contact**](docs/ContactsApi.md#get_account_extension_contact) | **GET** /accounts/{account_id}/extensions/{extension_id}/contacts/{contact_id} | Retrieve the details of an address book contact
*SwaggerClient::ContactsApi* | [**list_account_extension_contacts**](docs/ContactsApi.md#list_account_extension_contacts) | **GET** /accounts/{account_id}/extensions/{extension_id}/contacts | Show a list of address book contacts
*SwaggerClient::ContactsApi* | [**replace_account_extension_contact**](docs/ContactsApi.md#replace_account_extension_contact) | **PUT** /accounts/{account_id}/extensions/{extension_id}/contacts/{contact_id} | 
*SwaggerClient::DefaultApi* | [**ping**](docs/DefaultApi.md#ping) | **GET** /ping | The default API command
*SwaggerClient::DevicesApi* | [**create_account_device**](docs/DevicesApi.md#create_account_device) | **POST** /accounts/{account_id}/devices | Register a generic VoIP device
*SwaggerClient::DevicesApi* | [**get_account_device**](docs/DevicesApi.md#get_account_device) | **GET** /accounts/{account_id}/devices/{device_id} | Show details of an individual VoIP device
*SwaggerClient::DevicesApi* | [**list_account_devices**](docs/DevicesApi.md#list_account_devices) | **GET** /accounts/{account_id}/devices | Get a list of VoIP devices associated with your account
*SwaggerClient::DevicesApi* | [**replace_account_device**](docs/DevicesApi.md#replace_account_device) | **PUT** /accounts/{account_id}/devices/{device_id} | Update the settings for an individual VoIP device
*SwaggerClient::ExpressservicecodesApi* | [**get_account_express_srv_code**](docs/ExpressservicecodesApi.md#get_account_express_srv_code) | **GET** /accounts/{account_id}/express-service-codes/{code_id} | Show details of an account Express Service Code
*SwaggerClient::ExpressservicecodesApi* | [**list_account_express_srv_codes**](docs/ExpressservicecodesApi.md#list_account_express_srv_codes) | **GET** /accounts/{account_id}/express-service-codes | Get the Express Service Code associated with your account in list format
*SwaggerClient::ExtensionsApi* | [**create_account_extension**](docs/ExtensionsApi.md#create_account_extension) | **POST** /accounts/{account_id}/extensions | Create an individual extension
*SwaggerClient::ExtensionsApi* | [**get_account_extension**](docs/ExtensionsApi.md#get_account_extension) | **GET** /accounts/{account_id}/extensions/{extension_id} | Show details of an individual extension
*SwaggerClient::ExtensionsApi* | [**list_account_extensions**](docs/ExtensionsApi.md#list_account_extensions) | **GET** /accounts/{account_id}/extensions | Get a list of extensions visible to the authenticated user or client
*SwaggerClient::ExtensionsApi* | [**replace_account_extension**](docs/ExtensionsApi.md#replace_account_extension) | **PUT** /accounts/{account_id}/extensions/{extension_id} | Replace an individual extension
*SwaggerClient::GroupsApi* | [**create_account_extension_contact_group**](docs/GroupsApi.md#create_account_extension_contact_group) | **POST** /accounts/{account_id}/extensions/{extension_id}/contact-groups | 
*SwaggerClient::GroupsApi* | [**delete_account_extension_contact_group**](docs/GroupsApi.md#delete_account_extension_contact_group) | **DELETE** /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id} | Delete an addressbook group
*SwaggerClient::GroupsApi* | [**get_account_extension_contact_group**](docs/GroupsApi.md#get_account_extension_contact_group) | **GET** /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id} | 
*SwaggerClient::GroupsApi* | [**list_account_extension_contact_groups**](docs/GroupsApi.md#list_account_extension_contact_groups) | **GET** /accounts/{account_id}/extensions/{extension_id}/contact-groups | Show a list of contact groups belonging to an extension
*SwaggerClient::GroupsApi* | [**replace_account_extension_contact_group**](docs/GroupsApi.md#replace_account_extension_contact_group) | **PUT** /accounts/{account_id}/extensions/{extension_id}/contact-groups/{group_id} | 
*SwaggerClient::MediaApi* | [**create_account_media_files**](docs/MediaApi.md#create_account_media_files) | **POST** /accounts/{account_id}/media/files | Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
*SwaggerClient::MediaApi* | [**create_account_media_tts**](docs/MediaApi.md#create_account_media_tts) | **POST** /accounts/{account_id}/media/tts | Add a media object to your account that can be used as a greeting or hold music. Users may create a media by using the built-in Text-to-speech (TTS) facility or upload a file of their choice. (Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB)
*SwaggerClient::MediaApi* | [**delete_account_media**](docs/MediaApi.md#delete_account_media) | **DELETE** /accounts/{account_id}/media/{media_id} | Delete an individual media record
*SwaggerClient::MediaApi* | [**get_account_media**](docs/MediaApi.md#get_account_media) | **GET** /accounts/{account_id}/media/{media_id} | Show details of an individual media recording (Greeting or Hold Music)
*SwaggerClient::MediaApi* | [**list_account_media**](docs/MediaApi.md#list_account_media) | **GET** /accounts/{account_id}/media | Get a list of media recordings for an account
*SwaggerClient::MediaApi* | [**replace_account_media_tts**](docs/MediaApi.md#replace_account_media_tts) | **PUT** /accounts/{account_id}/media/{media_id} | Update a media object to your account. Note: The maximum size for media files or JSON objects included with a POST or PUT request is 10 MB.
*SwaggerClient::MenusApi* | [**create_account_menu**](docs/MenusApi.md#create_account_menu) | **POST** /accounts/{account_id}/menus | Create an individual menu
*SwaggerClient::MenusApi* | [**delete_account_menu**](docs/MenusApi.md#delete_account_menu) | **DELETE** /accounts/{account_id}/menus/{menu_id} | Delete an individual menu
*SwaggerClient::MenusApi* | [**get_account_menu**](docs/MenusApi.md#get_account_menu) | **GET** /accounts/{account_id}/menus/{menu_id} | Show details of an individual menu
*SwaggerClient::MenusApi* | [**list_account_menus**](docs/MenusApi.md#list_account_menus) | **GET** /accounts/{account_id}/menus | Get a list of menus for an account
*SwaggerClient::MenusApi* | [**replace_account_menu**](docs/MenusApi.md#replace_account_menu) | **PUT** /accounts/{account_id}/menus/{menu_id} | Replace an individual menu
*SwaggerClient::NumberregionsApi* | [**list_available_phone_number_regions**](docs/NumberregionsApi.md#list_available_phone_number_regions) | **GET** /phone-numbers/available/regions | 
*SwaggerClient::PhonenumbersApi* | [**create_account_phone_number**](docs/PhonenumbersApi.md#create_account_phone_number) | **POST** /accounts/{account_id}/phone-numbers | Add a phone number to an account
*SwaggerClient::PhonenumbersApi* | [**get_account_phone_number**](docs/PhonenumbersApi.md#get_account_phone_number) | **GET** /accounts/{account_id}/phone-numbers/{number_id} | Show details of an individual phone number
*SwaggerClient::PhonenumbersApi* | [**list_account_phone_numbers**](docs/PhonenumbersApi.md#list_account_phone_numbers) | **GET** /accounts/{account_id}/phone-numbers | Get a list of phone numbers registered to an account
*SwaggerClient::PhonenumbersApi* | [**replace_account_phone_number**](docs/PhonenumbersApi.md#replace_account_phone_number) | **PUT** /accounts/{account_id}/phone-numbers/{number_id} | Update the settings for an existing phone number on your account
*SwaggerClient::QueuesApi* | [**create_account_queue**](docs/QueuesApi.md#create_account_queue) | **POST** /accounts/{account_id}/queues | Create a queue
*SwaggerClient::QueuesApi* | [**delete_account_queue**](docs/QueuesApi.md#delete_account_queue) | **DELETE** /accounts/{account_id}/queues/{queue_id} | Delete a queue
*SwaggerClient::QueuesApi* | [**get_account_queue**](docs/QueuesApi.md#get_account_queue) | **GET** /accounts/{account_id}/queues/{queue_id} | Show details of an individual queue
*SwaggerClient::QueuesApi* | [**list_account_queues**](docs/QueuesApi.md#list_account_queues) | **GET** /accounts/{account_id}/queues | Get a list of queues for an account
*SwaggerClient::QueuesApi* | [**replace_account_queue**](docs/QueuesApi.md#replace_account_queue) | **PUT** /accounts/{account_id}/queues/{queue_id} | Replace a queue
*SwaggerClient::RoutesApi* | [**create_route**](docs/RoutesApi.md#create_route) | **POST** /accounts/{account_id}/routes | Add a new address book contact for an extension
*SwaggerClient::RoutesApi* | [**delete_account_route**](docs/RoutesApi.md#delete_account_route) | **DELETE** /accounts/{account_id}/routes/{route_id} | 
*SwaggerClient::RoutesApi* | [**get_account_route**](docs/RoutesApi.md#get_account_route) | **GET** /accounts/{account_id}/routes/{route_id} | Show details of an individual route
*SwaggerClient::RoutesApi* | [**list_account_routes**](docs/RoutesApi.md#list_account_routes) | **GET** /accounts/{account_id}/routes | Get a list of routes for an account
*SwaggerClient::RoutesApi* | [**replace_account_route**](docs/RoutesApi.md#replace_account_route) | **PUT** /accounts/{account_id}/routes/{route_id} | 
*SwaggerClient::SchedulesApi* | [**get_account_schedule**](docs/SchedulesApi.md#get_account_schedule) | **GET** /accounts/{account_id}/schedules/{schedule_id} | Show details of an individual schedule
*SwaggerClient::SchedulesApi* | [**list_account_schedules**](docs/SchedulesApi.md#list_account_schedules) | **GET** /accounts/{account_id}/schedules | Get a list of schedules for an account
*SwaggerClient::SmsApi* | [**create_account_sms**](docs/SmsApi.md#create_account_sms) | **POST** /accounts/{account_id}/sms | Send a SMS to one or a group of recipients
*SwaggerClient::SmsApi* | [**get_account_sms**](docs/SmsApi.md#get_account_sms) | **GET** /accounts/{account_id}/sms/{sms_id} | Show details of an individual SMS
*SwaggerClient::SmsApi* | [**list_account_sms**](docs/SmsApi.md#list_account_sms) | **GET** /accounts/{account_id}/sms | Get a list of SMS messages for an account
*SwaggerClient::SubaccountsApi* | [**create_account_subaccount**](docs/SubaccountsApi.md#create_account_subaccount) | **POST** /accounts/{account_id}/subaccounts | Add a subaccount for the authenticated user or client
*SwaggerClient::SubaccountsApi* | [**list_account_subaccounts**](docs/SubaccountsApi.md#list_account_subaccounts) | **GET** /accounts/{account_id}/subaccounts | Get a list of subaccounts for the authenticated user or client
*SwaggerClient::TrunksApi* | [**create_account_trunk**](docs/TrunksApi.md#create_account_trunk) | **POST** /accounts/{account_id}/trunks | Add a trunk record with SIP information
*SwaggerClient::TrunksApi* | [**delete_account_trunk**](docs/TrunksApi.md#delete_account_trunk) | **DELETE** /accounts/{account_id}/trunks/{trunk_id} | Delete a trunk from account
*SwaggerClient::TrunksApi* | [**get_account_trunk**](docs/TrunksApi.md#get_account_trunk) | **GET** /accounts/{account_id}/trunks/{trunk_id} | Show details of an individual trunk
*SwaggerClient::TrunksApi* | [**list_account_trunks**](docs/TrunksApi.md#list_account_trunks) | **GET** /accounts/{account_id}/trunks | Get a list of trunks for an account
*SwaggerClient::TrunksApi* | [**replace_account_trunk**](docs/TrunksApi.md#replace_account_trunk) | **PUT** /accounts/{account_id}/trunks/{trunk_id} | Replace parameters in a trunk


## Documentation for Models

 - [SwaggerClient::AccountFull](docs/AccountFull.md)
 - [SwaggerClient::AccountSummary](docs/AccountSummary.md)
 - [SwaggerClient::Address](docs/Address.md)
 - [SwaggerClient::AddressListContacts](docs/AddressListContacts.md)
 - [SwaggerClient::ApplicationFull](docs/ApplicationFull.md)
 - [SwaggerClient::ApplicationSummary](docs/ApplicationSummary.md)
 - [SwaggerClient::AvailableNumbersFull](docs/AvailableNumbersFull.md)
 - [SwaggerClient::CallDetails](docs/CallDetails.md)
 - [SwaggerClient::CallFull](docs/CallFull.md)
 - [SwaggerClient::CallLogFull](docs/CallLogFull.md)
 - [SwaggerClient::CallNotifications](docs/CallNotifications.md)
 - [SwaggerClient::CallerIdFull](docs/CallerIdFull.md)
 - [SwaggerClient::CallerIdPhoneNumber](docs/CallerIdPhoneNumber.md)
 - [SwaggerClient::ContactAccount](docs/ContactAccount.md)
 - [SwaggerClient::ContactFull](docs/ContactFull.md)
 - [SwaggerClient::ContactSubaccount](docs/ContactSubaccount.md)
 - [SwaggerClient::ContactSummary](docs/ContactSummary.md)
 - [SwaggerClient::CreateCallParams](docs/CreateCallParams.md)
 - [SwaggerClient::CreateContactParams](docs/CreateContactParams.md)
 - [SwaggerClient::CreateDeviceParams](docs/CreateDeviceParams.md)
 - [SwaggerClient::CreateExtensionParams](docs/CreateExtensionParams.md)
 - [SwaggerClient::CreateGroupParams](docs/CreateGroupParams.md)
 - [SwaggerClient::CreateMediaParams](docs/CreateMediaParams.md)
 - [SwaggerClient::CreateMenuParams](docs/CreateMenuParams.md)
 - [SwaggerClient::CreatePhoneNumberParams](docs/CreatePhoneNumberParams.md)
 - [SwaggerClient::CreateQueueParams](docs/CreateQueueParams.md)
 - [SwaggerClient::CreateRouteParams](docs/CreateRouteParams.md)
 - [SwaggerClient::CreateSmsParams](docs/CreateSmsParams.md)
 - [SwaggerClient::CreateSubaccountParams](docs/CreateSubaccountParams.md)
 - [SwaggerClient::CreateTrunkParams](docs/CreateTrunkParams.md)
 - [SwaggerClient::DeleteContact](docs/DeleteContact.md)
 - [SwaggerClient::DeleteGroup](docs/DeleteGroup.md)
 - [SwaggerClient::DeleteMedia](docs/DeleteMedia.md)
 - [SwaggerClient::DeleteMenu](docs/DeleteMenu.md)
 - [SwaggerClient::DeleteQueue](docs/DeleteQueue.md)
 - [SwaggerClient::DeleteRoute](docs/DeleteRoute.md)
 - [SwaggerClient::DeleteTrunk](docs/DeleteTrunk.md)
 - [SwaggerClient::DeviceFull](docs/DeviceFull.md)
 - [SwaggerClient::DeviceMembership](docs/DeviceMembership.md)
 - [SwaggerClient::DeviceSummary](docs/DeviceSummary.md)
 - [SwaggerClient::Email](docs/Email.md)
 - [SwaggerClient::ExpressServiceCodeFull](docs/ExpressServiceCodeFull.md)
 - [SwaggerClient::ExtensionFull](docs/ExtensionFull.md)
 - [SwaggerClient::ExtensionSummary](docs/ExtensionSummary.md)
 - [SwaggerClient::FilterCallLogs](docs/FilterCallLogs.md)
 - [SwaggerClient::FilterIdArray](docs/FilterIdArray.md)
 - [SwaggerClient::FilterIdDirectionFrom](docs/FilterIdDirectionFrom.md)
 - [SwaggerClient::FilterIdExtensionNameArray](docs/FilterIdExtensionNameArray.md)
 - [SwaggerClient::FilterIdGroupIdUpdatedAtArray](docs/FilterIdGroupIdUpdatedAtArray.md)
 - [SwaggerClient::FilterIdNameArray](docs/FilterIdNameArray.md)
 - [SwaggerClient::FilterIdNamePhoneNumberArray](docs/FilterIdNamePhoneNumberArray.md)
 - [SwaggerClient::FilterListAvailableNumbers](docs/FilterListAvailableNumbers.md)
 - [SwaggerClient::FilterListPhoneNumbersRegions](docs/FilterListPhoneNumbersRegions.md)
 - [SwaggerClient::FilterNameNumberArray](docs/FilterNameNumberArray.md)
 - [SwaggerClient::Greeting](docs/Greeting.md)
 - [SwaggerClient::GroupFull](docs/GroupFull.md)
 - [SwaggerClient::GroupListContacts](docs/GroupListContacts.md)
 - [SwaggerClient::GroupSummary](docs/GroupSummary.md)
 - [SwaggerClient::HoldMusic](docs/HoldMusic.md)
 - [SwaggerClient::Line](docs/Line.md)
 - [SwaggerClient::ListAccounts](docs/ListAccounts.md)
 - [SwaggerClient::ListApplications](docs/ListApplications.md)
 - [SwaggerClient::ListAvailableNumbers](docs/ListAvailableNumbers.md)
 - [SwaggerClient::ListCallLogs](docs/ListCallLogs.md)
 - [SwaggerClient::ListCallerIds](docs/ListCallerIds.md)
 - [SwaggerClient::ListContacts](docs/ListContacts.md)
 - [SwaggerClient::ListDevices](docs/ListDevices.md)
 - [SwaggerClient::ListExpressServiceCodes](docs/ListExpressServiceCodes.md)
 - [SwaggerClient::ListExtensions](docs/ListExtensions.md)
 - [SwaggerClient::ListGroups](docs/ListGroups.md)
 - [SwaggerClient::ListMedia](docs/ListMedia.md)
 - [SwaggerClient::ListMenus](docs/ListMenus.md)
 - [SwaggerClient::ListPhoneNumbers](docs/ListPhoneNumbers.md)
 - [SwaggerClient::ListPhoneNumbersRegions](docs/ListPhoneNumbersRegions.md)
 - [SwaggerClient::ListQueues](docs/ListQueues.md)
 - [SwaggerClient::ListRoutes](docs/ListRoutes.md)
 - [SwaggerClient::ListSchedules](docs/ListSchedules.md)
 - [SwaggerClient::ListSms](docs/ListSms.md)
 - [SwaggerClient::ListTrunks](docs/ListTrunks.md)
 - [SwaggerClient::MediaFull](docs/MediaFull.md)
 - [SwaggerClient::MediaSummary](docs/MediaSummary.md)
 - [SwaggerClient::Member](docs/Member.md)
 - [SwaggerClient::MenuFull](docs/MenuFull.md)
 - [SwaggerClient::MenuSummary](docs/MenuSummary.md)
 - [SwaggerClient::Notification](docs/Notification.md)
 - [SwaggerClient::Option](docs/Option.md)
 - [SwaggerClient::PhoneNumberContact](docs/PhoneNumberContact.md)
 - [SwaggerClient::PhoneNumberFull](docs/PhoneNumberFull.md)
 - [SwaggerClient::PhoneNumbersRegionFull](docs/PhoneNumbersRegionFull.md)
 - [SwaggerClient::PingResponse](docs/PingResponse.md)
 - [SwaggerClient::QueueFull](docs/QueueFull.md)
 - [SwaggerClient::QueueSummary](docs/QueueSummary.md)
 - [SwaggerClient::Recipient](docs/Recipient.md)
 - [SwaggerClient::ReplaceExtensionParams](docs/ReplaceExtensionParams.md)
 - [SwaggerClient::ReplaceMenuParams](docs/ReplaceMenuParams.md)
 - [SwaggerClient::ReplacePhoneNumberParams](docs/ReplacePhoneNumberParams.md)
 - [SwaggerClient::RouteFull](docs/RouteFull.md)
 - [SwaggerClient::RouteSummary](docs/RouteSummary.md)
 - [SwaggerClient::RuleSet](docs/RuleSet.md)
 - [SwaggerClient::RuleSetAction](docs/RuleSetAction.md)
 - [SwaggerClient::RuleSetFilter](docs/RuleSetFilter.md)
 - [SwaggerClient::RuleSetForwardItem](docs/RuleSetForwardItem.md)
 - [SwaggerClient::ScheduleFull](docs/ScheduleFull.md)
 - [SwaggerClient::ScheduleSummary](docs/ScheduleSummary.md)
 - [SwaggerClient::SipAuthentication](docs/SipAuthentication.md)
 - [SwaggerClient::SmsForwarding](docs/SmsForwarding.md)
 - [SwaggerClient::SmsFull](docs/SmsFull.md)
 - [SwaggerClient::SortCallLogs](docs/SortCallLogs.md)
 - [SwaggerClient::SortId](docs/SortId.md)
 - [SwaggerClient::SortIdCreatedAt](docs/SortIdCreatedAt.md)
 - [SwaggerClient::SortIdExtensionName](docs/SortIdExtensionName.md)
 - [SwaggerClient::SortIdName](docs/SortIdName.md)
 - [SwaggerClient::SortIdNamePhoneNumber](docs/SortIdNamePhoneNumber.md)
 - [SwaggerClient::SortIdUpdatedAt](docs/SortIdUpdatedAt.md)
 - [SwaggerClient::SortListAvailableNumbers](docs/SortListAvailableNumbers.md)
 - [SwaggerClient::SortListPhoneNumbersRegions](docs/SortListPhoneNumbersRegions.md)
 - [SwaggerClient::SortNameNumber](docs/SortNameNumber.md)
 - [SwaggerClient::TrunkFull](docs/TrunkFull.md)
 - [SwaggerClient::TrunkSummary](docs/TrunkSummary.md)
 - [SwaggerClient::Voicemail](docs/Voicemail.md)


## Documentation for Authorization


### apiKey

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

