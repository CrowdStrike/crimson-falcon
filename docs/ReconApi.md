# Falcon::ReconApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_notifications_exposed_data_records_v1**](ReconApi.md#aggregate_notifications_exposed_data_records_v1) | **POST** /recon/aggregates/notifications-exposed-data-records/GET/v1 | Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name] |
| [**aggregate_notifications_v1**](ReconApi.md#aggregate_notifications_v1) | **POST** /recon/aggregates/notifications/GET/v1 | Get notification aggregates as specified via JSON in request body. |
| [**create_actions_v1**](ReconApi.md#create_actions_v1) | **POST** /recon/entities/actions/v1 | Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule. |
| [**create_export_jobs_v1**](ReconApi.md#create_export_jobs_v1) | **POST** /recon/entities/exports/v1 | Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1. |
| [**create_rules_v1**](ReconApi.md#create_rules_v1) | **POST** /recon/entities/rules/v1 | Create monitoring rules. |
| [**delete_action_v1**](ReconApi.md#delete_action_v1) | **DELETE** /recon/entities/actions/v1 | Delete an action from a monitoring rule based on the action ID. |
| [**delete_export_jobs_v1**](ReconApi.md#delete_export_jobs_v1) | **DELETE** /recon/entities/exports/v1 | Delete export jobs (and their associated file(s)) based on their IDs. |
| [**delete_notifications_v1**](ReconApi.md#delete_notifications_v1) | **DELETE** /recon/entities/notifications/v1 | Delete notifications based on IDs. Notifications cannot be recovered after they are deleted. |
| [**delete_rules_v1**](ReconApi.md#delete_rules_v1) | **DELETE** /recon/entities/rules/v1 | Delete monitoring rules. |
| [**get_actions_v1**](ReconApi.md#get_actions_v1) | **GET** /recon/entities/actions/v1 | Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint. |
| [**get_export_jobs_v1**](ReconApi.md#get_export_jobs_v1) | **GET** /recon/entities/exports/v1 | Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1. |
| [**get_file_content_for_export_jobs_v1**](ReconApi.md#get_file_content_for_export_jobs_v1) | **GET** /recon/entities/export-files/v1 | Download the file associated with a job ID. |
| [**get_notifications_detailed_translated_v1**](ReconApi.md#get_notifications_detailed_translated_v1) | **GET** /recon/entities/notifications-detailed-translated/v1 | Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request |
| [**get_notifications_detailed_v1**](ReconApi.md#get_notifications_detailed_v1) | **GET** /recon/entities/notifications-detailed/v1 | Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match. |
| [**get_notifications_exposed_data_records_v1**](ReconApi.md#get_notifications_exposed_data_records_v1) | **GET** /recon/entities/notifications-exposed-data-records/v1 | Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints |
| [**get_notifications_translated_v1**](ReconApi.md#get_notifications_translated_v1) | **GET** /recon/entities/notifications-translated/v1 | Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English. |
| [**get_notifications_v1**](ReconApi.md#get_notifications_v1) | **GET** /recon/entities/notifications/v1 | Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. |
| [**get_rules_v1**](ReconApi.md#get_rules_v1) | **GET** /recon/entities/rules/v1 | Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint. |
| [**preview_rule_v1**](ReconApi.md#preview_rule_v1) | **POST** /recon/aggregates/rules-preview/GET/v1 | Preview rules notification count and distribution. This will return aggregations on: channel, count, site. |
| [**query_actions_v1**](ReconApi.md#query_actions_v1) | **GET** /recon/queries/actions/v1 | Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1. |
| [**query_notifications_exposed_data_records_v1**](ReconApi.md#query_notifications_exposed_data_records_v1) | **GET** /recon/queries/notifications-exposed-data-records/v1 | Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1 |
| [**query_notifications_v1**](ReconApi.md#query_notifications_v1) | **GET** /recon/queries/notifications/v1 | Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1. |
| [**query_rules_v1**](ReconApi.md#query_rules_v1) | **GET** /recon/queries/rules/v1 | Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1. |
| [**update_action_v1**](ReconApi.md#update_action_v1) | **PATCH** /recon/entities/actions/v1 | Update an action for a monitoring rule. |
| [**update_notifications_v1**](ReconApi.md#update_notifications_v1) | **PATCH** /recon/entities/notifications/v1 | Update notification status or assignee. Accepts bulk requests |
| [**update_rules_v1**](ReconApi.md#update_rules_v1) | **PATCH** /recon/entities/rules/v1 | Update monitoring rules. |


## aggregate_notifications_exposed_data_records_v1

> <DomainAggregatesResponse> aggregate_notifications_exposed_data_records_v1(body)

Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name]

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name]
  result = api_instance.aggregate_notifications_exposed_data_records_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->aggregate_notifications_exposed_data_records_v1: #{e}"
end
```

#### Using the aggregate_notifications_exposed_data_records_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregatesResponse>, Integer, Hash)> aggregate_notifications_exposed_data_records_v1_with_http_info(body)

```ruby
begin
  # Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name]
  data, status_code, headers = api_instance.aggregate_notifications_exposed_data_records_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->aggregate_notifications_exposed_data_records_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**DomainAggregatesResponse**](DomainAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## aggregate_notifications_v1

> <DomainAggregatesResponse> aggregate_notifications_v1(body)

Get notification aggregates as specified via JSON in request body.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get notification aggregates as specified via JSON in request body.
  result = api_instance.aggregate_notifications_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->aggregate_notifications_v1: #{e}"
end
```

#### Using the aggregate_notifications_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregatesResponse>, Integer, Hash)> aggregate_notifications_v1_with_http_info(body)

```ruby
begin
  # Get notification aggregates as specified via JSON in request body.
  data, status_code, headers = api_instance.aggregate_notifications_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->aggregate_notifications_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**DomainAggregatesResponse**](DomainAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_actions_v1

> <DomainActionEntitiesResponseV1> create_actions_v1(body)

Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = Falcon::DomainRegisterActionsRequest.new({actions: [Falcon::DomainCreateActionRequest.new({content_format: 'content_format_example', frequency: 'frequency_example', recipients: ['recipients_example'], trigger_matchless: false, type: 'type_example'})], rule_id: 'rule_id_example'}) # DomainRegisterActionsRequest | 

begin
  # Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.
  result = api_instance.create_actions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_actions_v1: #{e}"
end
```

#### Using the create_actions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainActionEntitiesResponseV1>, Integer, Hash)> create_actions_v1_with_http_info(body)

```ruby
begin
  # Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.
  data, status_code, headers = api_instance.create_actions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainActionEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_actions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainRegisterActionsRequest**](DomainRegisterActionsRequest.md) |  |  |

### Return type

[**DomainActionEntitiesResponseV1**](DomainActionEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_export_jobs_v1

> <DomainLaunchExportJobResponseV1> create_export_jobs_v1(body)

Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::DomainLaunchExportJobRequestV1.new({entity: 'entity_example', export_type: 'export_type_example', filter: 'filter_example', human_readable: false})] # Array<DomainLaunchExportJobRequestV1> | 

begin
  # Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.
  result = api_instance.create_export_jobs_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_export_jobs_v1: #{e}"
end
```

#### Using the create_export_jobs_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainLaunchExportJobResponseV1>, Integer, Hash)> create_export_jobs_v1_with_http_info(body)

```ruby
begin
  # Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.
  data, status_code, headers = api_instance.create_export_jobs_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainLaunchExportJobResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_export_jobs_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DomainLaunchExportJobRequestV1&gt;**](DomainLaunchExportJobRequestV1.md) |  |  |

### Return type

[**DomainLaunchExportJobResponseV1**](DomainLaunchExportJobResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rules_v1

> <DomainRulesEntitiesResponseV1> create_rules_v1(body)

Create monitoring rules.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::SadomainCreateRuleRequestV1.new({breach_monitoring_enabled: false, filter: 'filter_example', name: 'name_example', permissions: 'permissions_example', priority: 'priority_example', substring_matching_enabled: false, topic: 'topic_example'})] # Array<SadomainCreateRuleRequestV1> | 

begin
  # Create monitoring rules.
  result = api_instance.create_rules_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_rules_v1: #{e}"
end
```

#### Using the create_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRulesEntitiesResponseV1>, Integer, Hash)> create_rules_v1_with_http_info(body)

```ruby
begin
  # Create monitoring rules.
  data, status_code, headers = api_instance.create_rules_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRulesEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->create_rules_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;SadomainCreateRuleRequestV1&gt;**](SadomainCreateRuleRequestV1.md) |  |  |

### Return type

[**DomainRulesEntitiesResponseV1**](DomainRulesEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_action_v1

> <DomainQueryResponse> delete_action_v1(id)

Delete an action from a monitoring rule based on the action ID.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
id = 'id_example' # String | ID of the action.

begin
  # Delete an action from a monitoring rule based on the action ID.
  result = api_instance.delete_action_v1(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_action_v1: #{e}"
end
```

#### Using the delete_action_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> delete_action_v1_with_http_info(id)

```ruby
begin
  # Delete an action from a monitoring rule based on the action ID.
  data, status_code, headers = api_instance.delete_action_v1_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_action_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the action. |  |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_export_jobs_v1

> <DomainExportJobIDResponseV1> delete_export_jobs_v1(ids)

Delete export jobs (and their associated file(s)) based on their IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Export Job IDs.

begin
  # Delete export jobs (and their associated file(s)) based on their IDs.
  result = api_instance.delete_export_jobs_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_export_jobs_v1: #{e}"
end
```

#### Using the delete_export_jobs_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExportJobIDResponseV1>, Integer, Hash)> delete_export_jobs_v1_with_http_info(ids)

```ruby
begin
  # Delete export jobs (and their associated file(s)) based on their IDs.
  data, status_code, headers = api_instance.delete_export_jobs_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExportJobIDResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_export_jobs_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Export Job IDs. |  |

### Return type

[**DomainExportJobIDResponseV1**](DomainExportJobIDResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_notifications_v1

> <DomainNotificationIDResponse> delete_notifications_v1(ids)

Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notifications IDs.

begin
  # Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.
  result = api_instance.delete_notifications_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_notifications_v1: #{e}"
end
```

#### Using the delete_notifications_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationIDResponse>, Integer, Hash)> delete_notifications_v1_with_http_info(ids)

```ruby
begin
  # Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.
  data, status_code, headers = api_instance.delete_notifications_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationIDResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_notifications_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notifications IDs. |  |

### Return type

[**DomainNotificationIDResponse**](DomainNotificationIDResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rules_v1

> <DomainRuleQueryResponseV1> delete_rules_v1(ids, opts)

Delete monitoring rules.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | IDs of rules.
opts = {
  notifications_deletion_requested: true # Boolean | Whether we should delete the notifications generated by this rule or not
}

begin
  # Delete monitoring rules.
  result = api_instance.delete_rules_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_rules_v1: #{e}"
end
```

#### Using the delete_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRuleQueryResponseV1>, Integer, Hash)> delete_rules_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete monitoring rules.
  data, status_code, headers = api_instance.delete_rules_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRuleQueryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->delete_rules_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of rules. |  |
| **notifications_deletion_requested** | **Boolean** | Whether we should delete the notifications generated by this rule or not | [optional] |

### Return type

[**DomainRuleQueryResponseV1**](DomainRuleQueryResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_actions_v1

> <DomainActionEntitiesResponseV1> get_actions_v1(ids)

Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Action IDs.

begin
  # Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.
  result = api_instance.get_actions_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_actions_v1: #{e}"
end
```

#### Using the get_actions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainActionEntitiesResponseV1>, Integer, Hash)> get_actions_v1_with_http_info(ids)

```ruby
begin
  # Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.
  data, status_code, headers = api_instance.get_actions_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainActionEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_actions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Action IDs. |  |

### Return type

[**DomainActionEntitiesResponseV1**](DomainActionEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_export_jobs_v1

> <DomainExportJobEntitiesResponseV1> get_export_jobs_v1(ids)

Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Export Job IDs.

begin
  # Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.
  result = api_instance.get_export_jobs_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_export_jobs_v1: #{e}"
end
```

#### Using the get_export_jobs_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExportJobEntitiesResponseV1>, Integer, Hash)> get_export_jobs_v1_with_http_info(ids)

```ruby
begin
  # Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.
  data, status_code, headers = api_instance.get_export_jobs_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExportJobEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_export_jobs_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Export Job IDs. |  |

### Return type

[**DomainExportJobEntitiesResponseV1**](DomainExportJobEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_content_for_export_jobs_v1

> Array&lt;Integer&gt; get_file_content_for_export_jobs_v1(id)

Download the file associated with a job ID.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
id = 'id_example' # String | Export Job ID.

begin
  # Download the file associated with a job ID.
  result = api_instance.get_file_content_for_export_jobs_v1(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_file_content_for_export_jobs_v1: #{e}"
end
```

#### Using the get_file_content_for_export_jobs_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_file_content_for_export_jobs_v1_with_http_info(id)

```ruby
begin
  # Download the file associated with a job ID.
  data, status_code, headers = api_instance.get_file_content_for_export_jobs_v1_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_file_content_for_export_jobs_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Export Job ID. |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_notifications_detailed_translated_v1

> <DomainNotificationDetailsResponseV1> get_notifications_detailed_translated_v1(ids)

Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notification IDs.

begin
  # Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request
  result = api_instance.get_notifications_detailed_translated_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_detailed_translated_v1: #{e}"
end
```

#### Using the get_notifications_detailed_translated_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationDetailsResponseV1>, Integer, Hash)> get_notifications_detailed_translated_v1_with_http_info(ids)

```ruby
begin
  # Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request
  data, status_code, headers = api_instance.get_notifications_detailed_translated_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_detailed_translated_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notification IDs. |  |

### Return type

[**DomainNotificationDetailsResponseV1**](DomainNotificationDetailsResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notifications_detailed_v1

> <DomainNotificationDetailsResponseV1> get_notifications_detailed_v1(ids)

Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notification IDs.

begin
  # Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.
  result = api_instance.get_notifications_detailed_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_detailed_v1: #{e}"
end
```

#### Using the get_notifications_detailed_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationDetailsResponseV1>, Integer, Hash)> get_notifications_detailed_v1_with_http_info(ids)

```ruby
begin
  # Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.
  data, status_code, headers = api_instance.get_notifications_detailed_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_detailed_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notification IDs. |  |

### Return type

[**DomainNotificationDetailsResponseV1**](DomainNotificationDetailsResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notifications_exposed_data_records_v1

> <ApiNotificationExposedDataRecordEntitiesResponseV1> get_notifications_exposed_data_records_v1(ids)

Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notification exposed records IDs.

begin
  # Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints
  result = api_instance.get_notifications_exposed_data_records_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_exposed_data_records_v1: #{e}"
end
```

#### Using the get_notifications_exposed_data_records_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiNotificationExposedDataRecordEntitiesResponseV1>, Integer, Hash)> get_notifications_exposed_data_records_v1_with_http_info(ids)

```ruby
begin
  # Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints
  data, status_code, headers = api_instance.get_notifications_exposed_data_records_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiNotificationExposedDataRecordEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_exposed_data_records_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notification exposed records IDs. |  |

### Return type

[**ApiNotificationExposedDataRecordEntitiesResponseV1**](ApiNotificationExposedDataRecordEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notifications_translated_v1

> <DomainNotificationEntitiesResponseV1> get_notifications_translated_v1(ids)

Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notification IDs.

begin
  # Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.
  result = api_instance.get_notifications_translated_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_translated_v1: #{e}"
end
```

#### Using the get_notifications_translated_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationEntitiesResponseV1>, Integer, Hash)> get_notifications_translated_v1_with_http_info(ids)

```ruby
begin
  # Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.
  data, status_code, headers = api_instance.get_notifications_translated_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_translated_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notification IDs. |  |

### Return type

[**DomainNotificationEntitiesResponseV1**](DomainNotificationEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notifications_v1

> <DomainNotificationEntitiesResponseV1> get_notifications_v1(ids)

Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | Notification IDs.

begin
  # Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.
  result = api_instance.get_notifications_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_v1: #{e}"
end
```

#### Using the get_notifications_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationEntitiesResponseV1>, Integer, Hash)> get_notifications_v1_with_http_info(ids)

```ruby
begin
  # Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.
  data, status_code, headers = api_instance.get_notifications_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_notifications_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Notification IDs. |  |

### Return type

[**DomainNotificationEntitiesResponseV1**](DomainNotificationEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules_v1

> <DomainRulesEntitiesResponseV1> get_rules_v1(ids)

Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
ids = ['inner_example'] # Array<String> | IDs of rules.

begin
  # Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.
  result = api_instance.get_rules_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_rules_v1: #{e}"
end
```

#### Using the get_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRulesEntitiesResponseV1>, Integer, Hash)> get_rules_v1_with_http_info(ids)

```ruby
begin
  # Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.
  data, status_code, headers = api_instance.get_rules_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRulesEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->get_rules_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of rules. |  |

### Return type

[**DomainRulesEntitiesResponseV1**](DomainRulesEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_rule_v1

> <DomainAggregatesResponse> preview_rule_v1(body)

Preview rules notification count and distribution. This will return aggregations on: channel, count, site.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = Falcon::DomainRulePreviewRequest.new({filter: 'filter_example', topic: 'topic_example'}) # DomainRulePreviewRequest | 

begin
  # Preview rules notification count and distribution. This will return aggregations on: channel, count, site.
  result = api_instance.preview_rule_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->preview_rule_v1: #{e}"
end
```

#### Using the preview_rule_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregatesResponse>, Integer, Hash)> preview_rule_v1_with_http_info(body)

```ruby
begin
  # Preview rules notification count and distribution. This will return aggregations on: channel, count, site.
  data, status_code, headers = api_instance.preview_rule_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->preview_rule_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainRulePreviewRequest**](DomainRulePreviewRequest.md) |  |  |

### Return type

[**DomainAggregatesResponse**](DomainAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_actions_v1

> <DomainQueryResponse> query_actions_v1(opts)

Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
opts = {
  offset: 56, # Integer | Starting index of overall result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return. Offset + limit should NOT be above 10K.
  sort: 'sort_example', # String | Possible order by fields: created_timestamp, updated_timestamp. Ex: 'updated_timestamp|desc'.
  filter: 'filter_example', # String | FQL query to filter actions by. Possible filter properties are: [id cid user_uuid rule_id type frequency content_format trigger_matchless recipients status created_timestamp updated_timestamp]
  q: 'q_example' # String | Free text search across all indexed fields
}

begin
  # Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.
  result = api_instance.query_actions_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_actions_v1: #{e}"
end
```

#### Using the query_actions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> query_actions_v1_with_http_info(opts)

```ruby
begin
  # Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.
  data, status_code, headers = api_instance.query_actions_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_actions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of overall result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. Offset + limit should NOT be above 10K. | [optional] |
| **sort** | **String** | Possible order by fields: created_timestamp, updated_timestamp. Ex: &#39;updated_timestamp|desc&#39;. | [optional] |
| **filter** | **String** | FQL query to filter actions by. Possible filter properties are: [id cid user_uuid rule_id type frequency content_format trigger_matchless recipients status created_timestamp updated_timestamp] | [optional] |
| **q** | **String** | Free text search across all indexed fields | [optional] |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_notifications_exposed_data_records_v1

> <DomainQueryResponse> query_notifications_exposed_data_records_v1(opts)

Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
opts = {
  offset: 56, # Integer | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of IDs to return. Offset + limit should NOT be above 10K.
  sort: 'sort_example', # String | Possible order by fields: created_date, updated_date. Ex: 'updated_date|desc'.
  filter: 'filter_example', # String | FQL query to filter notifications by. Possible filter properties are: [id cid user_uuid created_date exposure_date rule.id rule.name rule.topic notification_id source_category site site_id author author_id user_id user_name credentials_url credentials_domain credentials_ip email domain hash_type display_name full_name user_ip phone_number company job_position file.name file.complete_data_set file.download_urls location.postal_code location.city location.state location.federal_district location.federal_admin_region location.country_code social.twitter_id social.facebook_id social.vk_id social.vk_token social.aim_id social.icq_id social.msn_id social.instagram_id social.skype_id financial.credit_card financial.bank_account financial.crypto_currency_addresses login_id _all]
  q: 'q_example' # String | Free text search across all indexed fields.
}

begin
  # Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1
  result = api_instance.query_notifications_exposed_data_records_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_notifications_exposed_data_records_v1: #{e}"
end
```

#### Using the query_notifications_exposed_data_records_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> query_notifications_exposed_data_records_v1_with_http_info(opts)

```ruby
begin
  # Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1
  data, status_code, headers = api_instance.query_notifications_exposed_data_records_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_notifications_exposed_data_records_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of IDs to return. Offset + limit should NOT be above 10K. | [optional] |
| **sort** | **String** | Possible order by fields: created_date, updated_date. Ex: &#39;updated_date|desc&#39;. | [optional] |
| **filter** | **String** | FQL query to filter notifications by. Possible filter properties are: [id cid user_uuid created_date exposure_date rule.id rule.name rule.topic notification_id source_category site site_id author author_id user_id user_name credentials_url credentials_domain credentials_ip email domain hash_type display_name full_name user_ip phone_number company job_position file.name file.complete_data_set file.download_urls location.postal_code location.city location.state location.federal_district location.federal_admin_region location.country_code social.twitter_id social.facebook_id social.vk_id social.vk_token social.aim_id social.icq_id social.msn_id social.instagram_id social.skype_id financial.credit_card financial.bank_account financial.crypto_currency_addresses login_id _all] | [optional] |
| **q** | **String** | Free text search across all indexed fields. | [optional] |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_notifications_v1

> <DomainQueryResponse> query_notifications_v1(opts)

Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
opts = {
  offset: 56, # Integer | Starting index of overall result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return. Offset + limit should NOT be above 10K.
  sort: 'sort_example', # String | Possible order by fields: `created_date`, `updated_date`. Ex: `updated_date|desc`.
  filter: 'filter_example', # String | FQL query to filter notifications by. Possible filter properties are: [id cid user_uuid status rule_id rule_name rule_topic rule_priority item_type item_site typosquatting.id typosquatting.unicode_format typosquatting.punycode_format typosquatting.parent_domain.id typosquatting.parent_domain.unicode_format typosquatting.parent_domain.punycode_format typosquatting.base_domain.id typosquatting.base_domain.unicode_format typosquatting.base_domain.punycode_format typosquatting.base_domain.is_registered typosquatting.base_domain.whois.registrar.name typosquatting.base_domain.whois.registrar.status typosquatting.base_domain.whois.registrant.email typosquatting.base_domain.whois.registrant.name typosquatting.base_domain.whois.registrant.org typosquatting.base_domain.whois.name_servers created_date updated_date assigned_to_uuid]
  q: 'q_example' # String | Free text search across all indexed fields.
}

begin
  # Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.
  result = api_instance.query_notifications_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_notifications_v1: #{e}"
end
```

#### Using the query_notifications_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueryResponse>, Integer, Hash)> query_notifications_v1_with_http_info(opts)

```ruby
begin
  # Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.
  data, status_code, headers = api_instance.query_notifications_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_notifications_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of overall result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. Offset + limit should NOT be above 10K. | [optional] |
| **sort** | **String** | Possible order by fields: &#x60;created_date&#x60;, &#x60;updated_date&#x60;. Ex: &#x60;updated_date|desc&#x60;. | [optional] |
| **filter** | **String** | FQL query to filter notifications by. Possible filter properties are: [id cid user_uuid status rule_id rule_name rule_topic rule_priority item_type item_site typosquatting.id typosquatting.unicode_format typosquatting.punycode_format typosquatting.parent_domain.id typosquatting.parent_domain.unicode_format typosquatting.parent_domain.punycode_format typosquatting.base_domain.id typosquatting.base_domain.unicode_format typosquatting.base_domain.punycode_format typosquatting.base_domain.is_registered typosquatting.base_domain.whois.registrar.name typosquatting.base_domain.whois.registrar.status typosquatting.base_domain.whois.registrant.email typosquatting.base_domain.whois.registrant.name typosquatting.base_domain.whois.registrant.org typosquatting.base_domain.whois.name_servers created_date updated_date assigned_to_uuid] | [optional] |
| **q** | **String** | Free text search across all indexed fields. | [optional] |

### Return type

[**DomainQueryResponse**](DomainQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rules_v1

> <DomainRuleQueryResponseV1> query_rules_v1(opts)

Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
opts = {
  offset: 56, # Integer | Starting index of overall result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return. Offset + limit should NOT be above 10K.
  sort: 'sort_example', # String | Possible order by fields: created_timestamp, last_updated_timestamp. Ex: `last_updated_timestamp|desc`.
  filter: 'filter_example', # String | FQL query to filter rules by. Possible filter properties are: [id cid user_uuid topic priority permissions status filter breach_monitoring_enabled substring_matching_enabled created_timestamp last_updated_timestamp].
  q: 'q_example' # String | Free text search across all indexed fields.
}

begin
  # Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.
  result = api_instance.query_rules_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_rules_v1: #{e}"
end
```

#### Using the query_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRuleQueryResponseV1>, Integer, Hash)> query_rules_v1_with_http_info(opts)

```ruby
begin
  # Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.
  data, status_code, headers = api_instance.query_rules_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRuleQueryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->query_rules_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Starting index of overall result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. Offset + limit should NOT be above 10K. | [optional] |
| **sort** | **String** | Possible order by fields: created_timestamp, last_updated_timestamp. Ex: &#x60;last_updated_timestamp|desc&#x60;. | [optional] |
| **filter** | **String** | FQL query to filter rules by. Possible filter properties are: [id cid user_uuid topic priority permissions status filter breach_monitoring_enabled substring_matching_enabled created_timestamp last_updated_timestamp]. | [optional] |
| **q** | **String** | Free text search across all indexed fields. | [optional] |

### Return type

[**DomainRuleQueryResponseV1**](DomainRuleQueryResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_action_v1

> <DomainActionEntitiesResponseV1> update_action_v1(body)

Update an action for a monitoring rule.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = Falcon::DomainUpdateActionRequest.new({content_format: 'content_format_example', frequency: 'frequency_example', id: 'id_example', recipients: ['recipients_example'], status: 'status_example', trigger_matchless: false}) # DomainUpdateActionRequest | 

begin
  # Update an action for a monitoring rule.
  result = api_instance.update_action_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_action_v1: #{e}"
end
```

#### Using the update_action_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainActionEntitiesResponseV1>, Integer, Hash)> update_action_v1_with_http_info(body)

```ruby
begin
  # Update an action for a monitoring rule.
  data, status_code, headers = api_instance.update_action_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainActionEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_action_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUpdateActionRequest**](DomainUpdateActionRequest.md) |  |  |

### Return type

[**DomainActionEntitiesResponseV1**](DomainActionEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_notifications_v1

> <DomainNotificationEntitiesResponseV1> update_notifications_v1(body)

Update notification status or assignee. Accepts bulk requests

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::DomainUpdateNotificationRequestV1.new({assigned_to_uuid: 'assigned_to_uuid_example', id: 'id_example', status: 'status_example'})] # Array<DomainUpdateNotificationRequestV1> | 

begin
  # Update notification status or assignee. Accepts bulk requests
  result = api_instance.update_notifications_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_notifications_v1: #{e}"
end
```

#### Using the update_notifications_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNotificationEntitiesResponseV1>, Integer, Hash)> update_notifications_v1_with_http_info(body)

```ruby
begin
  # Update notification status or assignee. Accepts bulk requests
  data, status_code, headers = api_instance.update_notifications_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNotificationEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_notifications_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DomainUpdateNotificationRequestV1&gt;**](DomainUpdateNotificationRequestV1.md) |  |  |

### Return type

[**DomainNotificationEntitiesResponseV1**](DomainNotificationEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rules_v1

> <DomainRulesEntitiesResponseV1> update_rules_v1(body)

Update monitoring rules.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ReconApi.new
body = [Falcon::DomainUpdateRuleRequestV1.new({breach_monitoring_enabled: false, filter: 'filter_example', id: 'id_example', name: 'name_example', permissions: 'permissions_example', priority: 'priority_example', substring_matching_enabled: false})] # Array<DomainUpdateRuleRequestV1> | 

begin
  # Update monitoring rules.
  result = api_instance.update_rules_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_rules_v1: #{e}"
end
```

#### Using the update_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRulesEntitiesResponseV1>, Integer, Hash)> update_rules_v1_with_http_info(body)

```ruby
begin
  # Update monitoring rules.
  data, status_code, headers = api_instance.update_rules_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRulesEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReconApi->update_rules_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DomainUpdateRuleRequestV1&gt;**](DomainUpdateRuleRequestV1.md) |  |  |

### Return type

[**DomainRulesEntitiesResponseV1**](DomainRulesEntitiesResponseV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

