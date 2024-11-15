# Falcon::FirewallPoliciesApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_firewall_policies**](FirewallPoliciesApi.md#create_firewall_policies) | **POST** /policy/entities/firewall/v1 | Create Firewall Policies by specifying details about the policy to create |
| [**delete_firewall_policies**](FirewallPoliciesApi.md#delete_firewall_policies) | **DELETE** /policy/entities/firewall/v1 | Delete a set of Firewall Policies by specifying their IDs |
| [**get_firewall_policies**](FirewallPoliciesApi.md#get_firewall_policies) | **GET** /policy/entities/firewall/v1 | Retrieve a set of Firewall Policies by specifying their IDs |
| [**perform_firewall_policies_action**](FirewallPoliciesApi.md#perform_firewall_policies_action) | **POST** /policy/entities/firewall-actions/v1 | Perform the specified action on the Firewall Policies specified in the request |
| [**query_combined_firewall_policies**](FirewallPoliciesApi.md#query_combined_firewall_policies) | **GET** /policy/combined/firewall/v1 | Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria |
| [**query_combined_firewall_policy_members**](FirewallPoliciesApi.md#query_combined_firewall_policy_members) | **GET** /policy/combined/firewall-members/v1 | Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_firewall_policies**](FirewallPoliciesApi.md#query_firewall_policies) | **GET** /policy/queries/firewall/v1 | Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria |
| [**query_firewall_policy_members**](FirewallPoliciesApi.md#query_firewall_policy_members) | **GET** /policy/queries/firewall-members/v1 | Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**set_firewall_policies_precedence**](FirewallPoliciesApi.md#set_firewall_policies_precedence) | **POST** /policy/entities/firewall-precedence/v1 | Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_firewall_policies**](FirewallPoliciesApi.md#update_firewall_policies) | **PATCH** /policy/entities/firewall/v1 | Update Firewall Policies by specifying the ID of the policy and details to update |


## create_firewall_policies

> <FirewallRespV1> create_firewall_policies(body, opts)

Create Firewall Policies by specifying details about the policy to create

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

api_instance = Falcon::FirewallPoliciesApi.new
body = Falcon::FirewallCreateFirewallPoliciesReqV1.new({resources: [Falcon::FirewallCreateFirewallPolicyReqV1.new({name: 'name_example', platform_name: 'Windows'})]}) # FirewallCreateFirewallPoliciesReqV1 | 
opts = {
  clone_id: 'clone_id_example' # String | The policy ID to be cloned from
}

begin
  # Create Firewall Policies by specifying details about the policy to create
  result = api_instance.create_firewall_policies(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->create_firewall_policies: #{e}"
end
```

#### Using the create_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRespV1>, Integer, Hash)> create_firewall_policies_with_http_info(body, opts)

```ruby
begin
  # Create Firewall Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_firewall_policies_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->create_firewall_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FirewallCreateFirewallPoliciesReqV1**](FirewallCreateFirewallPoliciesReqV1.md) |  |  |
| **clone_id** | **String** | The policy ID to be cloned from | [optional] |

### Return type

[**FirewallRespV1**](FirewallRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_firewall_policies

> <MsaQueryResponse> delete_firewall_policies(ids)

Delete a set of Firewall Policies by specifying their IDs

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

api_instance = Falcon::FirewallPoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Firewall Policies to delete

begin
  # Delete a set of Firewall Policies by specifying their IDs
  result = api_instance.delete_firewall_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->delete_firewall_policies: #{e}"
end
```

#### Using the delete_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_firewall_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Firewall Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_firewall_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->delete_firewall_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Firewall Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_firewall_policies

> <FirewallRespV1> get_firewall_policies(ids)

Retrieve a set of Firewall Policies by specifying their IDs

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

api_instance = Falcon::FirewallPoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Firewall Policies to return

begin
  # Retrieve a set of Firewall Policies by specifying their IDs
  result = api_instance.get_firewall_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->get_firewall_policies: #{e}"
end
```

#### Using the get_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRespV1>, Integer, Hash)> get_firewall_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Firewall Policies by specifying their IDs
  data, status_code, headers = api_instance.get_firewall_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->get_firewall_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Firewall Policies to return |  |

### Return type

[**FirewallRespV1**](FirewallRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_firewall_policies_action

> <FirewallRespV1> perform_firewall_policies_action(action_name, body)

Perform the specified action on the Firewall Policies specified in the request

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

api_instance = Falcon::FirewallPoliciesApi.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Firewall Policies specified in the request
  result = api_instance.perform_firewall_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->perform_firewall_policies_action: #{e}"
end
```

#### Using the perform_firewall_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRespV1>, Integer, Hash)> perform_firewall_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Firewall Policies specified in the request
  data, status_code, headers = api_instance.perform_firewall_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->perform_firewall_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**FirewallRespV1**](FirewallRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_firewall_policies

> <FirewallRespV1> query_combined_firewall_policies(opts)

Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria

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

api_instance = Falcon::FirewallPoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria
  result = api_instance.query_combined_firewall_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_combined_firewall_policies: #{e}"
end
```

#### Using the query_combined_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRespV1>, Integer, Hash)> query_combined_firewall_policies_with_http_info(opts)

```ruby
begin
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_firewall_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_combined_firewall_policies_with_http_info: #{e}"
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

[**FirewallRespV1**](FirewallRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_firewall_policy_members

> <BasePolicyMembersRespV1> query_combined_firewall_policy_members(opts)

Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::FirewallPoliciesApi.new
opts = {
  id: 'id_example', # String | The ID of the Firewall Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_firewall_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_combined_firewall_policy_members: #{e}"
end
```

#### Using the query_combined_firewall_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_firewall_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_firewall_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_combined_firewall_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Firewall Policy to search for members of | [optional] |
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


## query_firewall_policies

> <MsaQueryResponse> query_firewall_policies(opts)

Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria

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

api_instance = Falcon::FirewallPoliciesApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria
  result = api_instance.query_firewall_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_firewall_policies: #{e}"
end
```

#### Using the query_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_firewall_policies_with_http_info(opts)

```ruby
begin
  # Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria
  data, status_code, headers = api_instance.query_firewall_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_firewall_policies_with_http_info: #{e}"
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


## query_firewall_policy_members

> <MsaQueryResponse> query_firewall_policy_members(opts)

Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::FirewallPoliciesApi.new
opts = {
  id: 'id_example', # String | The ID of the Firewall Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_firewall_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_firewall_policy_members: #{e}"
end
```

#### Using the query_firewall_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_firewall_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_firewall_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->query_firewall_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Firewall Policy to search for members of | [optional] |
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


## set_firewall_policies_precedence

> <MsaQueryResponse> set_firewall_policies_precedence(body)

Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

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

api_instance = Falcon::FirewallPoliciesApi.new
body = Falcon::BaseSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # BaseSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_firewall_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->set_firewall_policies_precedence: #{e}"
end
```

#### Using the set_firewall_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_firewall_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  data, status_code, headers = api_instance.set_firewall_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->set_firewall_policies_precedence_with_http_info: #{e}"
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


## update_firewall_policies

> <FirewallRespV1> update_firewall_policies(body)

Update Firewall Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::FirewallPoliciesApi.new
body = Falcon::FirewallUpdateFirewallPoliciesReqV1.new({resources: [Falcon::FirewallUpdateFirewallPolicyReqV1.new({id: 'id_example'})]}) # FirewallUpdateFirewallPoliciesReqV1 | 

begin
  # Update Firewall Policies by specifying the ID of the policy and details to update
  result = api_instance.update_firewall_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->update_firewall_policies: #{e}"
end
```

#### Using the update_firewall_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRespV1>, Integer, Hash)> update_firewall_policies_with_http_info(body)

```ruby
begin
  # Update Firewall Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_firewall_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling FirewallPoliciesApi->update_firewall_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FirewallUpdateFirewallPoliciesReqV1**](FirewallUpdateFirewallPoliciesReqV1.md) |  |  |

### Return type

[**FirewallRespV1**](FirewallRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

