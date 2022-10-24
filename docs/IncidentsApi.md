# Falcon::IncidentsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**crowd_score**](IncidentsApi.md#crowd_score) | **GET** /incidents/combined/crowdscores/v1 | Query environment wide CrowdScore and return the entity data |
| [**get_behaviors**](IncidentsApi.md#get_behaviors) | **POST** /incidents/entities/behaviors/GET/v1 | Get details on behaviors by providing behavior IDs |
| [**get_incidents**](IncidentsApi.md#get_incidents) | **POST** /incidents/entities/incidents/GET/v1 | Get details on incidents by providing incident IDs |
| [**perform_incident_action**](IncidentsApi.md#perform_incident_action) | **POST** /incidents/entities/incident-actions/v1 | Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description |
| [**query_behaviors**](IncidentsApi.md#query_behaviors) | **GET** /incidents/queries/behaviors/v1 | Search for behaviors by providing an FQL filter, sorting, and paging details |
| [**query_incidents**](IncidentsApi.md#query_incidents) | **GET** /incidents/queries/incidents/v1 | Search for incidents by providing an FQL filter, sorting, and paging details |


## crowd_score

> <ApiMsaEnvironmentScoreResponse> crowd_score(opts)

Query environment wide CrowdScore and return the entity data

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
opts = {
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | The maximum records to return. [1-2500]
  sort: 'score.asc' # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
}

begin
  # Query environment wide CrowdScore and return the entity data
  result = api_instance.crowd_score(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->crowd_score: #{e}"
end
```

#### Using the crowd_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMsaEnvironmentScoreResponse>, Integer, Hash)> crowd_score_with_http_info(opts)

```ruby
begin
  # Query environment wide CrowdScore and return the entity data
  data, status_code, headers = api_instance.crowd_score_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMsaEnvironmentScoreResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->crowd_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-2500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |

### Return type

[**ApiMsaEnvironmentScoreResponse**](ApiMsaEnvironmentScoreResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_behaviors

> <ApiMsaExternalBehaviorResponse> get_behaviors(body)

Get details on behaviors by providing behavior IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get details on behaviors by providing behavior IDs
  result = api_instance.get_behaviors(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->get_behaviors: #{e}"
end
```

#### Using the get_behaviors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMsaExternalBehaviorResponse>, Integer, Hash)> get_behaviors_with_http_info(body)

```ruby
begin
  # Get details on behaviors by providing behavior IDs
  data, status_code, headers = api_instance.get_behaviors_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMsaExternalBehaviorResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->get_behaviors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiMsaExternalBehaviorResponse**](ApiMsaExternalBehaviorResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_incidents

> <ApiMsaExternalIncidentResponse> get_incidents(body)

Get details on incidents by providing incident IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get details on incidents by providing incident IDs
  result = api_instance.get_incidents(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->get_incidents: #{e}"
end
```

#### Using the get_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMsaExternalIncidentResponse>, Integer, Hash)> get_incidents_with_http_info(body)

```ruby
begin
  # Get details on incidents by providing incident IDs
  data, status_code, headers = api_instance.get_incidents_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMsaExternalIncidentResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->get_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiMsaExternalIncidentResponse**](ApiMsaExternalIncidentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## perform_incident_action

> <MsaReplyMetaOnly> perform_incident_action(body)

Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description
  result = api_instance.perform_incident_action(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->perform_incident_action: #{e}"
end
```

#### Using the perform_incident_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> perform_incident_action_with_http_info(body)

```ruby
begin
  # Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description
  data, status_code, headers = api_instance.perform_incident_action_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->perform_incident_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_behaviors

> <MsaQueryResponse> query_behaviors(opts)

Search for behaviors by providing an FQL filter, sorting, and paging details

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
opts = {
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'timestamp.asc' # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
}

begin
  # Search for behaviors by providing an FQL filter, sorting, and paging details
  result = api_instance.query_behaviors(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->query_behaviors: #{e}"
end
```

#### Using the query_behaviors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_behaviors_with_http_info(opts)

```ruby
begin
  # Search for behaviors by providing an FQL filter, sorting, and paging details
  data, status_code, headers = api_instance.query_behaviors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->query_behaviors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_incidents

> <ApiMsaIncidentQueryResponse> query_incidents(opts)

Search for incidents by providing an FQL filter, sorting, and paging details

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IncidentsApi.new
opts = {
  sort: 'assigned_to.asc', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56 # Integer | The maximum records to return. [1-500]
}

begin
  # Search for incidents by providing an FQL filter, sorting, and paging details
  result = api_instance.query_incidents(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->query_incidents: #{e}"
end
```

#### Using the query_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMsaIncidentQueryResponse>, Integer, Hash)> query_incidents_with_http_info(opts)

```ruby
begin
  # Search for incidents by providing an FQL filter, sorting, and paging details
  data, status_code, headers = api_instance.query_incidents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMsaIncidentQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IncidentsApi->query_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |

### Return type

[**ApiMsaIncidentQueryResponse**](ApiMsaIncidentQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

