# Falcon::ResponsePolicies

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rt_response_policies**](ResponsePolicies.md#create_rt_response_policies) | **POST** /policy/entities/response/v1 | Create Response Policies by specifying details about the policy to create |
| [**delete_rt_response_policies**](ResponsePolicies.md#delete_rt_response_policies) | **DELETE** /policy/entities/response/v1 | Delete a set of Response Policies by specifying their IDs |
| [**get_rt_response_policies**](ResponsePolicies.md#get_rt_response_policies) | **GET** /policy/entities/response/v1 | Retrieve a set of Response Policies by specifying their IDs |
| [**perform_rt_response_policies_action**](ResponsePolicies.md#perform_rt_response_policies_action) | **POST** /policy/entities/response-actions/v1 | Perform the specified action on the Response Policies specified in the request |
| [**query_combined_rt_response_policies**](ResponsePolicies.md#query_combined_rt_response_policies) | **GET** /policy/combined/response/v1 | Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria |
| [**query_combined_rt_response_policy_members**](ResponsePolicies.md#query_combined_rt_response_policy_members) | **GET** /policy/combined/response-members/v1 | Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_rt_response_policies**](ResponsePolicies.md#query_rt_response_policies) | **GET** /policy/queries/response/v1 | Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria. |
| [**query_rt_response_policy_members**](ResponsePolicies.md#query_rt_response_policy_members) | **GET** /policy/queries/response-members/v1 | Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**set_rt_response_policies_precedence**](ResponsePolicies.md#set_rt_response_policies_precedence) | **POST** /policy/entities/response-precedence/v1 | Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_rt_response_policies**](ResponsePolicies.md#update_rt_response_policies) | **PATCH** /policy/entities/response/v1 | Update Response Policies by specifying the ID of the policy and details to update |


## create_rt_response_policies

> <RemoteResponseRespV1> create_rt_response_policies(body)

Create Response Policies by specifying details about the policy to create

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

api_instance = Falcon::ResponsePolicies.new
body = Falcon::RemoteResponseCreatePoliciesV1.new({resources: [Falcon::RemoteResponseCreatePolicyReqV1.new({name: 'name_example', platform_name: 'Windows'})]}) # RemoteResponseCreatePoliciesV1 | 

begin
  # Create Response Policies by specifying details about the policy to create
  result = api_instance.create_rt_response_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->create_rt_response_policies: #{e}"
end
```

#### Using the create_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponseRespV1>, Integer, Hash)> create_rt_response_policies_with_http_info(body)

```ruby
begin
  # Create Response Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_rt_response_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponseRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->create_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RemoteResponseCreatePoliciesV1**](RemoteResponseCreatePoliciesV1.md) |  |  |

### Return type

[**RemoteResponseRespV1**](RemoteResponseRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rt_response_policies

> <MsaQueryResponse> delete_rt_response_policies(ids)

Delete a set of Response Policies by specifying their IDs

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

api_instance = Falcon::ResponsePolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Response Policies to delete

begin
  # Delete a set of Response Policies by specifying their IDs
  result = api_instance.delete_rt_response_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->delete_rt_response_policies: #{e}"
end
```

#### Using the delete_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_rt_response_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Response Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_rt_response_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->delete_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Response Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rt_response_policies

> <RemoteResponseRespV1> get_rt_response_policies(ids)

Retrieve a set of Response Policies by specifying their IDs

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

api_instance = Falcon::ResponsePolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the RTR Policies to return

begin
  # Retrieve a set of Response Policies by specifying their IDs
  result = api_instance.get_rt_response_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->get_rt_response_policies: #{e}"
end
```

#### Using the get_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponseRespV1>, Integer, Hash)> get_rt_response_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Response Policies by specifying their IDs
  data, status_code, headers = api_instance.get_rt_response_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponseRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->get_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the RTR Policies to return |  |

### Return type

[**RemoteResponseRespV1**](RemoteResponseRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_rt_response_policies_action

> <RemoteResponseRespV1> perform_rt_response_policies_action(action_name, body)

Perform the specified action on the Response Policies specified in the request

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

api_instance = Falcon::ResponsePolicies.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Response Policies specified in the request
  result = api_instance.perform_rt_response_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->perform_rt_response_policies_action: #{e}"
end
```

#### Using the perform_rt_response_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponseRespV1>, Integer, Hash)> perform_rt_response_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Response Policies specified in the request
  data, status_code, headers = api_instance.perform_rt_response_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponseRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->perform_rt_response_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**RemoteResponseRespV1**](RemoteResponseRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_rt_response_policies

> <RemoteResponseRespV1> query_combined_rt_response_policies(opts)

Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria

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

api_instance = Falcon::ResponsePolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria
  result = api_instance.query_combined_rt_response_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_combined_rt_response_policies: #{e}"
end
```

#### Using the query_combined_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponseRespV1>, Integer, Hash)> query_combined_rt_response_policies_with_http_info(opts)

```ruby
begin
  # Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_rt_response_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponseRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_combined_rt_response_policies_with_http_info: #{e}"
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

[**RemoteResponseRespV1**](RemoteResponseRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_rt_response_policy_members

> <BasePolicyMembersRespV1> query_combined_rt_response_policy_members(opts)

Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::ResponsePolicies.new
opts = {
  id: 'id_example', # String | The ID of the Response policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_rt_response_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_combined_rt_response_policy_members: #{e}"
end
```

#### Using the query_combined_rt_response_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_rt_response_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_rt_response_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_combined_rt_response_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Response policy to search for members of | [optional] |
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


## query_rt_response_policies

> <MsaQueryResponse> query_rt_response_policies(opts)

Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.

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

api_instance = Falcon::ResponsePolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to determine the results.
  offset: 56, # Integer | The offset of the first record to retrieve from
  limit: 56, # Integer | The maximum number of records to return [1-5000]
  sort: 'created_by.asc' # String | The property to sort results by
}

begin
  # Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.
  result = api_instance.query_rt_response_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_rt_response_policies: #{e}"
end
```

#### Using the query_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rt_response_policies_with_http_info(opts)

```ruby
begin
  # Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.
  data, status_code, headers = api_instance.query_rt_response_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter expression that should be used to determine the results. | [optional] |
| **offset** | **Integer** | The offset of the first record to retrieve from | [optional] |
| **limit** | **Integer** | The maximum number of records to return [1-5000] | [optional] |
| **sort** | **String** | The property to sort results by | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rt_response_policy_members

> <MsaQueryResponse> query_rt_response_policy_members(opts)

Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::ResponsePolicies.new
opts = {
  id: 'id_example', # String | The ID of the Response policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_rt_response_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_rt_response_policy_members: #{e}"
end
```

#### Using the query_rt_response_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_rt_response_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_rt_response_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->query_rt_response_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Response policy to search for members of | [optional] |
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


## set_rt_response_policies_precedence

> <MsaQueryResponse> set_rt_response_policies_precedence(body)

Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

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

api_instance = Falcon::ResponsePolicies.new
body = Falcon::BaseSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # BaseSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_rt_response_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->set_rt_response_policies_precedence: #{e}"
end
```

#### Using the set_rt_response_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_rt_response_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  data, status_code, headers = api_instance.set_rt_response_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->set_rt_response_policies_precedence_with_http_info: #{e}"
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


## update_rt_response_policies

> <RemoteResponseRespV1> update_rt_response_policies(body)

Update Response Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::ResponsePolicies.new
body = Falcon::RemoteResponseUpdatePoliciesReqV1.new({resources: [Falcon::RemoteResponseUpdatePolicyReqV1.new({id: 'id_example', settings: [Falcon::PreventionSettingReqV1.new({id: 'id_example', value: 3.56})]})]}) # RemoteResponseUpdatePoliciesReqV1 | 

begin
  # Update Response Policies by specifying the ID of the policy and details to update
  result = api_instance.update_rt_response_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->update_rt_response_policies: #{e}"
end
```

#### Using the update_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponseRespV1>, Integer, Hash)> update_rt_response_policies_with_http_info(body)

```ruby
begin
  # Update Response Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_rt_response_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponseRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePolicies->update_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RemoteResponseUpdatePoliciesReqV1**](RemoteResponseUpdatePoliciesReqV1.md) |  |  |

### Return type

[**RemoteResponseRespV1**](RemoteResponseRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

