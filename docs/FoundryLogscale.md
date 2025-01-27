# Falcon::FoundryLogscale

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_saved_searches_dynamic_execute_alt_v1**](FoundryLogscale.md#create_saved_searches_dynamic_execute_alt_v1) | **POST** /loggingapi/entities/saved-searches-dynamic-execute/v1 | Execute a dynamic saved search |
| [**create_saved_searches_dynamic_execute_v1**](FoundryLogscale.md#create_saved_searches_dynamic_execute_v1) | **POST** /loggingapi/entities/saved-searches/execute-dynamic/v1 | Execute a dynamic saved search |
| [**create_saved_searches_execute_alt_v1**](FoundryLogscale.md#create_saved_searches_execute_alt_v1) | **POST** /loggingapi/entities/saved-searches-execute/v1 | Execute a saved search |
| [**create_saved_searches_execute_v1**](FoundryLogscale.md#create_saved_searches_execute_v1) | **POST** /loggingapi/entities/saved-searches/execute/v1 | Execute a saved search |
| [**create_saved_searches_ingest_alt_v1**](FoundryLogscale.md#create_saved_searches_ingest_alt_v1) | **POST** /loggingapi/entities/saved-searches-ingest/v1 | Populate a saved search |
| [**create_saved_searches_ingest_v1**](FoundryLogscale.md#create_saved_searches_ingest_v1) | **POST** /loggingapi/entities/saved-searches/ingest/v1 | Populate a saved search |
| [**get_saved_searches_execute_alt_v1**](FoundryLogscale.md#get_saved_searches_execute_alt_v1) | **GET** /loggingapi/entities/saved-searches-execute/v1 | Get the results of a saved search |
| [**get_saved_searches_execute_v1**](FoundryLogscale.md#get_saved_searches_execute_v1) | **GET** /loggingapi/entities/saved-searches/execute/v1 | Get the results of a saved search |
| [**get_saved_searches_job_results_download_alt_v1**](FoundryLogscale.md#get_saved_searches_job_results_download_alt_v1) | **GET** /loggingapi/entities/saved-searches-job-results-download/v1 | Get the results of a saved search as a file |
| [**get_saved_searches_job_results_download_v1**](FoundryLogscale.md#get_saved_searches_job_results_download_v1) | **GET** /loggingapi/entities/saved-searches/job-results-download/v1 | Get the results of a saved search as a file |
| [**ingest_data_async_v1**](FoundryLogscale.md#ingest_data_async_v1) | **POST** /loggingapi/entities/data-ingestion/ingest-async/v1 | Asynchronously ingest data into the application repository |
| [**ingest_data_v1**](FoundryLogscale.md#ingest_data_v1) | **POST** /loggingapi/entities/data-ingestion/ingest/v1 | Synchronously ingest data into the application repository |
| [**list_repos_v1**](FoundryLogscale.md#list_repos_v1) | **GET** /loggingapi/combined/repos/v1 | Lists available repositories and views |
| [**list_view_v1**](FoundryLogscale.md#list_view_v1) | **GET** /loggingapi/entities/views/v1 | List views |


## create_saved_searches_dynamic_execute_alt_v1

> <ApidomainQueryResponseWrapperV1> create_saved_searches_dynamic_execute_alt_v1(body, opts)

Execute a dynamic saved search

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

api_instance = Falcon::FoundryLogscale.new
body = Falcon::ApidomainDynamicExecuteSearchRequestV1.new({repo_or_view: 'repo_or_view_example', search_query: 'search_query_example', search_query_args: 3.56}) # ApidomainDynamicExecuteSearchRequestV1 | 
opts = {
  app_id: 'app_id_example', # String | Application ID.
  include_schema_generation: true, # Boolean | Include generated schemas in the response
  include_test_data: true, # Boolean | Include test data when executing searches
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  mode: 'sync', # String | Mode to execute the query under.
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Execute a dynamic saved search
  result = api_instance.create_saved_searches_dynamic_execute_alt_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_dynamic_execute_alt_v1: #{e}"
end
```

#### Using the create_saved_searches_dynamic_execute_alt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> create_saved_searches_dynamic_execute_alt_v1_with_http_info(body, opts)

```ruby
begin
  # Execute a dynamic saved search
  data, status_code, headers = api_instance.create_saved_searches_dynamic_execute_alt_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_dynamic_execute_alt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApidomainDynamicExecuteSearchRequestV1**](ApidomainDynamicExecuteSearchRequestV1.md) |  |  |
| **app_id** | **String** | Application ID. | [optional] |
| **include_schema_generation** | **Boolean** | Include generated schemas in the response | [optional][default to false] |
| **include_test_data** | **Boolean** | Include test data when executing searches | [optional][default to false] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **mode** | **String** | Mode to execute the query under. | [optional] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_saved_searches_dynamic_execute_v1

> <ApidomainQueryResponseWrapperV1> create_saved_searches_dynamic_execute_v1(body, opts)

Execute a dynamic saved search

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

api_instance = Falcon::FoundryLogscale.new
body = Falcon::ApidomainDynamicExecuteSearchRequestV1.new({repo_or_view: 'repo_or_view_example', search_query: 'search_query_example', search_query_args: 3.56}) # ApidomainDynamicExecuteSearchRequestV1 | 
opts = {
  app_id: 'app_id_example', # String | Application ID.
  include_schema_generation: true, # Boolean | Include generated schemas in the response
  include_test_data: true, # Boolean | Include test data when executing searches
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  mode: 'sync', # String | Mode to execute the query under.
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Execute a dynamic saved search
  result = api_instance.create_saved_searches_dynamic_execute_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_dynamic_execute_v1: #{e}"
end
```

#### Using the create_saved_searches_dynamic_execute_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> create_saved_searches_dynamic_execute_v1_with_http_info(body, opts)

```ruby
begin
  # Execute a dynamic saved search
  data, status_code, headers = api_instance.create_saved_searches_dynamic_execute_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_dynamic_execute_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApidomainDynamicExecuteSearchRequestV1**](ApidomainDynamicExecuteSearchRequestV1.md) |  |  |
| **app_id** | **String** | Application ID. | [optional] |
| **include_schema_generation** | **Boolean** | Include generated schemas in the response | [optional][default to false] |
| **include_test_data** | **Boolean** | Include test data when executing searches | [optional][default to false] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **mode** | **String** | Mode to execute the query under. | [optional] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_saved_searches_execute_alt_v1

> <ApidomainQueryResponseWrapperV1> create_saved_searches_execute_alt_v1(body, opts)

Execute a saved search

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

api_instance = Falcon::FoundryLogscale.new
body = Falcon::ApidomainSavedSearchExecuteRequestV1.new # ApidomainSavedSearchExecuteRequestV1 | 
opts = {
  app_id: 'app_id_example', # String | Application ID.
  detailed: true, # Boolean | Whether to include search field details
  include_test_data: true, # Boolean | Include test data when executing searches
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Execute a saved search
  result = api_instance.create_saved_searches_execute_alt_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_execute_alt_v1: #{e}"
end
```

#### Using the create_saved_searches_execute_alt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> create_saved_searches_execute_alt_v1_with_http_info(body, opts)

```ruby
begin
  # Execute a saved search
  data, status_code, headers = api_instance.create_saved_searches_execute_alt_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_execute_alt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApidomainSavedSearchExecuteRequestV1**](ApidomainSavedSearchExecuteRequestV1.md) |  |  |
| **app_id** | **String** | Application ID. | [optional] |
| **detailed** | **Boolean** | Whether to include search field details | [optional][default to false] |
| **include_test_data** | **Boolean** | Include test data when executing searches | [optional][default to false] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_saved_searches_execute_v1

> <ApidomainQueryResponseWrapperV1> create_saved_searches_execute_v1(body, opts)

Execute a saved search

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

api_instance = Falcon::FoundryLogscale.new
body = Falcon::ApidomainSavedSearchExecuteRequestV1.new # ApidomainSavedSearchExecuteRequestV1 | 
opts = {
  app_id: 'app_id_example', # String | Application ID.
  detailed: true, # Boolean | Whether to include search field details
  include_test_data: true, # Boolean | Include test data when executing searches
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Execute a saved search
  result = api_instance.create_saved_searches_execute_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_execute_v1: #{e}"
end
```

#### Using the create_saved_searches_execute_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> create_saved_searches_execute_v1_with_http_info(body, opts)

```ruby
begin
  # Execute a saved search
  data, status_code, headers = api_instance.create_saved_searches_execute_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_execute_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApidomainSavedSearchExecuteRequestV1**](ApidomainSavedSearchExecuteRequestV1.md) |  |  |
| **app_id** | **String** | Application ID. | [optional] |
| **detailed** | **Boolean** | Whether to include search field details | [optional][default to false] |
| **include_test_data** | **Boolean** | Include test data when executing searches | [optional][default to false] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_saved_searches_ingest_alt_v1

> <ClientDataIngestResponseWrapperV1> create_saved_searches_ingest_alt_v1(opts)

Populate a saved search

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  app_id: 'app_id_example' # String | Application ID.
}

begin
  # Populate a saved search
  result = api_instance.create_saved_searches_ingest_alt_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_ingest_alt_v1: #{e}"
end
```

#### Using the create_saved_searches_ingest_alt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDataIngestResponseWrapperV1>, Integer, Hash)> create_saved_searches_ingest_alt_v1_with_http_info(opts)

```ruby
begin
  # Populate a saved search
  data, status_code, headers = api_instance.create_saved_searches_ingest_alt_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDataIngestResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_ingest_alt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Application ID. | [optional] |

### Return type

[**ClientDataIngestResponseWrapperV1**](ClientDataIngestResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_saved_searches_ingest_v1

> <ClientDataIngestResponseWrapperV1> create_saved_searches_ingest_v1(opts)

Populate a saved search

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  app_id: 'app_id_example' # String | Application ID.
}

begin
  # Populate a saved search
  result = api_instance.create_saved_searches_ingest_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_ingest_v1: #{e}"
end
```

#### Using the create_saved_searches_ingest_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDataIngestResponseWrapperV1>, Integer, Hash)> create_saved_searches_ingest_v1_with_http_info(opts)

```ruby
begin
  # Populate a saved search
  data, status_code, headers = api_instance.create_saved_searches_ingest_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDataIngestResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->create_saved_searches_ingest_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Application ID. | [optional] |

### Return type

[**ClientDataIngestResponseWrapperV1**](ClientDataIngestResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_saved_searches_execute_alt_v1

> <ApidomainQueryResponseWrapperV1> get_saved_searches_execute_alt_v1(job_id, opts)

Get the results of a saved search

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

api_instance = Falcon::FoundryLogscale.new
job_id = 'job_id_example' # String | Job ID for a previously executed async query
opts = {
  app_id: 'app_id_example', # String | Application ID.
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  job_status_only: true, # Boolean | If set to true, result rows are dropped from the response and only the job status is returned
  limit: 'limit_example', # String | Maximum number of records to return.
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Get the results of a saved search
  result = api_instance.get_saved_searches_execute_alt_v1(job_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_execute_alt_v1: #{e}"
end
```

#### Using the get_saved_searches_execute_alt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> get_saved_searches_execute_alt_v1_with_http_info(job_id, opts)

```ruby
begin
  # Get the results of a saved search
  data, status_code, headers = api_instance.get_saved_searches_execute_alt_v1_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_execute_alt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Job ID for a previously executed async query |  |
| **app_id** | **String** | Application ID. | [optional] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **job_status_only** | **Boolean** | If set to true, result rows are dropped from the response and only the job status is returned | [optional][default to false] |
| **limit** | **String** | Maximum number of records to return. | [optional] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **offset** | **String** | Starting pagination offset of records to return. | [optional] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_saved_searches_execute_v1

> <ApidomainQueryResponseWrapperV1> get_saved_searches_execute_v1(job_id, opts)

Get the results of a saved search

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

api_instance = Falcon::FoundryLogscale.new
job_id = 'job_id_example' # String | Job ID for a previously executed async query
opts = {
  app_id: 'app_id_example', # String | Application ID.
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  job_status_only: true, # Boolean | If set to true, result rows are dropped from the response and only the job status is returned
  limit: 'limit_example', # String | Maximum number of records to return.
  match_response_schema: true, # Boolean | Whether to validate search results against their schema
  metadata: true, # Boolean | Whether to include metadata in the response
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  x_cs_useruuid: 'x_cs_useruuid_example' # String | Requester UUID.
}

begin
  # Get the results of a saved search
  result = api_instance.get_saved_searches_execute_v1(job_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_execute_v1: #{e}"
end
```

#### Using the get_saved_searches_execute_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainQueryResponseWrapperV1>, Integer, Hash)> get_saved_searches_execute_v1_with_http_info(job_id, opts)

```ruby
begin
  # Get the results of a saved search
  data, status_code, headers = api_instance.get_saved_searches_execute_v1_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainQueryResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_execute_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Job ID for a previously executed async query |  |
| **app_id** | **String** | Application ID. | [optional] |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **job_status_only** | **Boolean** | If set to true, result rows are dropped from the response and only the job status is returned | [optional][default to false] |
| **limit** | **String** | Maximum number of records to return. | [optional] |
| **match_response_schema** | **Boolean** | Whether to validate search results against their schema | [optional][default to false] |
| **metadata** | **Boolean** | Whether to include metadata in the response | [optional][default to false] |
| **offset** | **String** | Starting pagination offset of records to return. | [optional] |
| **x_cs_useruuid** | **String** | Requester UUID. | [optional] |

### Return type

[**ApidomainQueryResponseWrapperV1**](ApidomainQueryResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_saved_searches_job_results_download_alt_v1

> File get_saved_searches_job_results_download_alt_v1(job_id, opts)

Get the results of a saved search as a file

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

api_instance = Falcon::FoundryLogscale.new
job_id = 'job_id_example' # String | Job ID for a previously executed async query
opts = {
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  result_format: 'json' # String | Result Format
}

begin
  # Get the results of a saved search as a file
  result = api_instance.get_saved_searches_job_results_download_alt_v1(job_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_job_results_download_alt_v1: #{e}"
end
```

#### Using the get_saved_searches_job_results_download_alt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_saved_searches_job_results_download_alt_v1_with_http_info(job_id, opts)

```ruby
begin
  # Get the results of a saved search as a file
  data, status_code, headers = api_instance.get_saved_searches_job_results_download_alt_v1_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_job_results_download_alt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Job ID for a previously executed async query |  |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **result_format** | **String** | Result Format | [optional] |

### Return type

**File**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, text/csv, application/json


## get_saved_searches_job_results_download_v1

> File get_saved_searches_job_results_download_v1(job_id, opts)

Get the results of a saved search as a file

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

api_instance = Falcon::FoundryLogscale.new
job_id = 'job_id_example' # String | Job ID for a previously executed async query
opts = {
  infer_json_types: true, # Boolean | Whether to try to infer data types in json event response instead of returning map[string]string
  result_format: 'json' # String | Result Format
}

begin
  # Get the results of a saved search as a file
  result = api_instance.get_saved_searches_job_results_download_v1(job_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_job_results_download_v1: #{e}"
end
```

#### Using the get_saved_searches_job_results_download_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_saved_searches_job_results_download_v1_with_http_info(job_id, opts)

```ruby
begin
  # Get the results of a saved search as a file
  data, status_code, headers = api_instance.get_saved_searches_job_results_download_v1_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->get_saved_searches_job_results_download_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Job ID for a previously executed async query |  |
| **infer_json_types** | **Boolean** | Whether to try to infer data types in json event response instead of returning map[string]string | [optional][default to false] |
| **result_format** | **String** | Result Format | [optional] |

### Return type

**File**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, text/csv, application/json


## ingest_data_async_v1

> <ClientDataIngestResponseWrapperV1> ingest_data_async_v1(opts)

Asynchronously ingest data into the application repository

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  data_content: 'data_content_example', # String | JSON data to ingest
  data_file: File.new('/path/to/some/file'), # File | Data file to ingest
  repo: 'repo_example', # String | Repository name if not part of a foundry app
  tag: ['inner_example'], # Array<String> | Custom tag for ingested data in the form tag:value
  tag_source: 'tag_source_example', # String | Tag the data with the specified source
  test_data: true # Boolean | Tag the data with test-ingest
}

begin
  # Asynchronously ingest data into the application repository
  result = api_instance.ingest_data_async_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->ingest_data_async_v1: #{e}"
end
```

#### Using the ingest_data_async_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDataIngestResponseWrapperV1>, Integer, Hash)> ingest_data_async_v1_with_http_info(opts)

```ruby
begin
  # Asynchronously ingest data into the application repository
  data, status_code, headers = api_instance.ingest_data_async_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDataIngestResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->ingest_data_async_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_content** | **String** | JSON data to ingest | [optional] |
| **data_file** | **File** | Data file to ingest | [optional] |
| **repo** | **String** | Repository name if not part of a foundry app | [optional] |
| **tag** | [**Array&lt;String&gt;**](String.md) | Custom tag for ingested data in the form tag:value | [optional] |
| **tag_source** | **String** | Tag the data with the specified source | [optional] |
| **test_data** | **Boolean** | Tag the data with test-ingest | [optional][default to false] |

### Return type

[**ClientDataIngestResponseWrapperV1**](ClientDataIngestResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## ingest_data_v1

> <ClientDataIngestResponseWrapperV1> ingest_data_v1(opts)

Synchronously ingest data into the application repository

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  data_content: 'data_content_example', # String | JSON data to ingest
  data_file: File.new('/path/to/some/file'), # File | Data file to ingest
  tag: ['inner_example'], # Array<String> | Custom tag for ingested data in the form tag:value
  tag_source: 'tag_source_example', # String | Tag the data with the specified source
  test_data: true # Boolean | Tag the data with test-ingest
}

begin
  # Synchronously ingest data into the application repository
  result = api_instance.ingest_data_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->ingest_data_v1: #{e}"
end
```

#### Using the ingest_data_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDataIngestResponseWrapperV1>, Integer, Hash)> ingest_data_v1_with_http_info(opts)

```ruby
begin
  # Synchronously ingest data into the application repository
  data, status_code, headers = api_instance.ingest_data_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDataIngestResponseWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->ingest_data_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_content** | **String** | JSON data to ingest | [optional] |
| **data_file** | **File** | Data file to ingest | [optional] |
| **tag** | [**Array&lt;String&gt;**](String.md) | Custom tag for ingested data in the form tag:value | [optional] |
| **tag_source** | **String** | Tag the data with the specified source | [optional] |
| **test_data** | **Boolean** | Tag the data with test-ingest | [optional][default to false] |

### Return type

[**ClientDataIngestResponseWrapperV1**](ClientDataIngestResponseWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_repos_v1

> <ApidomainRepoViewListItemWrapperV1> list_repos_v1(opts)

Lists available repositories and views

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  check_test_data: true # Boolean | Include whether test data is present in the application repository
}

begin
  # Lists available repositories and views
  result = api_instance.list_repos_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->list_repos_v1: #{e}"
end
```

#### Using the list_repos_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainRepoViewListItemWrapperV1>, Integer, Hash)> list_repos_v1_with_http_info(opts)

```ruby
begin
  # Lists available repositories and views
  data, status_code, headers = api_instance.list_repos_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainRepoViewListItemWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->list_repos_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_test_data** | **Boolean** | Include whether test data is present in the application repository | [optional][default to false] |

### Return type

[**ApidomainRepoViewListItemWrapperV1**](ApidomainRepoViewListItemWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_view_v1

> <ApidomainRepoViewListItemWrapperV1> list_view_v1(opts)

List views

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

api_instance = Falcon::FoundryLogscale.new
opts = {
  check_test_data: true # Boolean | Include whether test data is present in the application repository
}

begin
  # List views
  result = api_instance.list_view_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->list_view_v1: #{e}"
end
```

#### Using the list_view_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApidomainRepoViewListItemWrapperV1>, Integer, Hash)> list_view_v1_with_http_info(opts)

```ruby
begin
  # List views
  data, status_code, headers = api_instance.list_view_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApidomainRepoViewListItemWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling FoundryLogscale->list_view_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_test_data** | **Boolean** | Include whether test data is present in the application repository | [optional][default to false] |

### Return type

[**ApidomainRepoViewListItemWrapperV1**](ApidomainRepoViewListItemWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

