# Falcon::PreventionPolicies

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prevention_policies**](PreventionPolicies.md#create_prevention_policies) | **POST** /policy/entities/prevention/v1 | Create Prevention Policies by specifying details about the policy to create |
| [**delete_prevention_policies**](PreventionPolicies.md#delete_prevention_policies) | **DELETE** /policy/entities/prevention/v1 | Delete a set of Prevention Policies by specifying their IDs |
| [**get_prevention_policies**](PreventionPolicies.md#get_prevention_policies) | **GET** /policy/entities/prevention/v1 | Retrieve a set of Prevention Policies by specifying their IDs |
| [**perform_prevention_policies_action**](PreventionPolicies.md#perform_prevention_policies_action) | **POST** /policy/entities/prevention-actions/v1 | Perform the specified action on the Prevention Policies specified in the request |
| [**query_combined_prevention_policies**](PreventionPolicies.md#query_combined_prevention_policies) | **GET** /policy/combined/prevention/v1 | Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria |
| [**query_combined_prevention_policy_members**](PreventionPolicies.md#query_combined_prevention_policy_members) | **GET** /policy/combined/prevention-members/v1 | Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_prevention_policies**](PreventionPolicies.md#query_prevention_policies) | **GET** /policy/queries/prevention/v1 | Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria |
| [**query_prevention_policy_members**](PreventionPolicies.md#query_prevention_policy_members) | **GET** /policy/queries/prevention-members/v1 | Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**set_prevention_policies_precedence**](PreventionPolicies.md#set_prevention_policies_precedence) | **POST** /policy/entities/prevention-precedence/v1 | Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_prevention_policies**](PreventionPolicies.md#update_prevention_policies) | **PATCH** /policy/entities/prevention/v1 | Update Prevention Policies by specifying the ID of the policy and details to update |


## create_prevention_policies

> <PreventionRespV1> create_prevention_policies(body)

Create Prevention Policies by specifying details about the policy to create

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

api_instance = Falcon::PreventionPolicies.new
body = Falcon::PreventionCreatePoliciesReqV1.new({resources: [Falcon::PreventionCreatePolicyReqV1.new({name: 'name_example', platform_name: 'Windows'})]}) # PreventionCreatePoliciesReqV1 | 

begin
  # Create Prevention Policies by specifying details about the policy to create
  result = api_instance.create_prevention_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->create_prevention_policies: #{e}"
end
```

#### Using the create_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreventionRespV1>, Integer, Hash)> create_prevention_policies_with_http_info(body)

```ruby
begin
  # Create Prevention Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_prevention_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreventionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->create_prevention_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PreventionCreatePoliciesReqV1**](PreventionCreatePoliciesReqV1.md) |  |  |

### Return type

[**PreventionRespV1**](PreventionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_prevention_policies

> <MsaQueryResponse> delete_prevention_policies(ids)

Delete a set of Prevention Policies by specifying their IDs

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

api_instance = Falcon::PreventionPolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Prevention Policies to delete

begin
  # Delete a set of Prevention Policies by specifying their IDs
  result = api_instance.delete_prevention_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->delete_prevention_policies: #{e}"
end
```

#### Using the delete_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_prevention_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Prevention Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_prevention_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->delete_prevention_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Prevention Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prevention_policies

> <PreventionRespV1> get_prevention_policies(ids)

Retrieve a set of Prevention Policies by specifying their IDs

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

api_instance = Falcon::PreventionPolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Prevention Policies to return

begin
  # Retrieve a set of Prevention Policies by specifying their IDs
  result = api_instance.get_prevention_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->get_prevention_policies: #{e}"
end
```

#### Using the get_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreventionRespV1>, Integer, Hash)> get_prevention_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Prevention Policies by specifying their IDs
  data, status_code, headers = api_instance.get_prevention_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreventionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->get_prevention_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Prevention Policies to return |  |

### Return type

[**PreventionRespV1**](PreventionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_prevention_policies_action

> <PreventionRespV1> perform_prevention_policies_action(action_name, body)

Perform the specified action on the Prevention Policies specified in the request

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

api_instance = Falcon::PreventionPolicies.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Prevention Policies specified in the request
  result = api_instance.perform_prevention_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->perform_prevention_policies_action: #{e}"
end
```

#### Using the perform_prevention_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreventionRespV1>, Integer, Hash)> perform_prevention_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Prevention Policies specified in the request
  data, status_code, headers = api_instance.perform_prevention_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreventionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->perform_prevention_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**PreventionRespV1**](PreventionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_prevention_policies

> <PreventionRespV1> query_combined_prevention_policies(opts)

Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria

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

api_instance = Falcon::PreventionPolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria
  result = api_instance.query_combined_prevention_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_combined_prevention_policies: #{e}"
end
```

#### Using the query_combined_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreventionRespV1>, Integer, Hash)> query_combined_prevention_policies_with_http_info(opts)

```ruby
begin
  # Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_prevention_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreventionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_combined_prevention_policies_with_http_info: #{e}"
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

[**PreventionRespV1**](PreventionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_prevention_policy_members

> <BasePolicyMembersRespV1> query_combined_prevention_policy_members(opts)

Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::PreventionPolicies.new
opts = {
  id: 'id_example', # String | The ID of the Prevention Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_prevention_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_combined_prevention_policy_members: #{e}"
end
```

#### Using the query_combined_prevention_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_prevention_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_prevention_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_combined_prevention_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Prevention Policy to search for members of | [optional] |
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


## query_prevention_policies

> <MsaQueryResponse> query_prevention_policies(opts)

Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria

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

api_instance = Falcon::PreventionPolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria
  result = api_instance.query_prevention_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_prevention_policies: #{e}"
end
```

#### Using the query_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_prevention_policies_with_http_info(opts)

```ruby
begin
  # Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria
  data, status_code, headers = api_instance.query_prevention_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_prevention_policies_with_http_info: #{e}"
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


## query_prevention_policy_members

> <MsaQueryResponse> query_prevention_policy_members(opts)

Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::PreventionPolicies.new
opts = {
  id: 'id_example', # String | The ID of the Prevention Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_prevention_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_prevention_policy_members: #{e}"
end
```

#### Using the query_prevention_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_prevention_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_prevention_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->query_prevention_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Prevention Policy to search for members of | [optional] |
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


## set_prevention_policies_precedence

> <MsaQueryResponse> set_prevention_policies_precedence(body)

Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

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

api_instance = Falcon::PreventionPolicies.new
body = Falcon::BaseSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # BaseSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_prevention_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->set_prevention_policies_precedence: #{e}"
end
```

#### Using the set_prevention_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_prevention_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  data, status_code, headers = api_instance.set_prevention_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->set_prevention_policies_precedence_with_http_info: #{e}"
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


## update_prevention_policies

> <PreventionRespV1> update_prevention_policies(body)

Update Prevention Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::PreventionPolicies.new
body = Falcon::PreventionUpdatePoliciesReqV1.new({resources: [Falcon::PreventionUpdatePolicyReqV1.new({id: 'id_example', settings: [Falcon::PreventionSettingReqV1.new({id: 'id_example', value: 3.56})]})]}) # PreventionUpdatePoliciesReqV1 | 

begin
  # Update Prevention Policies by specifying the ID of the policy and details to update
  result = api_instance.update_prevention_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->update_prevention_policies: #{e}"
end
```

#### Using the update_prevention_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreventionRespV1>, Integer, Hash)> update_prevention_policies_with_http_info(body)

```ruby
begin
  # Update Prevention Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_prevention_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreventionRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling PreventionPolicies->update_prevention_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PreventionUpdatePoliciesReqV1**](PreventionUpdatePoliciesReqV1.md) |  |  |

### Return type

[**PreventionRespV1**](PreventionRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

