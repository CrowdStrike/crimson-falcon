# Falcon::MlExclusions

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ml_exclusions_v1**](MlExclusions.md#create_ml_exclusions_v1) | **POST** /policy/entities/ml-exclusions/v1 | Create the ML exclusions |
| [**delete_ml_exclusions_v1**](MlExclusions.md#delete_ml_exclusions_v1) | **DELETE** /policy/entities/ml-exclusions/v1 | Delete the ML exclusions by id |
| [**get_ml_exclusions_v1**](MlExclusions.md#get_ml_exclusions_v1) | **GET** /policy/entities/ml-exclusions/v1 | Get a set of ML Exclusions by specifying their IDs |
| [**query_ml_exclusions_v1**](MlExclusions.md#query_ml_exclusions_v1) | **GET** /policy/queries/ml-exclusions/v1 | Search for ML exclusions. |
| [**update_ml_exclusions_v1**](MlExclusions.md#update_ml_exclusions_v1) | **PATCH** /policy/entities/ml-exclusions/v1 | Update the ML exclusions |


## create_ml_exclusions_v1

> <ExclusionsRespV1> create_ml_exclusions_v1(body)

Create the ML exclusions

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

api_instance = Falcon::MlExclusions.new
body = Falcon::ExclusionsCreateReqV1.new # ExclusionsCreateReqV1 | 

begin
  # Create the ML exclusions
  result = api_instance.create_ml_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->create_ml_exclusions_v1: #{e}"
end
```

#### Using the create_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExclusionsRespV1>, Integer, Hash)> create_ml_exclusions_v1_with_http_info(body)

```ruby
begin
  # Create the ML exclusions
  data, status_code, headers = api_instance.create_ml_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExclusionsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->create_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ExclusionsCreateReqV1**](ExclusionsCreateReqV1.md) |  |  |

### Return type

[**ExclusionsRespV1**](ExclusionsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ml_exclusions_v1

> <ExclusionsRespV1> delete_ml_exclusions_v1(ids, opts)

Delete the ML exclusions by id

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

api_instance = Falcon::MlExclusions.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to delete
opts = {
  comment: 'comment_example' # String | Explains why this exclusions was deleted
}

begin
  # Delete the ML exclusions by id
  result = api_instance.delete_ml_exclusions_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->delete_ml_exclusions_v1: #{e}"
end
```

#### Using the delete_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExclusionsRespV1>, Integer, Hash)> delete_ml_exclusions_v1_with_http_info(ids, opts)

```ruby
begin
  # Delete the ML exclusions by id
  data, status_code, headers = api_instance.delete_ml_exclusions_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExclusionsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->delete_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to delete |  |
| **comment** | **String** | Explains why this exclusions was deleted | [optional] |

### Return type

[**ExclusionsRespV1**](ExclusionsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ml_exclusions_v1

> <ExclusionsRespV1> get_ml_exclusions_v1(ids)

Get a set of ML Exclusions by specifying their IDs

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

api_instance = Falcon::MlExclusions.new
ids = ['inner_example'] # Array<String> | The ids of the exclusions to retrieve

begin
  # Get a set of ML Exclusions by specifying their IDs
  result = api_instance.get_ml_exclusions_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->get_ml_exclusions_v1: #{e}"
end
```

#### Using the get_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExclusionsRespV1>, Integer, Hash)> get_ml_exclusions_v1_with_http_info(ids)

```ruby
begin
  # Get a set of ML Exclusions by specifying their IDs
  data, status_code, headers = api_instance.get_ml_exclusions_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExclusionsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->get_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of the exclusions to retrieve |  |

### Return type

[**ExclusionsRespV1**](ExclusionsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_ml_exclusions_v1

> <MsaQueryResponse> query_ml_exclusions_v1(opts)

Search for ML exclusions.

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

api_instance = Falcon::MlExclusions.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results.
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'applied_globally.asc' # String | The sort expression that should be used to sort the results.
}

begin
  # Search for ML exclusions.
  result = api_instance.query_ml_exclusions_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->query_ml_exclusions_v1: #{e}"
end
```

#### Using the query_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_ml_exclusions_v1_with_http_info(opts)

```ruby
begin
  # Search for ML exclusions.
  data, status_code, headers = api_instance.query_ml_exclusions_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->query_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results. | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The sort expression that should be used to sort the results. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ml_exclusions_v1

> <ExclusionsRespV1> update_ml_exclusions_v1(body)

Update the ML exclusions

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

api_instance = Falcon::MlExclusions.new
body = Falcon::SvExclusionsUpdateReqV1.new({id: 'id_example'}) # SvExclusionsUpdateReqV1 | 

begin
  # Update the ML exclusions
  result = api_instance.update_ml_exclusions_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->update_ml_exclusions_v1: #{e}"
end
```

#### Using the update_ml_exclusions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExclusionsRespV1>, Integer, Hash)> update_ml_exclusions_v1_with_http_info(body)

```ruby
begin
  # Update the ML exclusions
  data, status_code, headers = api_instance.update_ml_exclusions_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExclusionsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling MlExclusions->update_ml_exclusions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SvExclusionsUpdateReqV1**](SvExclusionsUpdateReqV1.md) |  |  |

### Return type

[**ExclusionsRespV1**](ExclusionsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

