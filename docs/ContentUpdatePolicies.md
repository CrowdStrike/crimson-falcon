# Falcon::ContentUpdatePolicies

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_content_update_policies**](ContentUpdatePolicies.md#create_content_update_policies) | **POST** /policy/entities/content-update/v1 | Create Content Update Policies by specifying details about the policy to create |
| [**delete_content_update_policies**](ContentUpdatePolicies.md#delete_content_update_policies) | **DELETE** /policy/entities/content-update/v1 | Delete a set of Content Update Policies by specifying their IDs |
| [**get_content_update_policies**](ContentUpdatePolicies.md#get_content_update_policies) | **GET** /policy/entities/content-update/v1 | Retrieve a set of Content Update Policies by specifying their IDs |
| [**perform_content_update_policies_action**](ContentUpdatePolicies.md#perform_content_update_policies_action) | **POST** /policy/entities/content-update-actions/v1 | Perform the specified action on the Content Update Policies specified in the request |
| [**query_combined_content_update_policies**](ContentUpdatePolicies.md#query_combined_content_update_policies) | **GET** /policy/combined/content-update/v1 | Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policies which match the filter criteria |
| [**query_combined_content_update_policy_members**](ContentUpdatePolicies.md#query_combined_content_update_policy_members) | **GET** /policy/combined/content-update-members/v1 | Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_content_update_policies**](ContentUpdatePolicies.md#query_content_update_policies) | **GET** /policy/queries/content-update/v1 | Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policy IDs which match the filter criteria |
| [**query_content_update_policy_members**](ContentUpdatePolicies.md#query_content_update_policy_members) | **GET** /policy/queries/content-update-members/v1 | Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**query_pinnable_content_versions**](ContentUpdatePolicies.md#query_pinnable_content_versions) | **GET** /policy/queries/content-update-pin-versions/v1 | Search for content versions available for pinning given the category. |
| [**set_content_update_policies_precedence**](ContentUpdatePolicies.md#set_content_update_policies_precedence) | **POST** /policy/entities/content-update-precedence/v1 | Sets the precedence of Content Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies when updating precedence |
| [**update_content_update_policies**](ContentUpdatePolicies.md#update_content_update_policies) | **PATCH** /policy/entities/content-update/v1 | Update Content Update Policies by specifying the ID of the policy and details to update |


## create_content_update_policies

> <ContentUpdateRespV1> create_content_update_policies(body)

Create Content Update Policies by specifying details about the policy to create

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

api_instance = Falcon::ContentUpdatePolicies.new
body = Falcon::ContentUpdateCreatePoliciesReqV1.new({resources: [Falcon::ContentUpdateCreatePolicyReqV1.new({name: 'name_example'})]}) # ContentUpdateCreatePoliciesReqV1 | 

begin
  # Create Content Update Policies by specifying details about the policy to create
  result = api_instance.create_content_update_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->create_content_update_policies: #{e}"
end
```

#### Using the create_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentUpdateRespV1>, Integer, Hash)> create_content_update_policies_with_http_info(body)

```ruby
begin
  # Create Content Update Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_content_update_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->create_content_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ContentUpdateCreatePoliciesReqV1**](ContentUpdateCreatePoliciesReqV1.md) |  |  |

### Return type

[**ContentUpdateRespV1**](ContentUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_content_update_policies

> <MsaQueryResponse> delete_content_update_policies(ids)

Delete a set of Content Update Policies by specifying their IDs

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

api_instance = Falcon::ContentUpdatePolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Content Update Policies to delete

begin
  # Delete a set of Content Update Policies by specifying their IDs
  result = api_instance.delete_content_update_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->delete_content_update_policies: #{e}"
end
```

#### Using the delete_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_content_update_policies_with_http_info(ids)

```ruby
begin
  # Delete a set of Content Update Policies by specifying their IDs
  data, status_code, headers = api_instance.delete_content_update_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->delete_content_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Content Update Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_content_update_policies

> <ContentUpdateRespV1> get_content_update_policies(ids)

Retrieve a set of Content Update Policies by specifying their IDs

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

api_instance = Falcon::ContentUpdatePolicies.new
ids = ['inner_example'] # Array<String> | The IDs of the Content Update Policies to return

begin
  # Retrieve a set of Content Update Policies by specifying their IDs
  result = api_instance.get_content_update_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->get_content_update_policies: #{e}"
end
```

#### Using the get_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentUpdateRespV1>, Integer, Hash)> get_content_update_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Content Update Policies by specifying their IDs
  data, status_code, headers = api_instance.get_content_update_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->get_content_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Content Update Policies to return |  |

### Return type

[**ContentUpdateRespV1**](ContentUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_content_update_policies_action

> <ContentUpdateRespV1> perform_content_update_policies_action(action_name, body)

Perform the specified action on the Content Update Policies specified in the request

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

api_instance = Falcon::ContentUpdatePolicies.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Content Update Policies specified in the request
  result = api_instance.perform_content_update_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->perform_content_update_policies_action: #{e}"
end
```

#### Using the perform_content_update_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentUpdateRespV1>, Integer, Hash)> perform_content_update_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Content Update Policies specified in the request
  data, status_code, headers = api_instance.perform_content_update_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->perform_content_update_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**ContentUpdateRespV1**](ContentUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_content_update_policies

> <ContentUpdateRespV1> query_combined_content_update_policies(opts)

Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policies which match the filter criteria

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

api_instance = Falcon::ContentUpdatePolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policies which match the filter criteria
  result = api_instance.query_combined_content_update_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_combined_content_update_policies: #{e}"
end
```

#### Using the query_combined_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentUpdateRespV1>, Integer, Hash)> query_combined_content_update_policies_with_http_info(opts)

```ruby
begin
  # Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_content_update_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_combined_content_update_policies_with_http_info: #{e}"
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

[**ContentUpdateRespV1**](ContentUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_content_update_policy_members

> <BasePolicyMembersRespV1> query_combined_content_update_policy_members(opts)

Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::ContentUpdatePolicies.new
opts = {
  id: 'id_example', # String | The ID of the Content Update Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_content_update_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_combined_content_update_policy_members: #{e}"
end
```

#### Using the query_combined_content_update_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasePolicyMembersRespV1>, Integer, Hash)> query_combined_content_update_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_content_update_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasePolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_combined_content_update_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Content Update Policy to search for members of | [optional] |
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


## query_content_update_policies

> <MsaQueryResponse> query_content_update_policies(opts)

Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policy IDs which match the filter criteria

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

api_instance = Falcon::ContentUpdatePolicies.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policy IDs which match the filter criteria
  result = api_instance.query_content_update_policies(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_content_update_policies: #{e}"
end
```

#### Using the query_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_content_update_policies_with_http_info(opts)

```ruby
begin
  # Search for Content Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Content Update Policy IDs which match the filter criteria
  data, status_code, headers = api_instance.query_content_update_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_content_update_policies_with_http_info: #{e}"
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


## query_content_update_policy_members

> <MsaQueryResponse> query_content_update_policy_members(opts)

Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::ContentUpdatePolicies.new
opts = {
  id: 'id_example', # String | The ID of the Content Update Policy to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_content_update_policy_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_content_update_policy_members: #{e}"
end
```

#### Using the query_content_update_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_content_update_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Content Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_content_update_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_content_update_policy_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Content Update Policy to search for members of | [optional] |
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


## query_pinnable_content_versions

> <MsaspecQueryResponse> query_pinnable_content_versions(category, opts)

Search for content versions available for pinning given the category.

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

api_instance = Falcon::ContentUpdatePolicies.new
category = 'rapid_response_al_bl_listing' # String | Content category
opts = {
  sort: 'deployed_timestamp.asc' # String | value to sort returned content versions by. Allowed sort values are deployed_timestamp.(asc|desc) defaulting to deployed_timestamp.desc
}

begin
  # Search for content versions available for pinning given the category.
  result = api_instance.query_pinnable_content_versions(category, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_pinnable_content_versions: #{e}"
end
```

#### Using the query_pinnable_content_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_pinnable_content_versions_with_http_info(category, opts)

```ruby
begin
  # Search for content versions available for pinning given the category.
  data, status_code, headers = api_instance.query_pinnable_content_versions_with_http_info(category, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->query_pinnable_content_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Content category |  |
| **sort** | **String** | value to sort returned content versions by. Allowed sort values are deployed_timestamp.(asc|desc) defaulting to deployed_timestamp.desc | [optional][default to &#39;deployed_timestamp.desc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_content_update_policies_precedence

> <MsaQueryResponse> set_content_update_policies_precedence(body)

Sets the precedence of Content Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies when updating precedence

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

api_instance = Falcon::ContentUpdatePolicies.new
body = Falcon::BaseSetContentUpdatePolicyPrecedenceReqV1.new({ids: ['ids_example']}) # BaseSetContentUpdatePolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Content Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies when updating precedence
  result = api_instance.set_content_update_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->set_content_update_policies_precedence: #{e}"
end
```

#### Using the set_content_update_policies_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> set_content_update_policies_precedence_with_http_info(body)

```ruby
begin
  # Sets the precedence of Content Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies when updating precedence
  data, status_code, headers = api_instance.set_content_update_policies_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->set_content_update_policies_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**BaseSetContentUpdatePolicyPrecedenceReqV1**](BaseSetContentUpdatePolicyPrecedenceReqV1.md) |  |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_content_update_policies

> <ContentUpdateRespV1> update_content_update_policies(body)

Update Content Update Policies by specifying the ID of the policy and details to update

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

api_instance = Falcon::ContentUpdatePolicies.new
body = Falcon::ContentUpdateUpdatePoliciesReqV1.new({resources: [Falcon::ContentUpdateUpdatePolicyReqV1.new({id: 'id_example'})]}) # ContentUpdateUpdatePoliciesReqV1 | 

begin
  # Update Content Update Policies by specifying the ID of the policy and details to update
  result = api_instance.update_content_update_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->update_content_update_policies: #{e}"
end
```

#### Using the update_content_update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentUpdateRespV1>, Integer, Hash)> update_content_update_policies_with_http_info(body)

```ruby
begin
  # Update Content Update Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_content_update_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentUpdateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ContentUpdatePolicies->update_content_update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ContentUpdateUpdatePoliciesReqV1**](ContentUpdateUpdatePoliciesReqV1.md) |  |  |

### Return type

[**ContentUpdateRespV1**](ContentUpdateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

