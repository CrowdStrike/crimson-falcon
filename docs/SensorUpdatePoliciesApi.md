# Falcon::SensorUpdatePoliciesApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sensor_update_policies**](SensorUpdatePoliciesApi.md#create_sensor_update_policies) | **POST** /policy/entities/sensor-update/v1 | Create Sensor Update Policies by specifying details about the policy to create |
| [**create_sensor_update_policies_v2**](SensorUpdatePoliciesApi.md#create_sensor_update_policies_v2) | **POST** /policy/entities/sensor-update/v2 | Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection |
| [**delete_sensor_update_policies**](SensorUpdatePoliciesApi.md#delete_sensor_update_policies) | **DELETE** /policy/entities/sensor-update/v1 | Delete a set of Sensor Update Policies by specifying their IDs |
| [**get_sensor_update_policies**](SensorUpdatePoliciesApi.md#get_sensor_update_policies) | **GET** /policy/entities/sensor-update/v1 | Retrieve a set of Sensor Update Policies by specifying their IDs |
| [**get_sensor_update_policies_v2**](SensorUpdatePoliciesApi.md#get_sensor_update_policies_v2) | **GET** /policy/entities/sensor-update/v2 | Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs |
| [**perform_sensor_update_policies_action**](SensorUpdatePoliciesApi.md#perform_sensor_update_policies_action) | **POST** /policy/entities/sensor-update-actions/v1 | Perform the specified action on the Sensor Update Policies specified in the request |
| [**query_combined_sensor_update_builds**](SensorUpdatePoliciesApi.md#query_combined_sensor_update_builds) | **GET** /policy/combined/sensor-update-builds/v1 | Retrieve available builds for use with Sensor Update Policies |
| [**query_combined_sensor_update_kernels**](SensorUpdatePoliciesApi.md#query_combined_sensor_update_kernels) | **GET** /policy/combined/sensor-update-kernels/v1 | Retrieve kernel compatibility info for Sensor Update Builds |
| [**query_combined_sensor_update_policies**](SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies) | **GET** /policy/combined/sensor-update/v1 | Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria |
| [**query_combined_sensor_update_policies_v2**](SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies_v2) | **GET** /policy/combined/sensor-update/v2 | Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria |
| [**query_combined_sensor_update_policy_members**](SensorUpdatePoliciesApi.md#query_combined_sensor_update_policy_members) | **GET** /policy/combined/sensor-update-members/v1 | Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_sensor_update_kernels_distinct**](SensorUpdatePoliciesApi.md#query_sensor_update_kernels_distinct) | **GET** /policy/queries/sensor-update-kernels/{distinct-field}/v1 | Retrieve kernel compatibility info for Sensor Update Builds |
| [**query_sensor_update_policies**](SensorUpdatePoliciesApi.md#query_sensor_update_policies) | **GET** /policy/queries/sensor-update/v1 | Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria |
| [**query_sensor_update_policy_members**](SensorUpdatePoliciesApi.md#query_sensor_update_policy_members) | **GET** /policy/queries/sensor-update-members/v1 | Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**reveal_uninstall_token**](SensorUpdatePoliciesApi.md#reveal_uninstall_token) | **POST** /policy/combined/reveal-uninstall-token/v1 | Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value &#39;MAINTENANCE&#39; as the value for &#39;device_id&#39; |
| [**set_sensor_update_policies_precedence**](SensorUpdatePoliciesApi.md#set_sensor_update_policies_precedence) | **POST** /policy/entities/sensor-update-precedence/v1 | Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_sensor_update_policies**](SensorUpdatePoliciesApi.md#update_sensor_update_policies) | **PATCH** /policy/entities/sensor-update/v1 | Update Sensor Update Policies by specifying the ID of the policy and details to update |
| [**update_sensor_update_policies_v2**](SensorUpdatePoliciesApi.md#update_sensor_update_policies_v2) | **PATCH** /policy/entities/sensor-update/v2 | Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection |


## create_sensor_update_policies

> <SensorUpdateRespV1> create_sensor_update_policies(body)

Create Sensor Update Policies by specifying details about the policy to create

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::SensorUpdateCreatePoliciesReqV1.new({resources: [Falcon::SensorUpdateCreatePolicyReqV1.new({name: 'name_example', platform_name: 'Windows'})]}) # SensorUpdateCreatePoliciesReqV1 | 

begin
  # Create Sensor Update Policies by specifying details about the policy to create
  result = api_instance.create_sensor_update_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->create_sensor_update_policies: #{e}"
end
```

#### Using the create_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV1>, Integer, Hash)> create_sensor_update_policies_with_http_info(body)

```ruby
begin
  # Create Sensor Update Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_sensor_update_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->create_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SensorUpdateCreatePoliciesReqV1**](SensorUpdateCreatePoliciesReqV1.md) |  |  |

### Return type

[**SensorUpdateRespV1**](SensorUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sensor_update_policies_v2

> <SensorUpdateRespV2> create_sensor_update_policies_v2(body)

Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::SensorUpdateCreatePoliciesReqV2.new({resources: [Falcon::SensorUpdateCreatePolicyReqV2.new({name: 'name_example', platform_name: 'Windows'})]}) # SensorUpdateCreatePoliciesReqV2 | 

begin
  # Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection
  result = api_instance.create_sensor_update_policies_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->create_sensor_update_policies_v2: #{e}"
end
```

#### Using the create_sensor_update_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV2>, Integer, Hash)> create_sensor_update_policies_v2_with_http_info(body)

```ruby
begin
  # Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection
  data, status_code, headers = api_instance.create_sensor_update_policies_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->create_sensor_update_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SensorUpdateCreatePoliciesReqV2**](SensorUpdateCreatePoliciesReqV2.md) |  |  |

### Return type

[**SensorUpdateRespV2**](SensorUpdateRespV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sensor_update_policies

> <MsaQueryResponse> delete_sensor_update_policies(ids)

Delete a set of Sensor Update Policies by specifying their IDs

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Sensor Update Policies to delete

begin
  # Delete a set of Sensor Update Policies by specifying their IDs
  result = api_instance.delete_sensor_update_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->delete_sensor_update_policies: #{e}"
end
```

#### Using the delete_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_sensor_update_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Sensor Update Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_sensor_update_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->delete_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Sensor Update Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_update_policies

> <SensorUpdateRespV1> get_sensor_update_policies(ids)

Retrieve a set of Sensor Update Policies by specifying their IDs

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Sensor Update Policies to return

begin
  # Retrieve a set of Sensor Update Policies by specifying their IDs
  result = api_instance.get_sensor_update_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->get_sensor_update_policies: #{e}"
end
```

#### Using the get_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV1>, Integer, Hash)> get_sensor_update_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Sensor Update Policies by specifying their IDs
  data, status_code, headers = api_instance.get_sensor_update_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->get_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Sensor Update Policies to return |  |

### Return type

[**SensorUpdateRespV1**](SensorUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sensor_update_policies_v2

> <SensorUpdateRespV2> get_sensor_update_policies_v2(ids)

Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Sensor Update Policies to return

begin
  # Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs
  result = api_instance.get_sensor_update_policies_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->get_sensor_update_policies_v2: #{e}"
end
```

#### Using the get_sensor_update_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV2>, Integer, Hash)> get_sensor_update_policies_v2_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs
  data, status_code, headers = api_instance.get_sensor_update_policies_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->get_sensor_update_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Sensor Update Policies to return |  |

### Return type

[**SensorUpdateRespV2**](SensorUpdateRespV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_sensor_update_policies_action

> <SensorUpdateRespV1> perform_sensor_update_policies_action(action_name, body)

Perform the specified action on the Sensor Update Policies specified in the request

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Sensor Update Policies specified in the request
  result = api_instance.perform_sensor_update_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->perform_sensor_update_policies_action: #{e}"
end
```

#### Using the perform_sensor_update_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV1>, Integer, Hash)> perform_sensor_update_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Sensor Update Policies specified in the request
  data, status_code, headers = api_instance.perform_sensor_update_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->perform_sensor_update_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**SensorUpdateRespV1**](SensorUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_sensor_update_builds

> <SensorUpdateBuildsRespV1> query_combined_sensor_update_builds(opts)

Retrieve available builds for use with Sensor Update Policies

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  platform: 'linux', # String | The platform to return builds for
  stage: ['inner_example'] # Array<String> | The stages to return builds for
}

begin
  # Retrieve available builds for use with Sensor Update Policies
  result = api_instance.query_combined_sensor_update_builds(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_builds: #{e}"
end
```

#### Using the query_combined_sensor_update_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateBuildsRespV1>, Integer, Hash)> query_combined_sensor_update_builds_with_http_info(opts)

```ruby
begin
  # Retrieve available builds for use with Sensor Update Policies
  data, status_code, headers = api_instance.query_combined_sensor_update_builds_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateBuildsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to return builds for | [optional] |
| **stage** | [**Array&lt;String&gt;**](String.md) | The stages to return builds for | [optional] |

### Return type

[**SensorUpdateBuildsRespV1**](SensorUpdateBuildsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_sensor_update_kernels

> <SensorUpdateKernelsRespV1> query_combined_sensor_update_kernels(opts)

Retrieve kernel compatibility info for Sensor Update Builds

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56 # Integer | The maximum records to return. [1-500]
}

begin
  # Retrieve kernel compatibility info for Sensor Update Builds
  result = api_instance.query_combined_sensor_update_kernels(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_kernels: #{e}"
end
```

#### Using the query_combined_sensor_update_kernels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateKernelsRespV1>, Integer, Hash)> query_combined_sensor_update_kernels_with_http_info(opts)

```ruby
begin
  # Retrieve kernel compatibility info for Sensor Update Builds
  data, status_code, headers = api_instance.query_combined_sensor_update_kernels_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateKernelsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_kernels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |

### Return type

[**SensorUpdateKernelsRespV1**](SensorUpdateKernelsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_sensor_update_policies

> <SensorUpdateRespV1> query_combined_sensor_update_policies(opts)

Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria
  result = api_instance.query_combined_sensor_update_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policies: #{e}"
end
```

#### Using the query_combined_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV1>, Integer, Hash)> query_combined_sensor_update_policies_with_http_info(opts)

```ruby
begin
  # Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_sensor_update_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**SensorUpdateRespV1**](SensorUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_sensor_update_policies_v2

> <SensorUpdateRespV2> query_combined_sensor_update_policies_v2(opts)

Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria
  result = api_instance.query_combined_sensor_update_policies_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policies_v2: #{e}"
end
```

#### Using the query_combined_sensor_update_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV2>, Integer, Hash)> query_combined_sensor_update_policies_v2_with_http_info(opts)

```ruby
begin
  # Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_sensor_update_policies_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**SensorUpdateRespV2**](SensorUpdateRespV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_sensor_update_policy_members

> <BasePolicyMembersRespV1> query_combined_sensor_update_policy_members(opts)

Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  id: 'id_example', # String | The ID of the Sensor Update Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_sensor_update_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policy_members: #{e}"
end
```

#### Using the query_combined_sensor_update_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_sensor_update_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_sensor_update_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_combined_sensor_update_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Sensor Update Policy to search for members of | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**BasePolicyMembersRespV1**](BasePolicyMembersRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_sensor_update_kernels_distinct

> <MsaQueryResponse> query_sensor_update_kernels_distinct(distinct_field, opts)

Retrieve kernel compatibility info for Sensor Update Builds

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
distinct_field = 'distinct_field_example' # String | The field name to get distinct values for
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56 # Integer | The maximum records to return. [1-500]
}

begin
  # Retrieve kernel compatibility info for Sensor Update Builds
  result = api_instance.query_sensor_update_kernels_distinct(distinct_field, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_kernels_distinct: #{e}"
end
```

#### Using the query_sensor_update_kernels_distinct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_sensor_update_kernels_distinct_with_http_info(distinct_field, opts)

```ruby
begin
  # Retrieve kernel compatibility info for Sensor Update Builds
  data, status_code, headers = api_instance.query_sensor_update_kernels_distinct_with_http_info(distinct_field, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_kernels_distinct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distinct_field** | **String** | The field name to get distinct values for |  |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_sensor_update_policies

> <MsaQueryResponse> query_sensor_update_policies(opts)

Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria
  result = api_instance.query_sensor_update_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_policies: #{e}"
end
```

#### Using the query_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_sensor_update_policies_with_http_info(opts)

```ruby
begin
  # Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria
  data, status_code, headers = api_instance.query_sensor_update_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_sensor_update_policy_members

> <MsaQueryResponse> query_sensor_update_policy_members(opts)

Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
opts = {
  id: 'id_example', # String | The ID of the Sensor Update Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_sensor_update_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_policy_members: #{e}"
end
```

#### Using the query_sensor_update_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_sensor_update_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_sensor_update_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->query_sensor_update_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Sensor Update Policy to search for members of | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reveal_uninstall_token

> <UninstallTokenRespV1> reveal_uninstall_token(body)

Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value 'MAINTENANCE' as the value for 'device_id'

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::UninstallTokenRevealUninstallTokenReqV1.new({device_id: 'device_id_example'}) # UninstallTokenRevealUninstallTokenReqV1 | 

begin
  # Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value 'MAINTENANCE' as the value for 'device_id'
  result = api_instance.reveal_uninstall_token(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->reveal_uninstall_token: #{e}"
end
```

#### Using the reveal_uninstall_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UninstallTokenRespV1>, Integer, Hash)> reveal_uninstall_token_with_http_info(body)

```ruby
begin
  # Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value 'MAINTENANCE' as the value for 'device_id'
  data, status_code, headers = api_instance.reveal_uninstall_token_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UninstallTokenRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->reveal_uninstall_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**UninstallTokenRevealUninstallTokenReqV1**](UninstallTokenRevealUninstallTokenReqV1.md) |  |  |

### Return type

[**UninstallTokenRespV1**](UninstallTokenRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_sensor_update_policies_precedence

> <MsaQueryResponse> set_sensor_update_policies_precedence(body)

Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::BaseSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # BaseSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_sensor_update_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->set_sensor_update_policies_precedence: #{e}"
end
```

#### Using the set_sensor_update_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_sensor_update_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  data, status_code, headers = api_instance.set_sensor_update_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->set_sensor_update_policies_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**BaseSetPolicyPrecedenceReqV1**](BaseSetPolicyPrecedenceReqV1.md) |  |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sensor_update_policies

> <SensorUpdateRespV1> update_sensor_update_policies(body)

Update Sensor Update Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::SensorUpdateUpdatePoliciesReqV1.new({resources: [Falcon::SensorUpdateUpdatePolicyReqV1.new({id: 'id_example'})]}) # SensorUpdateUpdatePoliciesReqV1 | 

begin
  # Update Sensor Update Policies by specifying the ID of the policy and details to update
  result = api_instance.update_sensor_update_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->update_sensor_update_policies: #{e}"
end
```

#### Using the update_sensor_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV1>, Integer, Hash)> update_sensor_update_policies_with_http_info(body)

```ruby
begin
  # Update Sensor Update Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_sensor_update_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->update_sensor_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SensorUpdateUpdatePoliciesReqV1**](SensorUpdateUpdatePoliciesReqV1.md) |  |  |

### Return type

[**SensorUpdateRespV1**](SensorUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sensor_update_policies_v2

> <SensorUpdateRespV2> update_sensor_update_policies_v2(body)

Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection

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

api_instance = Falcon::SensorUpdatePoliciesApi.new
body = Falcon::SensorUpdateUpdatePoliciesReqV2.new({resources: [Falcon::SensorUpdateUpdatePolicyReqV2.new({id: 'id_example'})]}) # SensorUpdateUpdatePoliciesReqV2 | 

begin
  # Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection
  result = api_instance.update_sensor_update_policies_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->update_sensor_update_policies_v2: #{e}"
end
```

#### Using the update_sensor_update_policies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SensorUpdateRespV2>, Integer, Hash)> update_sensor_update_policies_v2_with_http_info(body)

```ruby
begin
  # Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection
  data, status_code, headers = api_instance.update_sensor_update_policies_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SensorUpdateRespV2>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUpdatePoliciesApi->update_sensor_update_policies_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SensorUpdateUpdatePoliciesReqV2**](SensorUpdateUpdatePoliciesReqV2.md) |  |  |

### Return type

[**SensorUpdateRespV2**](SensorUpdateRespV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

