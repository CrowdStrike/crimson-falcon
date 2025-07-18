# Falcon::Alerts

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_alerts_v3**](Alerts.md#get_alerts_v3) | **GET** /saas-security/entities/alerts/v3 | GET Alert by ID or GET Alerts |
| [**get_queries_alerts_v1**](Alerts.md#get_queries_alerts_v1) | **GET** /alerts/queries/alerts/v1 | Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query. |
| [**get_queries_alerts_v2**](Alerts.md#get_queries_alerts_v2) | **GET** /alerts/queries/alerts/v2 | Retrieves all Alerts ids that match a given query. |
| [**patch_entities_alerts_v2**](Alerts.md#patch_entities_alerts_v2) | **PATCH** /alerts/entities/alerts/v2 | Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.   |
| [**patch_entities_alerts_v3**](Alerts.md#patch_entities_alerts_v3) | **PATCH** /alerts/entities/alerts/v3 | Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.   |
| [**post_aggregates_alerts_v1**](Alerts.md#post_aggregates_alerts_v1) | **POST** /alerts/aggregates/alerts/v1 | Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs. |
| [**post_aggregates_alerts_v2**](Alerts.md#post_aggregates_alerts_v2) | **POST** /alerts/aggregates/alerts/v2 | Retrieves aggregate values for Alerts across all CIDs. |
| [**post_combined_alerts_v1**](Alerts.md#post_combined_alerts_v1) | **POST** /alerts/combined/alerts/v1 | Retrieves all Alerts that match a particular FQL filter. This API is intended for retrieval of large amounts of Alerts(&gt;10k) using a pagination based on a &#x60;after&#x60; token. If you need to use &#x60;offset&#x60; pagination, consider using GET /alerts/queries/alerts/* and POST /alerts/entities/alerts/* APIs.   |
| [**post_entities_alerts_v1**](Alerts.md#post_entities_alerts_v1) | **POST** /alerts/entities/alerts/v1 | Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids. |
| [**post_entities_alerts_v2**](Alerts.md#post_entities_alerts_v2) | **POST** /alerts/entities/alerts/v2 | Retrieves all Alerts given their composite ids. |


## get_alerts_v3

> <GetAlertsResponse> get_alerts_v3(opts)

GET Alert by ID or GET Alerts

Get a data on a specific alert or get a list of all alerts  

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

api_instance = Falcon::Alerts.new
opts = {
  id: 'id_example', # String | Alert ID
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  last_id: 'last_id_example', # String | The last id of the alert you want to get
  type: 'Unknown', # String | The type of alert you want to get
  integration_id: 'integration_id_example', # String | Comma separated list of integration ID's of the alert you want to get
  from_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of the alert you want to get (in YYYY-MM-DD format)
  to_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of the alert you want to get (in YYYY-MM-DD format)
  ascending: true # Boolean | 
}

begin
  # GET Alert by ID or GET Alerts
  result = api_instance.get_alerts_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_alerts_v3: #{e}"
end
```

#### Using the get_alerts_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlertsResponse>, Integer, Hash)> get_alerts_v3_with_http_info(opts)

```ruby
begin
  # GET Alert by ID or GET Alerts
  data, status_code, headers = api_instance.get_alerts_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlertsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_alerts_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alert ID | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **last_id** | **String** | The last id of the alert you want to get | [optional] |
| **type** | **String** | The type of alert you want to get | [optional] |
| **integration_id** | **String** | Comma separated list of integration ID&#39;s of the alert you want to get | [optional] |
| **from_date** | **Time** | The start date of the alert you want to get (in YYYY-MM-DD format) | [optional] |
| **to_date** | **Time** | The end date of the alert you want to get (in YYYY-MM-DD format) | [optional] |
| **ascending** | **Boolean** |  | [optional] |

### Return type

[**GetAlertsResponse**](GetAlertsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_queries_alerts_v1

> <DetectsapiAlertQueryResponse> get_queries_alerts_v1(opts)

Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query.

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

api_instance = Falcon::Alerts.new
opts = {
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `offset` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the `offset` parameter to manage pagination of the results.
  sort: 'sort_example', # String | Sort parameter takes the form <field|direction>. Direction can be either `asc` (ascending) or `desc` (descending) order. For example: `status|asc` or `status|desc`.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering 
  filter: 'filter_example', # String | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard `*` includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (>, <, >=, <=): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  q: 'q_example' # String | Search all alert metadata for the provided string
}

begin
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query.
  result = api_instance.get_queries_alerts_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_queries_alerts_v1: #{e}"
end
```

#### Using the get_queries_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAlertQueryResponse>, Integer, Hash)> get_queries_alerts_v1_with_http_info(opts)

```ruby
begin
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query.
  data, status_code, headers = api_instance.get_queries_alerts_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAlertQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_queries_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the &#x60;offset&#x60; parameter to manage pagination of the results. | [optional] |
| **sort** | **String** | Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering  | [optional] |
| **filter** | **String** | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all alert metadata for the provided string | [optional] |

### Return type

[**DetectsapiAlertQueryResponse**](DetectsapiAlertQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_queries_alerts_v2

> <DetectsapiAlertQueryResponse> get_queries_alerts_v2(opts)

Retrieves all Alerts ids that match a given query.

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

api_instance = Falcon::Alerts.new
opts = {
  include_hidden: true, # Boolean | allows previously hidden alerts to be retrieved
  offset: 56, # Integer | The first detection to return, where `0` is the latest detection. Use with the `offset` parameter to manage pagination of results.
  limit: 56, # Integer | The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the `offset` parameter to manage pagination of the results.
  sort: 'sort_example', # String | Sort parameter takes the form <field|direction>. Direction can be either `asc` (ascending) or `desc` (descending) order. For example: `status|asc` or `status|desc`.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering 
  filter: 'filter_example', # String | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard `*` includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (>, <, >=, <=): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).
  q: 'q_example' # String | Search all alert metadata for the provided string
}

begin
  # Retrieves all Alerts ids that match a given query.
  result = api_instance.get_queries_alerts_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_queries_alerts_v2: #{e}"
end
```

#### Using the get_queries_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAlertQueryResponse>, Integer, Hash)> get_queries_alerts_v2_with_http_info(opts)

```ruby
begin
  # Retrieves all Alerts ids that match a given query.
  data, status_code, headers = api_instance.get_queries_alerts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAlertQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->get_queries_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |
| **offset** | **Integer** | The first detection to return, where &#x60;0&#x60; is the latest detection. Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **limit** | **Integer** | The maximum number of detections to return in this response (default: 100; max: 10000). Use this parameter together with the &#x60;offset&#x60; parameter to manage pagination of the results. | [optional] |
| **sort** | **String** | Sort parameter takes the form &lt;field|direction&gt;. Direction can be either &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending) order. For example: &#x60;status|asc&#x60; or &#x60;status|desc&#x60;.  The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields are status, cid, aggregate_id, timestamp, created_timestamp, updated_timestamp, assigned_to_name, assigned_to_uid, assigned_to_uuid, show_in_ui, tactic_id, tactic, technique, technique_id, pattern_id, product, comment, tags If the fields are missing from the Alerts, the service will fallback to its default ordering  | [optional] |
| **filter** | **String** | Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql). | [optional] |
| **q** | **String** | Search all alert metadata for the provided string | [optional] |

### Return type

[**DetectsapiAlertQueryResponse**](DetectsapiAlertQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_entities_alerts_v2

> <DetectsapiResponseFields> patch_entities_alerts_v2(body)

Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

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

api_instance = Falcon::Alerts.new
body = Falcon::DetectsapiPatchEntitiesAlertsV2Request.new({ids: ['ids_example']}) # DetectsapiPatchEntitiesAlertsV2Request | `ids` - IDs of Alerts to modify.  `action_parameters` values - `assign_to_uuid`  - Assign Alert to user UUID, such as `00000000-0000-0000-0000-000000000000` - `assign_to_user_id`  - Assign Alert to user ID, such as `user@example.com` - `assign_to_name`  - Assign Alert to username, such as `John Doe` - `unassign`  - Unassign Alert clears out the assigned user UUID, user ID, and username. - `add_tag`   - Add a tag to the Alert. - `remove_tag`  - Remove a tag from the Alert. - `remove_tags_by_prefix`  - Remove tags from the Alert based on the prefix. - `append_comment`  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - `update_status` values  - `new`  - `in_progress`  - `reopened`  - `closed` - `show_in_ui` values  - `true`: This alert is displayed in Falcon  - `false`: This alert is not displayed in Falcon. 

begin
  # Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  result = api_instance.patch_entities_alerts_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->patch_entities_alerts_v2: #{e}"
end
```

#### Using the patch_entities_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiResponseFields>, Integer, Hash)> patch_entities_alerts_v2_with_http_info(body)

```ruby
begin
  # Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  data, status_code, headers = api_instance.patch_entities_alerts_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->patch_entities_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesAlertsV2Request**](DetectsapiPatchEntitiesAlertsV2Request.md) | &#x60;ids&#x60; - IDs of Alerts to modify.  &#x60;action_parameters&#x60; values - &#x60;assign_to_uuid&#x60;  - Assign Alert to user UUID, such as &#x60;00000000-0000-0000-0000-000000000000&#x60; - &#x60;assign_to_user_id&#x60;  - Assign Alert to user ID, such as &#x60;user@example.com&#x60; - &#x60;assign_to_name&#x60;  - Assign Alert to username, such as &#x60;John Doe&#x60; - &#x60;unassign&#x60;  - Unassign Alert clears out the assigned user UUID, user ID, and username. - &#x60;add_tag&#x60;   - Add a tag to the Alert. - &#x60;remove_tag&#x60;  - Remove a tag from the Alert. - &#x60;remove_tags_by_prefix&#x60;  - Remove tags from the Alert based on the prefix. - &#x60;append_comment&#x60;  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - &#x60;update_status&#x60; values  - &#x60;new&#x60;  - &#x60;in_progress&#x60;  - &#x60;reopened&#x60;  - &#x60;closed&#x60; - &#x60;show_in_ui&#x60; values  - &#x60;true&#x60;: This alert is displayed in Falcon  - &#x60;false&#x60;: This alert is not displayed in Falcon.  |  |

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

api_instance = Falcon::Alerts.new
body = Falcon::DetectsapiPatchEntitiesAlertsV3Request.new({composite_ids: ['composite_ids_example']}) # DetectsapiPatchEntitiesAlertsV3Request | `composite_ids` - CompositeIDs of Alerts to modify.  `action_parameters` values - `assign_to_uuid`  - Assign Alert to user UUID, such as `00000000-0000-0000-0000-000000000000` - `assign_to_user_id`  - Assign Alert to user ID, such as `user@example.com` - `assign_to_name`  - Assign Alert to username, such as `John Doe` - `unassign`  - Unassign Alert clears out the assigned user UUID, user ID, and username. - `add_tag`   - Add a tag to the Alert. - `remove_tag`  - Remove a tag from the Alert. - `remove_tags_by_prefix`  - Remove tags from the Alert based on the prefix. - `append_comment`  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - `update_status` values  - `new`  - `in_progress`  - `reopened`  - `closed` - `show_in_ui` values  - `true`: This alert is displayed in Falcon  - `false`: This alert is not displayed in Falcon. 
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  
  result = api_instance.patch_entities_alerts_v3(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->patch_entities_alerts_v3: #{e}"
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
  puts "Error when calling Alerts->patch_entities_alerts_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPatchEntitiesAlertsV3Request**](DetectsapiPatchEntitiesAlertsV3Request.md) | &#x60;composite_ids&#x60; - CompositeIDs of Alerts to modify.  &#x60;action_parameters&#x60; values - &#x60;assign_to_uuid&#x60;  - Assign Alert to user UUID, such as &#x60;00000000-0000-0000-0000-000000000000&#x60; - &#x60;assign_to_user_id&#x60;  - Assign Alert to user ID, such as &#x60;user@example.com&#x60; - &#x60;assign_to_name&#x60;  - Assign Alert to username, such as &#x60;John Doe&#x60; - &#x60;unassign&#x60;  - Unassign Alert clears out the assigned user UUID, user ID, and username. - &#x60;add_tag&#x60;   - Add a tag to the Alert. - &#x60;remove_tag&#x60;  - Remove a tag from the Alert. - &#x60;remove_tags_by_prefix&#x60;  - Remove tags from the Alert based on the prefix. - &#x60;append_comment&#x60;  - Comments are displayed with the Alert in Falcon and are usually used to provide context or notes for other Falcon users. An Alert can have multiple comments over time. - &#x60;update_status&#x60; values  - &#x60;new&#x60;  - &#x60;in_progress&#x60;  - &#x60;reopened&#x60;  - &#x60;closed&#x60; - &#x60;show_in_ui&#x60; values  - &#x60;true&#x60;: This alert is displayed in Falcon  - &#x60;false&#x60;: This alert is not displayed in Falcon.  |  |
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

Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs.

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

api_instance = Falcon::Alerts.new
body = [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<DetectsapiAggregateAlertQueryRequest> | request body takes a list of aggregate-alert query requests

begin
  # Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs.
  result = api_instance.post_aggregates_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_aggregates_alerts_v1: #{e}"
end
```

#### Using the post_aggregates_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAggregatesResponse>, Integer, Hash)> post_aggregates_alerts_v1_with_http_info(body)

```ruby
begin
  # Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs.
  data, status_code, headers = api_instance.post_aggregates_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_aggregates_alerts_v1_with_http_info: #{e}"
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

Retrieves aggregate values for Alerts across all CIDs.

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

api_instance = Falcon::Alerts.new
body = [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::DetectsapiAggregateAlertQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<DetectsapiAggregateAlertQueryRequest> | request body takes a list of aggregate-alert query requests
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # Retrieves aggregate values for Alerts across all CIDs.
  result = api_instance.post_aggregates_alerts_v2(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_aggregates_alerts_v2: #{e}"
end
```

#### Using the post_aggregates_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiAggregatesResponse>, Integer, Hash)> post_aggregates_alerts_v2_with_http_info(body, opts)

```ruby
begin
  # Retrieves aggregate values for Alerts across all CIDs.
  data, status_code, headers = api_instance.post_aggregates_alerts_v2_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_aggregates_alerts_v2_with_http_info: #{e}"
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


## post_combined_alerts_v1

> <DetectsapiPostCombinedAlertsV1ResponseSwagger> post_combined_alerts_v1(body)

Retrieves all Alerts that match a particular FQL filter. This API is intended for retrieval of large amounts of Alerts(>10k) using a pagination based on a `after` token. If you need to use `offset` pagination, consider using GET /alerts/queries/alerts/* and POST /alerts/entities/alerts/* APIs.  

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

api_instance = Falcon::Alerts.new
body = Falcon::DetectsapiPostCombinedAlertsV1RequestSwagger.new # DetectsapiPostCombinedAlertsV1RequestSwagger | `after` - The `after` token is used for pagination of results. The `after` token is present when more results are available on the next page. To retrieve all Alerts:    - Use the `after` token in subsequent requests to fetch the next page.   - Continue this process until you reach a page without an `after` token, indicating the last page.  This value is highly dependant on the `sort` parameter, so if you plan to change the sort order, you will have to re-start your search from the first page (without `after` parameter).  `filter` - Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard `*` includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (>, <, >=, <=): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).  `limit` - The maximum number of detections to return in this response (default: 100; max: 1000). Use this parameter together with the `after` parameter to manage pagination of the results.  `sort` - Sort parameter takes the form of `<field|direction>`.   The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields for sorting are: timestamp, created_timestamp, updated_timestamp, status, aggregate_id, assigned_to_name, assigned_to_uid, assigned_to_uuid, tactic_id, tactic, technique, technique_id, pattern_id or product.  By default all the results are sorted by the `created_timestamp` field in the descending order.  **Important:** The pagination is done on live data in the order defined by the `sort` field parameter (default: `created_timestamp|desc`), so if you want to avoid inconsistent results where the same record might appear on multiple pages (or none), sort only on the fields that do not change over time (e.g. created_timestamp, composite_id, ...).  

begin
  # Retrieves all Alerts that match a particular FQL filter. This API is intended for retrieval of large amounts of Alerts(>10k) using a pagination based on a `after` token. If you need to use `offset` pagination, consider using GET /alerts/queries/alerts/* and POST /alerts/entities/alerts/* APIs.  
  result = api_instance.post_combined_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_combined_alerts_v1: #{e}"
end
```

#### Using the post_combined_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiPostCombinedAlertsV1ResponseSwagger>, Integer, Hash)> post_combined_alerts_v1_with_http_info(body)

```ruby
begin
  # Retrieves all Alerts that match a particular FQL filter. This API is intended for retrieval of large amounts of Alerts(>10k) using a pagination based on a `after` token. If you need to use `offset` pagination, consider using GET /alerts/queries/alerts/* and POST /alerts/entities/alerts/* APIs.  
  data, status_code, headers = api_instance.post_combined_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostCombinedAlertsV1ResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_combined_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostCombinedAlertsV1RequestSwagger**](DetectsapiPostCombinedAlertsV1RequestSwagger.md) | &#x60;after&#x60; - The &#x60;after&#x60; token is used for pagination of results. The &#x60;after&#x60; token is present when more results are available on the next page. To retrieve all Alerts:    - Use the &#x60;after&#x60; token in subsequent requests to fetch the next page.   - Continue this process until you reach a page without an &#x60;after&#x60; token, indicating the last page.  This value is highly dependant on the &#x60;sort&#x60; parameter, so if you plan to change the sort order, you will have to re-start your search from the first page (without &#x60;after&#x60; parameter).  &#x60;filter&#x60; - Filter Alerts using a query in Falcon Query Language (FQL).Filter fields can be any keyword field that is part of #domain.Alert  An asterisk wildcard &#x60;*&#x60; includes all results.   Empty value means to not filter on anything. Most commonly used filter fields that supports exact match: cid, id, aggregate_id, product, type, pattern_id, platform ... Most commonly used filter fields that supports wildcard (*): assigned_to_name, assigned_to_uuid, tactic_id, technique ... Most commonly filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): severity, created_timestamp, timestamp, updated_timestamp... All filter fields and operations support negation (!).   The full list of valid filter options is extensive. Review it in our [documentation inside the Falcon console](https://falcon.crowdstrike.com/documentation/45/falcon-query-language-fql).  &#x60;limit&#x60; - The maximum number of detections to return in this response (default: 100; max: 1000). Use this parameter together with the &#x60;after&#x60; parameter to manage pagination of the results.  &#x60;sort&#x60; - Sort parameter takes the form of &#x60;&lt;field|direction&gt;&#x60;.   The sorting fields can be any keyword field that is part of #domain.Alert except for the text based fields. Most commonly used fields for sorting are: timestamp, created_timestamp, updated_timestamp, status, aggregate_id, assigned_to_name, assigned_to_uid, assigned_to_uuid, tactic_id, tactic, technique, technique_id, pattern_id or product.  By default all the results are sorted by the &#x60;created_timestamp&#x60; field in the descending order.  **Important:** The pagination is done on live data in the order defined by the &#x60;sort&#x60; field parameter (default: &#x60;created_timestamp|desc&#x60;), so if you want to avoid inconsistent results where the same record might appear on multiple pages (or none), sort only on the fields that do not change over time (e.g. created_timestamp, composite_id, ...).   |  |

### Return type

[**DetectsapiPostCombinedAlertsV1ResponseSwagger**](DetectsapiPostCombinedAlertsV1ResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_entities_alerts_v1

> <DetectsapiPostEntitiesAlertsV1ResponseSwagger> post_entities_alerts_v1(body)

Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids.

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

api_instance = Falcon::Alerts.new
body = Falcon::DetectsapiPostEntitiesAlertsV1Request.new({ids: ['ids_example']}) # DetectsapiPostEntitiesAlertsV1Request | 

begin
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids.
  result = api_instance.post_entities_alerts_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_entities_alerts_v1: #{e}"
end
```

#### Using the post_entities_alerts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiPostEntitiesAlertsV1ResponseSwagger>, Integer, Hash)> post_entities_alerts_v1_with_http_info(body)

```ruby
begin
  # Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids.
  data, status_code, headers = api_instance.post_entities_alerts_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostEntitiesAlertsV1ResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_entities_alerts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostEntitiesAlertsV1Request**](DetectsapiPostEntitiesAlertsV1Request.md) |  |  |

### Return type

[**DetectsapiPostEntitiesAlertsV1ResponseSwagger**](DetectsapiPostEntitiesAlertsV1ResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_entities_alerts_v2

> <DetectsapiPostEntitiesAlertsV2ResponseSwagger> post_entities_alerts_v2(body, opts)

Retrieves all Alerts given their composite ids.

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

api_instance = Falcon::Alerts.new
body = Falcon::DetectsapiPostEntitiesAlertsV2Request.new({composite_ids: ['composite_ids_example']}) # DetectsapiPostEntitiesAlertsV2Request | 
opts = {
  include_hidden: true # Boolean | allows previously hidden alerts to be retrieved
}

begin
  # Retrieves all Alerts given their composite ids.
  result = api_instance.post_entities_alerts_v2(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_entities_alerts_v2: #{e}"
end
```

#### Using the post_entities_alerts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectsapiPostEntitiesAlertsV2ResponseSwagger>, Integer, Hash)> post_entities_alerts_v2_with_http_info(body, opts)

```ruby
begin
  # Retrieves all Alerts given their composite ids.
  data, status_code, headers = api_instance.post_entities_alerts_v2_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectsapiPostEntitiesAlertsV2ResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling Alerts->post_entities_alerts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DetectsapiPostEntitiesAlertsV2Request**](DetectsapiPostEntitiesAlertsV2Request.md) |  |  |
| **include_hidden** | **Boolean** | allows previously hidden alerts to be retrieved | [optional][default to true] |

### Return type

[**DetectsapiPostEntitiesAlertsV2ResponseSwagger**](DetectsapiPostEntitiesAlertsV2ResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

