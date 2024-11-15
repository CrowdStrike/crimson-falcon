# Falcon::HostGroupApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_host_groups**](HostGroupApi.md#create_host_groups) | **POST** /devices/entities/host-groups/v1 | Create Host Groups by specifying details about the group to create |
| [**delete_host_groups**](HostGroupApi.md#delete_host_groups) | **DELETE** /devices/entities/host-groups/v1 | Delete a set of Host Groups by specifying their IDs |
| [**get_host_groups**](HostGroupApi.md#get_host_groups) | **GET** /devices/entities/host-groups/v1 | Retrieve a set of Host Groups by specifying their IDs |
| [**perform_group_action**](HostGroupApi.md#perform_group_action) | **POST** /devices/entities/host-group-actions/v1 | Perform the specified action on the Host Groups specified in the request |
| [**query_combined_group_members**](HostGroupApi.md#query_combined_group_members) | **GET** /devices/combined/host-group-members/v1 | Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria |
| [**query_combined_host_groups**](HostGroupApi.md#query_combined_host_groups) | **GET** /devices/combined/host-groups/v1 | Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria |
| [**query_group_members**](HostGroupApi.md#query_group_members) | **GET** /devices/queries/host-group-members/v1 | Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria |
| [**query_host_groups**](HostGroupApi.md#query_host_groups) | **GET** /devices/queries/host-groups/v1 | Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria |
| [**update_host_groups**](HostGroupApi.md#update_host_groups) | **PATCH** /devices/entities/host-groups/v1 | Update Host Groups by specifying the ID of the group and details to update |


## create_host_groups

> <HostGroupsRespV1> create_host_groups(body)

Create Host Groups by specifying details about the group to create

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

api_instance = Falcon::HostGroupApi.new
body = Falcon::HostGroupsCreateGroupsReqV1.new({resources: [Falcon::HostGroupsCreateGroupReqV1.new({group_type: 'static', name: 'name_example'})]}) # HostGroupsCreateGroupsReqV1 | 

begin
  # Create Host Groups by specifying details about the group to create
  result = api_instance.create_host_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->create_host_groups: #{e}"
end
```

#### Using the create_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsRespV1>, Integer, Hash)> create_host_groups_with_http_info(body)

```ruby
begin
  # Create Host Groups by specifying details about the group to create
  data, status_code, headers = api_instance.create_host_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->create_host_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**HostGroupsCreateGroupsReqV1**](HostGroupsCreateGroupsReqV1.md) |  |  |

### Return type

[**HostGroupsRespV1**](HostGroupsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_host_groups

> <MsaQueryResponse> delete_host_groups(ids)

Delete a set of Host Groups by specifying their IDs

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

api_instance = Falcon::HostGroupApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Host Groups to delete

begin
  # Delete a set of Host Groups by specifying their IDs
  result = api_instance.delete_host_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->delete_host_groups: #{e}"
end
```

#### Using the delete_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> delete_host_groups_with_http_info(ids)

```ruby
begin
  # Delete a set of Host Groups by specifying their IDs
  data, status_code, headers = api_instance.delete_host_groups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->delete_host_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Host Groups to delete |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_host_groups

> <HostGroupsRespV1> get_host_groups(ids)

Retrieve a set of Host Groups by specifying their IDs

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

api_instance = Falcon::HostGroupApi.new
ids = ['inner_example'] # Array<String> | The IDs of the Host Groups to return

begin
  # Retrieve a set of Host Groups by specifying their IDs
  result = api_instance.get_host_groups(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->get_host_groups: #{e}"
end
```

#### Using the get_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsRespV1>, Integer, Hash)> get_host_groups_with_http_info(ids)

```ruby
begin
  # Retrieve a set of Host Groups by specifying their IDs
  data, status_code, headers = api_instance.get_host_groups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->get_host_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the Host Groups to return |  |

### Return type

[**HostGroupsRespV1**](HostGroupsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_group_action

> <HostGroupsRespV1> perform_group_action(action_name, body, opts)

Perform the specified action on the Host Groups specified in the request

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

api_instance = Falcon::HostGroupApi.new
action_name = 'add-hosts' # String | The action to perform
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | 
opts = {
  disable_hostname_check: true # Boolean | Bool to disable hostname check on add-member
}

begin
  # Perform the specified action on the Host Groups specified in the request
  result = api_instance.perform_group_action(action_name, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->perform_group_action: #{e}"
end
```

#### Using the perform_group_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsRespV1>, Integer, Hash)> perform_group_action_with_http_info(action_name, body, opts)

```ruby
begin
  # Perform the specified action on the Host Groups specified in the request
  data, status_code, headers = api_instance.perform_group_action_with_http_info(action_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->perform_group_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) |  |  |
| **disable_hostname_check** | **Boolean** | Bool to disable hostname check on add-member | [optional][default to false] |

### Return type

[**HostGroupsRespV1**](HostGroupsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_combined_group_members

> <HostGroupsMembersRespV1> query_combined_group_members(opts)

Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

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

api_instance = Falcon::HostGroupApi.new
opts = {
  id: 'id_example', # String | The ID of the Host Group to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  result = api_instance.query_combined_group_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_combined_group_members: #{e}"
end
```

#### Using the query_combined_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsMembersRespV1>, Integer, Hash)> query_combined_group_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria
  data, status_code, headers = api_instance.query_combined_group_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsMembersRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_combined_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Host Group to search for members of | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by | [optional] |

### Return type

[**HostGroupsMembersRespV1**](HostGroupsMembersRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_combined_host_groups

> <HostGroupsRespV1> query_combined_host_groups(opts)

Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria

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

api_instance = Falcon::HostGroupApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria
  result = api_instance.query_combined_host_groups(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_combined_host_groups: #{e}"
end
```

#### Using the query_combined_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsRespV1>, Integer, Hash)> query_combined_host_groups_with_http_info(opts)

```ruby
begin
  # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria
  data, status_code, headers = api_instance.query_combined_host_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_combined_host_groups_with_http_info: #{e}"
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

[**HostGroupsRespV1**](HostGroupsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_group_members

> <MsaQueryResponse> query_group_members(opts)

Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

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

api_instance = Falcon::HostGroupApi.new
opts = {
  id: 'id_example', # String | The ID of the Host Group to search for members of
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example' # String | The property to sort by
}

begin
  # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  result = api_instance.query_group_members(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_group_members: #{e}"
end
```

#### Using the query_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_group_members_with_http_info(opts)

```ruby
begin
  # Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria
  data, status_code, headers = api_instance.query_group_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Host Group to search for members of | [optional] |
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


## query_host_groups

> <MsaQueryResponse> query_host_groups(opts)

Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria

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

api_instance = Falcon::HostGroupApi.new
opts = {
  filter: 'filter_example', # String | The filter expression that should be used to limit the results
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'created_by.asc' # String | The property to sort by
}

begin
  # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria
  result = api_instance.query_host_groups(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_host_groups: #{e}"
end
```

#### Using the query_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_host_groups_with_http_info(opts)

```ruby
begin
  # Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria
  data, status_code, headers = api_instance.query_host_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->query_host_groups_with_http_info: #{e}"
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


## update_host_groups

> <HostGroupsRespV1> update_host_groups(body)

Update Host Groups by specifying the ID of the group and details to update

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

api_instance = Falcon::HostGroupApi.new
body = Falcon::HostGroupsUpdateGroupsReqV1.new({resources: [Falcon::HostGroupsUpdateGroupReqV1.new({id: 'id_example'})]}) # HostGroupsUpdateGroupsReqV1 | 

begin
  # Update Host Groups by specifying the ID of the group and details to update
  result = api_instance.update_host_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->update_host_groups: #{e}"
end
```

#### Using the update_host_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostGroupsRespV1>, Integer, Hash)> update_host_groups_with_http_info(body)

```ruby
begin
  # Update Host Groups by specifying the ID of the group and details to update
  data, status_code, headers = api_instance.update_host_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostGroupsRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostGroupApi->update_host_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**HostGroupsUpdateGroupsReqV1**](HostGroupsUpdateGroupsReqV1.md) |  |  |

### Return type

[**HostGroupsRespV1**](HostGroupsRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

