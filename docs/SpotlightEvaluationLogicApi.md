# Falcon::SpotlightEvaluationLogic

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_query_evaluation_logic**](SpotlightEvaluationLogic.md#combined_query_evaluation_logic) | **GET** /spotlight/combined/evaluation-logic/v1 | Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria. |
| [**get_evaluation_logic**](SpotlightEvaluationLogic.md#get_evaluation_logic) | **GET** /spotlight/entities/evaluation-logic/v1 | Get details on evaluation logic items by providing one or more IDs. |
| [**query_evaluation_logic**](SpotlightEvaluationLogic.md#query_evaluation_logic) | **GET** /spotlight/queries/evaluation-logic/v1 | Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria. |


## combined_query_evaluation_logic

> <DomainSPAPIEvaluationLogicCombinedResponseV1> combined_query_evaluation_logic(filter, opts)

Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.

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

api_instance = Falcon::SpotlightEvaluationLogic.new
filter = 'filter_example' # String | FQL query specifying the filter parameters.
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | Maximum number of entities to return.
  sort: 'sort_example' # String | Sort evaluation logic by their properties.
}

begin
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.
  result = api_instance.combined_query_evaluation_logic(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->combined_query_evaluation_logic: #{e}"
end
```

#### Using the combined_query_evaluation_logic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIEvaluationLogicCombinedResponseV1>, Integer, Hash)> combined_query_evaluation_logic_with_http_info(filter, opts)

```ruby
begin
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.
  data, status_code, headers = api_instance.combined_query_evaluation_logic_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIEvaluationLogicCombinedResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->combined_query_evaluation_logic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying the filter parameters. |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Maximum number of entities to return. | [optional] |
| **sort** | **String** | Sort evaluation logic by their properties. | [optional] |

### Return type

[**DomainSPAPIEvaluationLogicCombinedResponseV1**](DomainSPAPIEvaluationLogicCombinedResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_evaluation_logic

> <DomainSPAPIEvaluationLogicEntitiesResponseV1> get_evaluation_logic(ids)

Get details on evaluation logic items by providing one or more IDs.

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

api_instance = Falcon::SpotlightEvaluationLogic.new
ids = ['inner_example'] # Array<String> | One or more evaluation logic IDs.

begin
  # Get details on evaluation logic items by providing one or more IDs.
  result = api_instance.get_evaluation_logic(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->get_evaluation_logic: #{e}"
end
```

#### Using the get_evaluation_logic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIEvaluationLogicEntitiesResponseV1>, Integer, Hash)> get_evaluation_logic_with_http_info(ids)

```ruby
begin
  # Get details on evaluation logic items by providing one or more IDs.
  data, status_code, headers = api_instance.get_evaluation_logic_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIEvaluationLogicEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->get_evaluation_logic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more evaluation logic IDs. |  |

### Return type

[**DomainSPAPIEvaluationLogicEntitiesResponseV1**](DomainSPAPIEvaluationLogicEntitiesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_evaluation_logic

> <DomainSPAPIQueryResponse> query_evaluation_logic(filter, opts)

Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.

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

api_instance = Falcon::SpotlightEvaluationLogic.new
filter = 'filter_example' # String | FQL query specifying the filter parameters.
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | Maximum number of entities to return.
  sort: 'sort_example' # String | Sort evaluation logic by their properties.
}

begin
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.
  result = api_instance.query_evaluation_logic(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->query_evaluation_logic: #{e}"
end
```

#### Using the query_evaluation_logic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIQueryResponse>, Integer, Hash)> query_evaluation_logic_with_http_info(filter, opts)

```ruby
begin
  # Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_evaluation_logic_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightEvaluationLogic->query_evaluation_logic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying the filter parameters. |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | Maximum number of entities to return. | [optional] |
| **sort** | **String** | Sort evaluation logic by their properties. | [optional] |

### Return type

[**DomainSPAPIQueryResponse**](DomainSPAPIQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

