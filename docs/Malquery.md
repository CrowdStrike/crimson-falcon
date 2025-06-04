# Falcon::Malquery

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_mal_query_download_v1**](Malquery.md#get_mal_query_download_v1) | **GET** /malquery/entities/download-files/v1 | Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time |
| [**get_mal_query_entities_samples_fetch_v1**](Malquery.md#get_mal_query_entities_samples_fetch_v1) | **GET** /malquery/entities/samples-fetch/v1 | Fetch a zip archive with password &#39;infected&#39; containing the samples. Call this once the /entities/samples-multidownload request has finished processing |
| [**get_mal_query_metadata_v1**](Malquery.md#get_mal_query_metadata_v1) | **GET** /malquery/entities/metadata/v1 | Retrieve indexed files metadata by their hash |
| [**get_mal_query_quotas_v1**](Malquery.md#get_mal_query_quotas_v1) | **GET** /malquery/aggregates/quotas/v1 | Get information about search and download quotas in your environment |
| [**get_mal_query_request_v1**](Malquery.md#get_mal_query_request_v1) | **GET** /malquery/entities/requests/v1 | Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time. |
| [**post_mal_query_entities_samples_multidownload_v1**](Malquery.md#post_mal_query_entities_samples_multidownload_v1) | **POST** /malquery/entities/samples-multidownload/v1 | Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip |
| [**post_mal_query_exact_search_v1**](Malquery.md#post_mal_query_exact_search_v1) | **POST** /malquery/queries/exact-search/v1 | Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint |
| [**post_mal_query_fuzzy_search_v1**](Malquery.md#post_mal_query_fuzzy_search_v1) | **POST** /malquery/combined/fuzzy-search/v1 | Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. |
| [**post_mal_query_hunt_v1**](Malquery.md#post_mal_query_hunt_v1) | **POST** /malquery/queries/hunt/v1 | Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint |


## get_mal_query_download_v1

> get_mal_query_download_v1(ids)

Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time

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

api_instance = Falcon::Malquery.new
ids = ['inner_example'] # Array<String> | The file SHA256.

begin
  # Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time
  api_instance.get_mal_query_download_v1(ids)
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_download_v1: #{e}"
end
```

#### Using the get_mal_query_download_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_mal_query_download_v1_with_http_info(ids)

```ruby
begin
  # Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time
  data, status_code, headers = api_instance.get_mal_query_download_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_download_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The file SHA256. |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_mal_query_entities_samples_fetch_v1

> get_mal_query_entities_samples_fetch_v1(ids)

Fetch a zip archive with password 'infected' containing the samples. Call this once the /entities/samples-multidownload request has finished processing

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

api_instance = Falcon::Malquery.new
ids = 'ids_example' # String | Multidownload job id

begin
  # Fetch a zip archive with password 'infected' containing the samples. Call this once the /entities/samples-multidownload request has finished processing
  api_instance.get_mal_query_entities_samples_fetch_v1(ids)
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_entities_samples_fetch_v1: #{e}"
end
```

#### Using the get_mal_query_entities_samples_fetch_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_mal_query_entities_samples_fetch_v1_with_http_info(ids)

```ruby
begin
  # Fetch a zip archive with password 'infected' containing the samples. Call this once the /entities/samples-multidownload request has finished processing
  data, status_code, headers = api_instance.get_mal_query_entities_samples_fetch_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_entities_samples_fetch_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Multidownload job id |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/json


## get_mal_query_metadata_v1

> <MalquerySampleMetadataResponse> get_mal_query_metadata_v1(ids)

Retrieve indexed files metadata by their hash

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

api_instance = Falcon::Malquery.new
ids = ['inner_example'] # Array<String> | The file SHA256.

begin
  # Retrieve indexed files metadata by their hash
  result = api_instance.get_mal_query_metadata_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_metadata_v1: #{e}"
end
```

#### Using the get_mal_query_metadata_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalquerySampleMetadataResponse>, Integer, Hash)> get_mal_query_metadata_v1_with_http_info(ids)

```ruby
begin
  # Retrieve indexed files metadata by their hash
  data, status_code, headers = api_instance.get_mal_query_metadata_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalquerySampleMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_metadata_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The file SHA256. |  |

### Return type

[**MalquerySampleMetadataResponse**](MalquerySampleMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mal_query_quotas_v1

> <MalqueryRateLimitsResponse> get_mal_query_quotas_v1

Get information about search and download quotas in your environment

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

api_instance = Falcon::Malquery.new

begin
  # Get information about search and download quotas in your environment
  result = api_instance.get_mal_query_quotas_v1
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_quotas_v1: #{e}"
end
```

#### Using the get_mal_query_quotas_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryRateLimitsResponse>, Integer, Hash)> get_mal_query_quotas_v1_with_http_info

```ruby
begin
  # Get information about search and download quotas in your environment
  data, status_code, headers = api_instance.get_mal_query_quotas_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryRateLimitsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_quotas_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MalqueryRateLimitsResponse**](MalqueryRateLimitsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mal_query_request_v1

> <MalqueryRequestResponse> get_mal_query_request_v1(ids)

Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.

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

api_instance = Falcon::Malquery.new
ids = ['inner_example'] # Array<String> | Identifier of a MalQuery request

begin
  # Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.
  result = api_instance.get_mal_query_request_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_request_v1: #{e}"
end
```

#### Using the get_mal_query_request_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryRequestResponse>, Integer, Hash)> get_mal_query_request_v1_with_http_info(ids)

```ruby
begin
  # Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.
  data, status_code, headers = api_instance.get_mal_query_request_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryRequestResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->get_mal_query_request_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Identifier of a MalQuery request |  |

### Return type

[**MalqueryRequestResponse**](MalqueryRequestResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_mal_query_entities_samples_multidownload_v1

> <MalqueryExternalQueryResponse> post_mal_query_entities_samples_multidownload_v1(body)

Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip

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

api_instance = Falcon::Malquery.new
body = Falcon::MalqueryMultiDownloadRequestV1.new({samples: ['samples_example']}) # MalqueryMultiDownloadRequestV1 | Download request. See model for more details.

begin
  # Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip
  result = api_instance.post_mal_query_entities_samples_multidownload_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_entities_samples_multidownload_v1: #{e}"
end
```

#### Using the post_mal_query_entities_samples_multidownload_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryExternalQueryResponse>, Integer, Hash)> post_mal_query_entities_samples_multidownload_v1_with_http_info(body)

```ruby
begin
  # Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip
  data, status_code, headers = api_instance.post_mal_query_entities_samples_multidownload_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryExternalQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_entities_samples_multidownload_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MalqueryMultiDownloadRequestV1**](MalqueryMultiDownloadRequestV1.md) | Download request. See model for more details. |  |

### Return type

[**MalqueryExternalQueryResponse**](MalqueryExternalQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_mal_query_exact_search_v1

> <MalqueryExternalQueryResponse> post_mal_query_exact_search_v1(body)

Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint

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

api_instance = Falcon::Malquery.new
body = Falcon::MalqueryExternalExactSearchParametersV1.new({patterns: [Falcon::MalquerySearchParameter.new({type: 'type_example', value: 'value_example'})]}) # MalqueryExternalExactSearchParametersV1 | Exact search parameters. See model for more details.

begin
  # Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint
  result = api_instance.post_mal_query_exact_search_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_exact_search_v1: #{e}"
end
```

#### Using the post_mal_query_exact_search_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryExternalQueryResponse>, Integer, Hash)> post_mal_query_exact_search_v1_with_http_info(body)

```ruby
begin
  # Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint
  data, status_code, headers = api_instance.post_mal_query_exact_search_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryExternalQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_exact_search_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MalqueryExternalExactSearchParametersV1**](MalqueryExternalExactSearchParametersV1.md) | Exact search parameters. See model for more details. |  |

### Return type

[**MalqueryExternalQueryResponse**](MalqueryExternalQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_mal_query_fuzzy_search_v1

> <MalqueryFuzzySearchResponse> post_mal_query_fuzzy_search_v1(body)

Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.

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

api_instance = Falcon::Malquery.new
body = Falcon::MalqueryFuzzySearchParametersV1.new({patterns: [Falcon::MalquerySearchParameter.new({type: 'type_example', value: 'value_example'})]}) # MalqueryFuzzySearchParametersV1 | Fuzzy search parameters. See model for more details.

begin
  # Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.
  result = api_instance.post_mal_query_fuzzy_search_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_fuzzy_search_v1: #{e}"
end
```

#### Using the post_mal_query_fuzzy_search_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryFuzzySearchResponse>, Integer, Hash)> post_mal_query_fuzzy_search_v1_with_http_info(body)

```ruby
begin
  # Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.
  data, status_code, headers = api_instance.post_mal_query_fuzzy_search_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryFuzzySearchResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_fuzzy_search_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MalqueryFuzzySearchParametersV1**](MalqueryFuzzySearchParametersV1.md) | Fuzzy search parameters. See model for more details. |  |

### Return type

[**MalqueryFuzzySearchResponse**](MalqueryFuzzySearchResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_mal_query_hunt_v1

> <MalqueryExternalQueryResponse> post_mal_query_hunt_v1(body)

Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint

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

api_instance = Falcon::Malquery.new
body = Falcon::MalqueryExternalHuntParametersV1.new({yara_rule: 'yara_rule_example'}) # MalqueryExternalHuntParametersV1 | Hunt parameters. See model for more details.

begin
  # Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint
  result = api_instance.post_mal_query_hunt_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_hunt_v1: #{e}"
end
```

#### Using the post_mal_query_hunt_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MalqueryExternalQueryResponse>, Integer, Hash)> post_mal_query_hunt_v1_with_http_info(body)

```ruby
begin
  # Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint
  data, status_code, headers = api_instance.post_mal_query_hunt_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MalqueryExternalQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Malquery->post_mal_query_hunt_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MalqueryExternalHuntParametersV1**](MalqueryExternalHuntParametersV1.md) | Hunt parameters. See model for more details. |  |

### Return type

[**MalqueryExternalQueryResponse**](MalqueryExternalQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

