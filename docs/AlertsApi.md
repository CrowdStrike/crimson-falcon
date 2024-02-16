# Falcon::AlertsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_queries_alerts_v1**](AlertsApi.md#get_queries_alerts_v1) | **GET** /alerts/queries/alerts/v1 | retrieves all Alerts ids that match a given query |
| [**get_queries_alerts_v2**](AlertsApi.md#get_queries_alerts_v2) | **GET** /alerts/queries/alerts/v2 | retrieves all Alerts ids that match a given query |
| [**patch_entities_alerts_v2**](AlertsApi.md#patch_entities_alerts_v2) | **PATCH** /alerts/entities/alerts/v2 | Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.   |
| [**patch_entities_alerts_v3**](AlertsApi.md#patch_entities_alerts_v3) | **PATCH** /alerts/entities/alerts/v3 | Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.   |
| [**post_aggregates_alerts_v1**](AlertsApi.md#post_aggregates_alerts_v1) | **POST** /alerts/aggregates/alerts/v1 | retrieves aggregate values for Alerts across all CIDs |
| [**post_aggregates_alerts_v2**](AlertsApi.md#post_aggregates_alerts_v2) | **POST** /alerts/aggregates/alerts/v2 | retrieves aggregate values for Alerts across all CIDs |
| [**post_entities_alerts_v1**](AlertsApi.md#post_entities_alerts_v1) | **POST** /alerts/entities/alerts/v1 | retrieves all Alerts given their ids |
| [**post_entities_alerts_v2**](AlertsApi.md#post_entities_alerts_v2) | **POST** /alerts/entities/alerts/v2 | retrieves all Alerts given their composite ids |


## get_queries_alerts_v1

> <DetectsapiAlertQueryResponse> get_queries_alerts_v1(opts)

retrieves all Alerts ids that match a given query

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
opts = {
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `offset` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort parameter takes the form <field|direction>. Direction can be either `asc` (ascending) or `desc` (descending) order. For example: `status|asc` or `status|desc`.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering 
  filter: 'filter_example', # String | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard `*` includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (>, <, >=, <=): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
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

> <Array(<DetectsapiAlertQueryResponse>, Integer, Hash)> get_queries_alerts_v1_with_http_info(opts)

```ruby
begin
  # retrieves all Alerts ids that match a given query
  data, status_code, headers = api_instance.get_queries_alerts_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAlertQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->get_queries_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering  | [optional] |
| **filter** | **String** | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all detection metadata for the provided string | [optional] |

### Return type

[**DetectsapiAlertQueryResponse**](DetectsapiAlertQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_queries_alerts_v2

> <DetectsapiAlertQueryResponse> get_queries_alerts_v2(opts)

retrieves all Alerts ids that match a given query

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
opts = {
  include_hidden: true, # Boolean | allows previously hidden alerts to be retrieved
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `offset` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort parameter takes the form <field|direction>. Direction can be either `asc` (ascending) or `desc` (descending) order. For example: `status|asc` or `status|desc`.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering 
  filter: 'filter_example', # String | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard `*` includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (>, <, >=, <=): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  q: 'q_example' # String | Search all detection metadata for the provided string
}

begin
  # retrieves all Alerts ids that match a given query
  result = api_instance.get_queries_alerts_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->get_queries_alerts_v2: #{e}"
end
```

#### Using the get_queries_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAlertQueryResponse>, Integer, Hash)> get_queries_alerts_v2_with_http_info(opts)

```ruby
begin
  # retrieves all Alerts ids that match a given query
  data, status_code, headers = api_instance.get_queries_alerts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAlertQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->get_queries_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 100; max: 10000). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering  | [optional] |
| **filter** | **String** | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all detection metadata for the provided string | [optional] |

### Return type

[**DetectsapiAlertQueryResponse**](DetectsapiAlertQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_entities_alerts_v2

> <DetectsapiResponseFields> patch_entities_alerts_v2(body)

Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPatchEntitiesAlertsV2Request.new({ids: ['ids_example']}) # DetectsapiPatchEntitiesAlertsV2Request | request body takes a list of action parameter request that is applied against all \"ids\" provided

begin
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  result = api_instance.patch_entities_alerts_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v2: #{e}"
end
```

#### Using the patch_entities_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiResponseFields>, Integer, Hash)> patch_entities_alerts_v2_with_http_info(body)

```ruby
begin
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  data, status_code, headers = api_instance.patch_entities_alerts_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesAlertsV2Request**](DetectsapiPatchEntitiesAlertsV2Request.md) | request body takes a list of action parameter request that is applied against all \&quot;ids\&quot; provided |  |

### Return type

[**DetectsapiResponseFields**](DetectsapiResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_entities_alerts_v3

> <DetectsapiResponseFields> patch_entities_alerts_v3(body, opts)

Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPatchEntitiesAlertsV3Request.new({composite_ids: ['composite_ids_example']}) # DetectsapiPatchEntitiesAlertsV3Request | request body takes a list of action parameter request that is applied against all \"ids\" provided
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  result = api_instance.patch_entities_alerts_v3(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v3: #{e}"
end
```

#### Using the patch_entities_alerts_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiResponseFields>, Integer, Hash)> patch_entities_alerts_v3_with_http_info(body, opts)

```ruby
begin
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  data, status_code, headers = api_instance.patch_entities_alerts_v3_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->patch_entities_alerts_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesAlertsV3Request**](DetectsapiPatchEntitiesAlertsV3Request.md) | request body takes a list of action parameter request that is applied against all \&quot;ids\&quot; provided |  |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |

### Return type

[**DetectsapiResponseFields**](DetectsapiResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_aggregates_alerts_v1

> <DetectsapiAggregatesResponse> post_aggregates_alerts_v1(body)

retrieves aggregate values for Alerts across all CIDs

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<DetectsapiAggregateAlertQueryRequest> | request body takes a list of aggregate-alert query requests

begin
  # retrieves aggregate values for Alerts across all CIDs
  result = api_instance.post_aggregates_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v1: #{e}"
end
```

#### Using the post_aggregates_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAggregatesResponse>, Integer, Hash)> post_aggregates_alerts_v1_with_http_info(body)

```ruby
begin
  # retrieves aggregate values for Alerts across all CIDs
  data, status_code, headers = api_instance.post_aggregates_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DetectsapiAggregateAlertQueryRequest&gt;**](DetectsapiAggregateAlertQueryRequest.md) | request body takes a list of aggregate-alert query requests |  |

### Return type

[**DetectsapiAggregatesResponse**](DetectsapiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_aggregates_alerts_v2

> <DetectsapiAggregatesResponse> post_aggregates_alerts_v2(body, opts)

retrieves aggregate values for Alerts across all CIDs

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<DetectsapiAggregateAlertQueryRequest> | request body takes a list of aggregate-alert query requests
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # retrieves aggregate values for Alerts across all CIDs
  result = api_instance.post_aggregates_alerts_v2(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v2: #{e}"
end
```

#### Using the post_aggregates_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAggregatesResponse>, Integer, Hash)> post_aggregates_alerts_v2_with_http_info(body, opts)

```ruby
begin
  # retrieves aggregate values for Alerts across all CIDs
  data, status_code, headers = api_instance.post_aggregates_alerts_v2_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_aggregates_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DetectsapiAggregateAlertQueryRequest&gt;**](DetectsapiAggregateAlertQueryRequest.md) | request body takes a list of aggregate-alert query requests |  |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |

### Return type

[**DetectsapiAggregatesResponse**](DetectsapiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_entities_alerts_v1

> <DetectsapiPostEntitiesAlertsV1Response> post_entities_alerts_v1(body)

retrieves all Alerts given their ids

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPostEntitiesAlertsV1Request.new({ids: ['ids_example']}) # DetectsapiPostEntitiesAlertsV1Request | 

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

> <Array(<DetectsapiPostEntitiesAlertsV1Response>, Integer, Hash)> post_entities_alerts_v1_with_http_info(body)

```ruby
begin
  # retrieves all Alerts given their ids
  data, status_code, headers = api_instance.post_entities_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostEntitiesAlertsV1Response>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_entities_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostEntitiesAlertsV1Request**](DetectsapiPostEntitiesAlertsV1Request.md) |  |  |

### Return type

[**DetectsapiPostEntitiesAlertsV1Response**](DetectsapiPostEntitiesAlertsV1Response.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_entities_alerts_v2

> <DetectsapiPostEntitiesAlertsV2Response> post_entities_alerts_v2(body, opts)

retrieves all Alerts given their composite ids

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::AlertsApi.new
body = Falcon::DetectsapiPostEntitiesAlertsV2Request.new({composite_ids: ['composite_ids_example']}) # DetectsapiPostEntitiesAlertsV2Request | 
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # retrieves all Alerts given their composite ids
  result = api_instance.post_entities_alerts_v2(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_entities_alerts_v2: #{e}"
end
```

#### Using the post_entities_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiPostEntitiesAlertsV2Response>, Integer, Hash)> post_entities_alerts_v2_with_http_info(body, opts)

```ruby
begin
  # retrieves all Alerts given their composite ids
  data, status_code, headers = api_instance.post_entities_alerts_v2_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostEntitiesAlertsV2Response>
rescue Falcon::ApiError => e
  puts "Error when calling AlertsApi->post_entities_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostEntitiesAlertsV2Request**](DetectsapiPostEntitiesAlertsV2Request.md) |  |  |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |

### Return type

[**DetectsapiPostEntitiesAlertsV2Response**](DetectsapiPostEntitiesAlertsV2Response.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

