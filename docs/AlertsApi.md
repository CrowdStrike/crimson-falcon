# Falcon::AlertsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_queries_alerts_v1**](AlertsApi.md#get_queries_alerts_v1) | **GET** /alerts/queries/alerts/v1 | retrieves all Alerts ids that match a given query |
| [**patch_entities_alerts_v1**](AlertsApi.md#patch_entities_alerts_v1) | **PATCH** /alerts/entities/alerts/v1 | Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  remove_tag - remove a tag from 1 or more detection(s) assign_to_user_id - assign 1 or more detection(s) to a user identified by user id (eg: user1@example.com) unassign - unassign an previously assigned user from 1 or more detection(s). The value passed to this action is ignored. new_behavior_processed - adds a newly processed behavior to 1 or more detection(s) update_status - update status for 1 or more detection(s) assign_to_uuid - assign 1 or more detection(s) to a user identified by UUID add_tag - add a tag to 1 or more detection(s) remove_tags_by_prefix - remove tags with given prefix from 1 or more detection(s) append_comment - appends new comment to existing comments assign_to_name - assign 1 or more detection(s) to a user identified by user name show_in_ui - shows 1 or more detection(s) on UI if set to true, hides otherwise. an empty/nil value is also valid skip_side_effects - internal only command to skip side effects during Beta phase  |
| [**patch_entities_alerts_v2**](AlertsApi.md#patch_entities_alerts_v2) | **PATCH** /alerts/entities/alerts/v2 | Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.   |
| [**post_aggregates_alerts_v1**](AlertsApi.md#post_aggregates_alerts_v1) | **POST** /alerts/aggregates/alerts/v1 | retrieves aggregates for Alerts across all CIDs |
| [**post_entities_alerts_v1**](AlertsApi.md#post_entities_alerts_v1) | **POST** /alerts/entities/alerts/v1 | retrieves all Alerts given their ids |


## get_queries_alerts_v1

> <MsaQueryResponse> get_queries_alerts_v1(opts)

retrieves all Alerts ids that match a given query

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::AlertsApi.new
opts = {
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `offset` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort detections in either `asc` (ascending) or `desc` (descending) order. For example: `status|asc` or `status|desc`.
  filter: 'filter_example', # String | Filter detections using a query in Falcon Query Language (FQL). An asterisk wildcard `*` includes all results.   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  q: 'q_example' # String | Search all detection metadata for the provided string
}

begin
  # retrieves all Alerts ids that match a given query
  result = api_instance.get_queries_alerts_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->get_queries_alerts_v1: #{e}"
end
```

#### Using the get_queries_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> get_queries_alerts_v1_with_http_info(opts)

```ruby
begin
  # retrieves all Alerts ids that match a given query
  data, status_code, headers = api_instance.get_queries_alerts_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->get_queries_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort detections in either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;. | [optional] |
| **filter** | **String** | Filter detections using a query in Falcon Query Language (FQL). An asterisk wildcard &#x60;*&#x60; includes all results.   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all detection metadata for the provided string | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_entities_alerts_v1

> <MsaReplyMetaOnly> patch_entities_alerts_v1(body)

Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  remove_tag - remove a tag from 1 or more detection(s) assign_to_user_id - assign 1 or more detection(s) to a user identified by user id (eg: user1@example.com) unassign - unassign an previously assigned user from 1 or more detection(s). The value passed to this action is ignored. new_behavior_processed - adds a newly processed behavior to 1 or more detection(s) update_status - update status for 1 or more detection(s) assign_to_uuid - assign 1 or more detection(s) to a user identified by UUID add_tag - add a tag to 1 or more detection(s) remove_tags_by_prefix - remove tags with given prefix from 1 or more detection(s) append_comment - appends new comment to existing comments assign_to_name - assign 1 or more detection(s) to a user identified by user name show_in_ui - shows 1 or more detection(s) on UI if set to true, hides otherwise. an empty/nil value is also valid skip_side_effects - internal only command to skip side effects during Beta phase 

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPatchEntitiesInvestigatablesV1Request.new({ids: ['ids_example']}) # DetectsapiPatchEntitiesInvestigatablesV1Request | request body takes a list of action parameter request that is applied against all \"ids\" provided

begin
  # Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  remove_tag - remove a tag from 1 or more detection(s) assign_to_user_id - assign 1 or more detection(s) to a user identified by user id (eg: user1@example.com) unassign - unassign an previously assigned user from 1 or more detection(s). The value passed to this action is ignored. new_behavior_processed - adds a newly processed behavior to 1 or more detection(s) update_status - update status for 1 or more detection(s) assign_to_uuid - assign 1 or more detection(s) to a user identified by UUID add_tag - add a tag to 1 or more detection(s) remove_tags_by_prefix - remove tags with given prefix from 1 or more detection(s) append_comment - appends new comment to existing comments assign_to_name - assign 1 or more detection(s) to a user identified by user name show_in_ui - shows 1 or more detection(s) on UI if set to true, hides otherwise. an empty/nil value is also valid skip_side_effects - internal only command to skip side effects during Beta phase 
  result = api_instance.patch_entities_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v1: #{e}"
end
```

#### Using the patch_entities_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> patch_entities_alerts_v1_with_http_info(body)

```ruby
begin
  # Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  remove_tag - remove a tag from 1 or more detection(s) assign_to_user_id - assign 1 or more detection(s) to a user identified by user id (eg: user1@example.com) unassign - unassign an previously assigned user from 1 or more detection(s). The value passed to this action is ignored. new_behavior_processed - adds a newly processed behavior to 1 or more detection(s) update_status - update status for 1 or more detection(s) assign_to_uuid - assign 1 or more detection(s) to a user identified by UUID add_tag - add a tag to 1 or more detection(s) remove_tags_by_prefix - remove tags with given prefix from 1 or more detection(s) append_comment - appends new comment to existing comments assign_to_name - assign 1 or more detection(s) to a user identified by user name show_in_ui - shows 1 or more detection(s) on UI if set to true, hides otherwise. an empty/nil value is also valid skip_side_effects - internal only command to skip side effects during Beta phase 
  data, status_code, headers = api_instance.patch_entities_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesInvestigatablesV1Request**](DetectsapiPatchEntitiesInvestigatablesV1Request.md) | request body takes a list of action parameter request that is applied against all \&quot;ids\&quot; provided |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_entities_alerts_v2

> <MsaspecResponseFields> patch_entities_alerts_v2(body)

Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPatchEntitiesInvestigatablesV2Request.new({ids: ['ids_example']}) # DetectsapiPatchEntitiesInvestigatablesV2Request | request body takes a list of action parameter request that is applied against all \"ids\" provided

begin
  # Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  
  result = api_instance.patch_entities_alerts_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v2: #{e}"
end
```

#### Using the patch_entities_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> patch_entities_alerts_v2_with_http_info(body)

```ruby
begin
  # Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does.  
  data, status_code, headers = api_instance.patch_entities_alerts_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesInvestigatablesV2Request**](DetectsapiPatchEntitiesInvestigatablesV2Request.md) | request body takes a list of action parameter request that is applied against all \&quot;ids\&quot; provided |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_aggregates_alerts_v1

> <MsaAggregatesResponse> post_aggregates_alerts_v1(body)

retrieves aggregates for Alerts across all CIDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::AlertsApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', min_doc_count: 3.56, missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | request body takes a list of aggregation query requests

begin
  # retrieves aggregates for Alerts across all CIDs
  result = api_instance.post_aggregates_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v1: #{e}"
end
```

#### Using the post_aggregates_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> post_aggregates_alerts_v1_with_http_info(body)

```ruby
begin
  # retrieves aggregates for Alerts across all CIDs
  data, status_code, headers = api_instance.post_aggregates_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) | request body takes a list of aggregation query requests |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_entities_alerts_v1

> <DetectsapiPostEntitiesInvestigatablesV1Response> post_entities_alerts_v1(body)

retrieves all Alerts given their ids

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPostEntitiesInvestigatablesV1Request.new({ids: ['ids_example']}) # DetectsapiPostEntitiesInvestigatablesV1Request | 

begin
  # retrieves all Alerts given their ids
  result = api_instance.post_entities_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_entities_alerts_v1: #{e}"
end
```

#### Using the post_entities_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiPostEntitiesInvestigatablesV1Response>, Integer, Hash)> post_entities_alerts_v1_with_http_info(body)

```ruby
begin
  # retrieves all Alerts given their ids
  data, status_code, headers = api_instance.post_entities_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostEntitiesInvestigatablesV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_entities_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostEntitiesInvestigatablesV1Request**](DetectsapiPostEntitiesInvestigatablesV1Request.md) |  |  |

### Return type

[**DetectsapiPostEntitiesInvestigatablesV1Response**](DetectsapiPostEntitiesInvestigatablesV1Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

