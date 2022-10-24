# Falcon::ResponsePoliciesApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rt_response_policies**](ResponsePoliciesApi.md#create_rt_response_policies) | **POST** /policy/entities/response/v1 | Create Response Policies by specifying details about the policy to create |
| [**delete_rt_response_policies**](ResponsePoliciesApi.md#delete_rt_response_policies) | **DELETE** /policy/entities/response/v1 | Delete a set of Response Policies by specifying their IDs |
| [**get_rt_response_policies**](ResponsePoliciesApi.md#get_rt_response_policies) | **GET** /policy/entities/response/v1 | Retrieve a set of Response Policies by specifying their IDs |
| [**perform_rt_response_policies_action**](ResponsePoliciesApi.md#perform_rt_response_policies_action) | **POST** /policy/entities/response-actions/v1 | Perform the specified action on the Response Policies specified in the request |
| [**query_combined_rt_response_policies**](ResponsePoliciesApi.md#query_combined_rt_response_policies) | **GET** /policy/combined/response/v1 | Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria |
| [**query_combined_rt_response_policy_members**](ResponsePoliciesApi.md#query_combined_rt_response_policy_members) | **GET** /policy/combined/response-members/v1 | Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_rt_response_policies**](ResponsePoliciesApi.md#query_rt_response_policies) | **GET** /policy/queries/response/v1 | Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria. |
| [**query_rt_response_policy_members**](ResponsePoliciesApi.md#query_rt_response_policy_members) | **GET** /policy/queries/response-members/v1 | Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**set_rt_response_policies_precedence**](ResponsePoliciesApi.md#set_rt_response_policies_precedence) | **POST** /policy/entities/response-precedence/v1 | Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence |
| [**update_rt_response_policies**](ResponsePoliciesApi.md#update_rt_response_policies) | **PATCH** /policy/entities/response/v1 | Update Response Policies by specifying the ID of the policy and details to update |


## create_rt_response_policies

> <ResponsesRTResponsePoliciesV1> create_rt_response_policies(body)

Create Response Policies by specifying details about the policy to create

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
body = Falcon::RequestsCreateRTResponsePoliciesV1.new({resources: [Falcon::RequestsCreateRTResponsePolicyV1.new({name: 'name_example', platform_name: 'Windows'})]}) # RequestsCreateRTResponsePoliciesV1 | 

begin
  # Create Response Policies by specifying details about the policy to create
  result = api_instance.create_rt_response_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->create_rt_response_policies: #{e}"
end
```

#### Using the create_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesRTResponsePoliciesV1>, Integer, Hash)> create_rt_response_policies_with_http_info(body)

```ruby
begin
  # Create Response Policies by specifying details about the policy to create
  data, status_code, headers = api_instance.create_rt_response_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesRTResponsePoliciesV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->create_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsCreateRTResponsePoliciesV1**](RequestsCreateRTResponsePoliciesV1.md) |  |  |

### Return type

[**ResponsesRTResponsePoliciesV1**](ResponsesRTResponsePoliciesV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_rt_response_policies

> <MsaQueryResponse> delete_rt_response_policies(ids)

Delete a set of Response Policies by specifying their IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Response Policies to delete

begin
  # Delete a set of Response Policies by specifying their IDs
  result = api_instance.delete_rt_response_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->delete_rt_response_policies: #{e}"
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
  puts "Error when calling ResponsePoliciesApi->delete_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Response Policies to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rt_response_policies

> <ResponsesRTResponsePoliciesV1> get_rt_response_policies(ids)

Retrieve a set of Response Policies by specifying their IDs

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
ids = ['inner_example'] # Array<String> | The IDs of the RTR Policies to return

begin
  # Retrieve a set of Response Policies by specifying their IDs
  result = api_instance.get_rt_response_policies(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->get_rt_response_policies: #{e}"
end
```

#### Using the get_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesRTResponsePoliciesV1>, Integer, Hash)> get_rt_response_policies_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Response Policies by specifying their IDs
  data, status_code, headers = api_instance.get_rt_response_policies_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesRTResponsePoliciesV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->get_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the RTR Policies to return |  |

### Return type

[**ResponsesRTResponsePoliciesV1**](ResponsesRTResponsePoliciesV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_rt_response_policies_action

> <ResponsesRTResponsePoliciesV1> perform_rt_response_policies_action(action_name, body)

Perform the specified action on the Response Policies specified in the request

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
action_name = 'add-host-group' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 

begin
  # Perform the specified action on the Response Policies specified in the request
  result = api_instance.perform_rt_response_policies_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->perform_rt_response_policies_action: #{e}"
end
```

#### Using the perform_rt_response_policies_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesRTResponsePoliciesV1>, Integer, Hash)> perform_rt_response_policies_action_with_http_info(action_name, body)

```ruby
begin
  # Perform the specified action on the Response Policies specified in the request
  data, status_code, headers = api_instance.perform_rt_response_policies_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesRTResponsePoliciesV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->perform_rt_response_policies_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |

### Return type

[**ResponsesRTResponsePoliciesV1**](ResponsesRTResponsePoliciesV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_rt_response_policies

> <ResponsesRTResponsePoliciesV1> query_combined_rt_response_policies(opts)

Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
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
  puts "Error when calling ResponsePoliciesApi->query_combined_rt_response_policies: #{e}"
end
```

#### Using the query_combined_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesRTResponsePoliciesV1>, Integer, Hash)> query_combined_rt_response_policies_with_http_info(opts)

```ruby
begin
  # Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria
  data, status_code, headers = api_instance.query_combined_rt_response_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesRTResponsePoliciesV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->query_combined_rt_response_policies_with_http_info: #{e}"
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

[**ResponsesRTResponsePoliciesV1**](ResponsesRTResponsePoliciesV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_rt_response_policy_members

> <ResponsesPolicyMembersRespV1> query_combined_rt_response_policy_members(opts)

Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
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
  puts "Error when calling ResponsePoliciesApi->query_combined_rt_response_policy_members: #{e}"
end
```

#### Using the query_combined_rt_response_policy_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesPolicyMembersRespV1>, Integer, Hash)> query_combined_rt_response_policy_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_rt_response_policy_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesPolicyMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->query_combined_rt_response_policy_members_with_http_info: #{e}"
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

[**ResponsesPolicyMembersRespV1**](ResponsesPolicyMembersRespV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rt_response_policies

> <MsaQueryResponse> query_rt_response_policies(opts)

Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
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
  puts "Error when calling ResponsePoliciesApi->query_rt_response_policies: #{e}"
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
  puts "Error when calling ResponsePoliciesApi->query_rt_response_policies_with_http_info: #{e}"
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_rt_response_policy_members

> <MsaQueryResponse> query_rt_response_policy_members(opts)

Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
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
  puts "Error when calling ResponsePoliciesApi->query_rt_response_policy_members: #{e}"
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
  puts "Error when calling ResponsePoliciesApi->query_rt_response_policy_members_with_http_info: #{e}"
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

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_rt_response_policies_precedence

> <MsaQueryResponse> set_rt_response_policies_precedence(body)

Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
body = Falcon::RequestsSetPolicyPrecedenceReqV1.new({ids: ['ids_example'], platform_name: 'Windows'}) # RequestsSetPolicyPrecedenceReqV1 | 

begin
  # Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence
  result = api_instance.set_rt_response_policies_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->set_rt_response_policies_precedence: #{e}"
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
  puts "Error when calling ResponsePoliciesApi->set_rt_response_policies_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsSetPolicyPrecedenceReqV1**](RequestsSetPolicyPrecedenceReqV1.md) |  |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rt_response_policies

> <ResponsesRTResponsePoliciesV1> update_rt_response_policies(body)

Update Response Policies by specifying the ID of the policy and details to update

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ResponsePoliciesApi.new
body = Falcon::RequestsUpdateRTResponsePoliciesV1.new({resources: [Falcon::RequestsUpdateRTResponsePolicyV1.new({id: 'id_example', settings: [Falcon::RequestsPreventionSettingV1.new({id: 'id_example', value: 3.56})]})]}) # RequestsUpdateRTResponsePoliciesV1 | 

begin
  # Update Response Policies by specifying the ID of the policy and details to update
  result = api_instance.update_rt_response_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->update_rt_response_policies: #{e}"
end
```

#### Using the update_rt_response_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponsesRTResponsePoliciesV1>, Integer, Hash)> update_rt_response_policies_with_http_info(body)

```ruby
begin
  # Update Response Policies by specifying the ID of the policy and details to update
  data, status_code, headers = api_instance.update_rt_response_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponsesRTResponsePoliciesV1>
rescue Falcon::ApiError => e
  puts "Error when calling ResponsePoliciesApi->update_rt_response_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RequestsUpdateRTResponsePoliciesV1**](RequestsUpdateRTResponsePoliciesV1.md) |  |  |

### Return type

[**ResponsesRTResponsePoliciesV1**](ResponsesRTResponsePoliciesV1.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

