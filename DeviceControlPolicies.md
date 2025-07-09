# Falcon::DeviceControlPolicies

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_device_control_policies**](DeviceControlPolicies.md#create_device_control_policies) | **POST** /policy/entities/device-control/v1 | Create Device Control Policies by specifying details about the policy to create |
| [**delete_device_control_policies**](DeviceControlPolicies.md#delete_device_control_policies) | **DELETE** /policy/entities/device-control/v1 | Delete a set of Device Control Policies by specifying their IDs |
| [**get_default_device_control_policies**](DeviceControlPolicies.md#get_default_device_control_policies) | **GET** /policy/entities/default-device-control/v1 | Retrieve the configuration for a Default Device Control Policy |
| [**get_device_control_policies**](DeviceControlPolicies.md#get_device_control_policies) | **GET** /policy/entities/device-control/v1 | Retrieve a set of Device Control Policies by specifying their IDs |
| [**perform_device_control_policies_action**](DeviceControlPolicies.md#perform_device_control_policies_action) | **POST** /policy/entities/device-control-actions/v1 | Perform the specified action on the Device Control Policies specified in the request |
| [**query_combined_device_control_policies**](DeviceControlPolicies.md#query_combined_device_control_policies) | **GET** /policy/combined/device-control/v1 | Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria |
| [**query_combined_device_control_policy_members**](DeviceControlPolicies.md#query_combined_device_control_policy_members) | **GET** /policy/combined/device-control-members/v1 | Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_device_control_policies**](DeviceControlPolicies.md#query_device_control_policies) | **GET** /policy/queries/device-control/v1 | Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria |
| [**query_device_control_policy_members**](DeviceControlPolicies.md#query_device_control_policy_members) | **GET** /policy/queries/device-control-members/v1 | Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**set_device_control_policies_precedence**](DeviceControlPolicies.md#set_device_control_policies_precedence) | **POST** /policy/entities/device-control-precedence/v1 | Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_default_device_control_policies**](DeviceControlPolicies.md#update_default_device_control_policies) | **PATCH** /policy/entities/default-device-control/v1 | Update the configuration for a Default Device Control Policy |
| [**update_device_control_policies**](DeviceControlPolicies.md#update_device_control_policies) | **PATCH** /policy/entities/device-control/v1 | Update Device Control Policies by specifying the ID of the policy and details to update |


## create_device_control_policies

> <DeviceControlRespV2> create_device_control_policies(body)

Create Device Control Policies by specifying details about the policy to create

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

api_instance = Falcon::DeviceControlPolicies.new
body = Falcon::DeviceControlCreatePoliciesV1.new({resources: [Falcon::DeviceControlCreatePolicyReqV1.new({name: 'name_example', platform_name: 'Windows'})]}) # DeviceControlCreatePoliciesV1 | 

begin
  # Create Device Control Policies by specifying details about the policy to create
  result = api_instance.create_device_control_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->create_device_control_policies: #{e}"
end
```

#### Using the create_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV2>, Integer, Hash)> create_device_control_policies_with_http_info(body)

```ruby
begin
  # Create Device Control Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_device_control_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV2>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->create_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeviceControlCreatePoliciesV1**](DeviceControlCreatePoliciesV1.md) |  |  |

### Return type

[**DeviceControlRespV2**](DeviceControlRespV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_device_control_policies

> <MsaQueryResponse> delete_device_control_policies(ids)

Delete a set of Device Control Policies by specifying their IDs

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

api_instance = Falcon::DeviceControlPolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Device Control Policies to delete

begin
  # Delete a set of Device Control Policies by specifying their IDs
  result = api_instance.delete_device_control_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->delete_device_control_policies: #{e}"
end
```

#### Using the delete_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_device_control_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Device Control Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_device_control_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->delete_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Device Control Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_default_device_control_policies

> <DeviceControlRespV1> get_default_device_control_policies

Retrieve the configuration for a Default Device Control Policy

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

api_instance = Falcon::DeviceControlPolicies.new

begin
  # Retrieve the configuration for a Default Device Control Policy
  result = api_instance.get_default_device_control_policies
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->get_default_device_control_policies: #{e}"
end
```

#### Using the get_default_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> get_default_device_control_policies_with_http_info

```ruby
begin
  # Retrieve the configuration for a Default Device Control Policy
  data, status_code, headers = api_instance.get_default_device_control_policies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->get_default_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_control_policies

> <DeviceControlRespV1> get_device_control_policies(ids)

Retrieve a set of Device Control Policies by specifying their IDs

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

api_instance = Falcon::DeviceControlPolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Device Control Policies to return

begin
  # Retrieve a set of Device Control Policies by specifying their IDs
  result = api_instance.get_device_control_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->get_device_control_policies: #{e}"
end
```

#### Using the get_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> get_device_control_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Device Control Policies by specifying their IDs
  data, status_code, headers = api_instance.get_device_control_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->get_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Device Control Policies to return |  |

### Return type

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_device_control_policies_action

> <DeviceControlRespV1> perform_device_control_policies_action(action_name, body)

Perform the specified action on the Device Control Policies specified in the request

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

api_instance = Falcon::DeviceControlPolicies.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Device Control Policies specified in the request
  result = api_instance.perform_device_control_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->perform_device_control_policies_action: #{e}"
end
```

#### Using the perform_device_control_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> perform_device_control_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Device Control Policies specified in the request
  data, status_code, headers = api_instance.perform_device_control_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->perform_device_control_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_device_control_policies

> <DeviceControlRespV1> query_combined_device_control_policies(opts)

Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria

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

api_instance = Falcon::DeviceControlPolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria
  result = api_instance.query_combined_device_control_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_combined_device_control_policies: #{e}"
end
```

#### Using the query_combined_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> query_combined_device_control_policies_with_http_info(opts)

```ruby
begin
  # Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_device_control_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_combined_device_control_policies_with_http_info: #{e}"
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

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_device_control_policy_members

> <BasePolicyMembersRespV1> query_combined_device_control_policy_members(opts)

Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::DeviceControlPolicies.new
opts = {
  id: 'id_example', # String | The ID of the Device Control Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_device_control_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_combined_device_control_policy_members: #{e}"
end
```

#### Using the query_combined_device_control_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_device_control_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_device_control_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_combined_device_control_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Device Control Policy to search for members of | [optional] |
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


## query_device_control_policies

> <MsaQueryResponse> query_device_control_policies(opts)

Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria

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

api_instance = Falcon::DeviceControlPolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria
  result = api_instance.query_device_control_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_device_control_policies: #{e}"
end
```

#### Using the query_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_device_control_policies_with_http_info(opts)

```ruby
begin
  # Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria
  data, status_code, headers = api_instance.query_device_control_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_device_control_policies_with_http_info: #{e}"
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


## query_device_control_policy_members

> <MsaQueryResponse> query_device_control_policy_members(opts)

Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::DeviceControlPolicies.new
opts = {
  id: 'id_example', # String | The ID of the Device Control Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_device_control_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_device_control_policy_members: #{e}"
end
```

#### Using the query_device_control_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_device_control_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_device_control_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->query_device_control_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Device Control Policy to search for members of | [optional] |
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


## set_device_control_policies_precedence

> <MsaQueryResponse> set_device_control_policies_precedence(body)

Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

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

api_instance = Falcon::DeviceControlPolicies.new
body = Falcon::BaseSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # BaseSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_device_control_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->set_device_control_policies_precedence: #{e}"
end
```

#### Using the set_device_control_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_device_control_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  data, status_code, headers = api_instance.set_device_control_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->set_device_control_policies_precedence_with_http_info: #{e}"
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


## update_default_device_control_policies

> <DeviceControlRespV1> update_default_device_control_policies(body)

Update the configuration for a Default Device Control Policy

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

api_instance = Falcon::DeviceControlPolicies.new
body = Falcon::DeviceControlReqUpdateDefaultDCPolicyV1.new # DeviceControlReqUpdateDefaultDCPolicyV1 | 

begin
  # Update the configuration for a Default Device Control Policy
  result = api_instance.update_default_device_control_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->update_default_device_control_policies: #{e}"
end
```

#### Using the update_default_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> update_default_device_control_policies_with_http_info(body)

```ruby
begin
  # Update the configuration for a Default Device Control Policy
  data, status_code, headers = api_instance.update_default_device_control_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->update_default_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeviceControlReqUpdateDefaultDCPolicyV1**](DeviceControlReqUpdateDefaultDCPolicyV1.md) |  |  |

### Return type

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_device_control_policies

> <DeviceControlRespV1> update_device_control_policies(body)

Update Device Control Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::DeviceControlPolicies.new
body = Falcon::DeviceControlUpdatePoliciesReqV1.new({resources: [Falcon::DeviceControlUpdatePolicyReqV1.new({id: 'id_example', settings: Falcon::DeviceControlSettingsReqV1.new({classes: [Falcon::DeviceControlUSBClassExceptionsReqV1.new({action: 'FULL_ACCESS', exceptions: [Falcon::DeviceControlExceptionReqV1.new], id: 'id_example'})], delete_exceptions: ['delete_exceptions_example'], end_user_notification: 'SILENT', enforcement_mode: 'MONITOR_ONLY'})})]}) # DeviceControlUpdatePoliciesReqV1 | 

begin
  # Update Device Control Policies by specifying the ID of the policy and details to update
  result = api_instance.update_device_control_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->update_device_control_policies: #{e}"
end
```

#### Using the update_device_control_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceControlRespV1>, Integer, Hash)> update_device_control_policies_with_http_info(body)

```ruby
begin
  # Update Device Control Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_device_control_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceControlRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling DeviceControlPolicies->update_device_control_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeviceControlUpdatePoliciesReqV1**](DeviceControlUpdatePoliciesReqV1.md) |  |  |

### Return type

[**DeviceControlRespV1**](DeviceControlRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

