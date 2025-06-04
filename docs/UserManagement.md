# Falcon::UserManagement

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_users_v1**](UserManagement.md#aggregate_users_v1) | **POST** /user-management/aggregates/users/v1 | Get host aggregates as specified via json in request body. |
| [**combined_user_roles_v1**](UserManagement.md#combined_user_roles_v1) | **GET** /user-management/combined/user-roles/v1 | Deprecated : Please use GET /user-management/combined/user-roles/v2. Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer. |
| [**combined_user_roles_v2**](UserManagement.md#combined_user_roles_v2) | **GET** /user-management/combined/user-roles/v2 | Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer. |
| [**create_user**](UserManagement.md#create_user) | **POST** /users/entities/users/v1 | Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1 |
| [**create_user_v1**](UserManagement.md#create_user_v1) | **POST** /user-management/entities/users/v1 | Create a new user. After creating a user, assign one or more roles with POST &#39;/user-management/entities/user-role-actions/v1&#39; |
| [**delete_user**](UserManagement.md#delete_user) | **DELETE** /users/entities/users/v1 | Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently |
| [**delete_user_v1**](UserManagement.md#delete_user_v1) | **DELETE** /user-management/entities/users/v1 | Delete a user permanently. |
| [**entities_roles_v1**](UserManagement.md#entities_roles_v1) | **GET** /user-management/entities/roles/v1 | Get info about a role |
| [**get_available_role_ids**](UserManagement.md#get_available_role_ids) | **GET** /user-roles/queries/user-role-ids-by-cid/v1 | Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;. |
| [**get_roles**](UserManagement.md#get_roles) | **GET** /user-roles/entities/user-roles/v1 | Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role |
| [**get_user_role_ids**](UserManagement.md#get_user_role_ids) | **GET** /user-roles/queries/user-role-ids-by-user-uuid/v1 | Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;. |
| [**grant_user_role_ids**](UserManagement.md#grant_user_role_ids) | **POST** /user-roles/entities/user-roles/v1 | Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user |
| [**queries_roles_v1**](UserManagement.md#queries_roles_v1) | **GET** /user-management/queries/roles/v1 | Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/user-management/entities/roles/v1&#x60;. |
| [**query_user_v1**](UserManagement.md#query_user_v1) | **GET** /user-management/queries/users/v1 | List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/user-management/entities/users/GET/v1&#x60;. |
| [**retrieve_emails_by_cid**](UserManagement.md#retrieve_emails_by_cid) | **GET** /users/queries/emails-by-cid/v1 | Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account |
| [**retrieve_user**](UserManagement.md#retrieve_user) | **GET** /users/entities/users/v1 | Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user |
| [**retrieve_user_uuid**](UserManagement.md#retrieve_user_uuid) | **GET** /users/queries/user-uuids-by-email/v1 | Deprecated : Please use GET /user-management/queries/users/v1. Get a user&#39;s ID by providing a username (usually an email address) |
| [**retrieve_user_uuids_by_cid**](UserManagement.md#retrieve_user_uuids_by_cid) | **GET** /users/queries/user-uuids-by-cid/v1 | Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/users/entities/user/v1&#x60;. |
| [**retrieve_users_getv1**](UserManagement.md#retrieve_users_getv1) | **POST** /user-management/entities/users/GET/v1 | Get info about users including their name, UID and CID by providing user UUIDs |
| [**revoke_user_role_ids**](UserManagement.md#revoke_user_role_ids) | **DELETE** /user-roles/entities/user-roles/v1 | Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user |
| [**update_user**](UserManagement.md#update_user) | **PATCH** /users/entities/users/v1 | Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user&#39;s first or last name |
| [**update_user_v1**](UserManagement.md#update_user_v1) | **PATCH** /user-management/entities/users/v1 | Modify an existing user&#39;s first or last name. |
| [**user_action_v1**](UserManagement.md#user_action_v1) | **POST** /user-management/entities/user-actions/v1 | Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in &#x60;ids&#x60; param as part of request payload. |
| [**user_roles_action_v1**](UserManagement.md#user_roles_action_v1) | **POST** /user-management/entities/user-role-actions/v1 | Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke |


## aggregate_users_v1

> <FlightcontrolapiAggregatesResponse> aggregate_users_v1(body)

Get host aggregates as specified via json in request body.

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

api_instance = Falcon::UserManagement.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get host aggregates as specified via json in request body.
  result = api_instance.aggregate_users_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->aggregate_users_v1: #{e}"
end
```

#### Using the aggregate_users_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiAggregatesResponse>, Integer, Hash)> aggregate_users_v1_with_http_info(body)

```ruby
begin
  # Get host aggregates as specified via json in request body.
  data, status_code, headers = api_instance.aggregate_users_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->aggregate_users_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**FlightcontrolapiAggregatesResponse**](FlightcontrolapiAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## combined_user_roles_v1

> <FlightcontrolapiCombinedUserRolesResponseV1> combined_user_roles_v1(user_uuid, opts)

Deprecated : Please use GET /user-management/combined/user-roles/v2. Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | User UUID to get available roles for.
opts = {
  cid: 'cid_example', # String | Customer ID to get grants for. Empty CID would result in Role IDs for user against current CID in view.
  direct_only: true, # Boolean | Specifies if to request direct Only role grants or all role grants between user and CID (specified in query params)
  filter: 'filter_example', # String | Filter using a query in Falcon Query Language (FQL). Supported filters: expires_at, role_id, role_name
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'cid|asc' # String | The property to sort by
}

begin
  # Deprecated : Please use GET /user-management/combined/user-roles/v2. Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.
  result = api_instance.combined_user_roles_v1(user_uuid, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->combined_user_roles_v1: #{e}"
end
```

#### Using the combined_user_roles_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiCombinedUserRolesResponseV1>, Integer, Hash)> combined_user_roles_v1_with_http_info(user_uuid, opts)

```ruby
begin
  # Deprecated : Please use GET /user-management/combined/user-roles/v2. Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.
  data, status_code, headers = api_instance.combined_user_roles_v1_with_http_info(user_uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiCombinedUserRolesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->combined_user_roles_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | User UUID to get available roles for. |  |
| **cid** | **String** | Customer ID to get grants for. Empty CID would result in Role IDs for user against current CID in view. | [optional] |
| **direct_only** | **Boolean** | Specifies if to request direct Only role grants or all role grants between user and CID (specified in query params) | [optional][default to false] |
| **filter** | **String** | Filter using a query in Falcon Query Language (FQL). Supported filters: expires_at, role_id, role_name | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional][default to 0] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional][default to 100] |
| **sort** | **String** | The property to sort by | [optional][default to &#39;role_name|asc&#39;] |

### Return type

[**FlightcontrolapiCombinedUserRolesResponseV1**](FlightcontrolapiCombinedUserRolesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_user_roles_v2

> <FlightcontrolapiCombinedUserRolesResponseV2> combined_user_roles_v2(user_uuid, opts)

Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | User UUID to get available roles for.
opts = {
  cid: 'cid_example', # String | Customer ID to get grants for. Empty CID would result in Role IDs for user against current CID in view.
  direct_only: true, # Boolean | Specifies if to request direct Only role grants or all role grants between user and CID (specified in query params)
  filter: 'filter_example', # String | Filter using a query in Falcon Query Language (FQL). Supported filters: expires_at, role_id, role_name
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'cid|asc' # String | The property to sort by
}

begin
  # Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.
  result = api_instance.combined_user_roles_v2(user_uuid, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->combined_user_roles_v2: #{e}"
end
```

#### Using the combined_user_roles_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiCombinedUserRolesResponseV2>, Integer, Hash)> combined_user_roles_v2_with_http_info(user_uuid, opts)

```ruby
begin
  # Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.
  data, status_code, headers = api_instance.combined_user_roles_v2_with_http_info(user_uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiCombinedUserRolesResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->combined_user_roles_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | User UUID to get available roles for. |  |
| **cid** | **String** | Customer ID to get grants for. Empty CID would result in Role IDs for user against current CID in view. | [optional] |
| **direct_only** | **Boolean** | Specifies if to request direct Only role grants or all role grants between user and CID (specified in query params) | [optional][default to false] |
| **filter** | **String** | Filter using a query in Falcon Query Language (FQL). Supported filters: expires_at, role_id, role_name | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional][default to 0] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional][default to 100] |
| **sort** | **String** | The property to sort by | [optional][default to &#39;role_name|asc&#39;] |

### Return type

[**FlightcontrolapiCombinedUserRolesResponseV2**](FlightcontrolapiCombinedUserRolesResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_user

> <ApiUserMetadataResponse> create_user(body)

Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1

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

api_instance = Falcon::UserManagement.new
body = Falcon::DomainUserCreateRequest.new # DomainUserCreateRequest | Attributes for this user. `uid` (required) is the user's email address, which is their username in Falcon.  Optional attributes:  <ul><li>`firstName`</li><li>`lastName`</li><li>`password`</li></ul>  As a best practice, we recommend omitting `password`. If single sign-on is enabled for your customer account, the `password` attribute is ignored. If single sign-on is not enabled, we send a user activation request to their email address when you create the user with no `password`. The user should use the activation email to set their own password.

begin
  # Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1
  result = api_instance.create_user(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserMetadataResponse>, Integer, Hash)> create_user_with_http_info(body)

```ruby
begin
  # Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1
  data, status_code, headers = api_instance.create_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserCreateRequest**](DomainUserCreateRequest.md) | Attributes for this user. &#x60;uid&#x60; (required) is the user&#39;s email address, which is their username in Falcon.  Optional attributes:  &lt;ul&gt;&lt;li&gt;&#x60;firstName&#x60;&lt;/li&gt;&lt;li&gt;&#x60;lastName&#x60;&lt;/li&gt;&lt;li&gt;&#x60;password&#x60;&lt;/li&gt;&lt;/ul&gt;  As a best practice, we recommend omitting &#x60;password&#x60;. If single sign-on is enabled for your customer account, the &#x60;password&#x60; attribute is ignored. If single sign-on is not enabled, we send a user activation request to their email address when you create the user with no &#x60;password&#x60;. The user should use the activation email to set their own password. |  |

### Return type

[**ApiUserMetadataResponse**](ApiUserMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_v1

> <FlightcontrolapiUserResponse> create_user_v1(body, opts)

Create a new user. After creating a user, assign one or more roles with POST '/user-management/entities/user-role-actions/v1'

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

api_instance = Falcon::UserManagement.new
body = Falcon::DomainCreateUserRequest.new # DomainCreateUserRequest | Attributes for this user. `uid` (required) is the user's email address, which is their username in Falcon.  Optional attributes:  <ul><li>`firstName`</li><li>`lastName`</li><li>`password`</li></ul>  As a best practice, we recommend omitting `password`. If single sign-on is enabled for your customer account, the `password` attribute is ignored. If single sign-on is not enabled, we send a user activation request to their email address when you create the user with no `password`. The user should use the activation email to set their own password.
opts = {
  validate_only: true # Boolean | Validate of user is allowed, but do not create user.
}

begin
  # Create a new user. After creating a user, assign one or more roles with POST '/user-management/entities/user-role-actions/v1'
  result = api_instance.create_user_v1(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->create_user_v1: #{e}"
end
```

#### Using the create_user_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiUserResponse>, Integer, Hash)> create_user_v1_with_http_info(body, opts)

```ruby
begin
  # Create a new user. After creating a user, assign one or more roles with POST '/user-management/entities/user-role-actions/v1'
  data, status_code, headers = api_instance.create_user_v1_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiUserResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->create_user_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCreateUserRequest**](DomainCreateUserRequest.md) | Attributes for this user. &#x60;uid&#x60; (required) is the user&#39;s email address, which is their username in Falcon.  Optional attributes:  &lt;ul&gt;&lt;li&gt;&#x60;firstName&#x60;&lt;/li&gt;&lt;li&gt;&#x60;lastName&#x60;&lt;/li&gt;&lt;li&gt;&#x60;password&#x60;&lt;/li&gt;&lt;/ul&gt;  As a best practice, we recommend omitting &#x60;password&#x60;. If single sign-on is enabled for your customer account, the &#x60;password&#x60; attribute is ignored. If single sign-on is not enabled, we send a user activation request to their email address when you create the user with no &#x60;password&#x60;. The user should use the activation email to set their own password. |  |
| **validate_only** | **Boolean** | Validate of user is allowed, but do not create user. | [optional][default to false] |

### Return type

[**FlightcontrolapiUserResponse**](FlightcontrolapiUserResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <MsaReplyMetaOnly> delete_user(user_uuid)

Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | ID of a user. Find a user's ID from `/users/entities/user/v1`.

begin
  # Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently
  result = api_instance.delete_user(user_uuid)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> delete_user_with_http_info(user_uuid)

```ruby
begin
  # Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently
  data, status_code, headers = api_instance.delete_user_with_http_info(user_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_v1

> <MsaspecResponseFields> delete_user_v1(user_uuid)

Delete a user permanently.

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | User UUID.

begin
  # Delete a user permanently.
  result = api_instance.delete_user_v1(user_uuid)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->delete_user_v1: #{e}"
end
```

#### Using the delete_user_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> delete_user_v1_with_http_info(user_uuid)

```ruby
begin
  # Delete a user permanently.
  data, status_code, headers = api_instance.delete_user_v1_with_http_info(user_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->delete_user_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | User UUID. |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## entities_roles_v1

> <FlightcontrolapiGetRolesResponse> entities_roles_v1(ids, opts)

Get info about a role

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

api_instance = Falcon::UserManagement.new
ids = ['inner_example'] # Array<String> | ID of a role. Find a role ID from `/user-management/queries/roles/v1`.
opts = {
  cid: 'cid_example' # String | Customer ID to get available roles for. Empty CID would result in Role IDs for current CID in view.
}

begin
  # Get info about a role
  result = api_instance.entities_roles_v1(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->entities_roles_v1: #{e}"
end
```

#### Using the entities_roles_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiGetRolesResponse>, Integer, Hash)> entities_roles_v1_with_http_info(ids, opts)

```ruby
begin
  # Get info about a role
  data, status_code, headers = api_instance.entities_roles_v1_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiGetRolesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->entities_roles_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a role. Find a role ID from &#x60;/user-management/queries/roles/v1&#x60;. |  |
| **cid** | **String** | Customer ID to get available roles for. Empty CID would result in Role IDs for current CID in view. | [optional] |

### Return type

[**FlightcontrolapiGetRolesResponse**](FlightcontrolapiGetRolesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_available_role_ids

> <MsaQueryResponse> get_available_role_ids

Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.

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

api_instance = Falcon::UserManagement.new

begin
  # Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.
  result = api_instance.get_available_role_ids
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_available_role_ids: #{e}"
end
```

#### Using the get_available_role_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> get_available_role_ids_with_http_info

```ruby
begin
  # Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.
  data, status_code, headers = api_instance.get_available_role_ids_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_available_role_ids_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_roles

> <ApiUserRoleResponse> get_roles(ids)

Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role

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

api_instance = Falcon::UserManagement.new
ids = ['inner_example'] # Array<String> | ID of a role. Find a role ID from `/customer/queries/roles/v1` or `/users/queries/roles/v1`.

begin
  # Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role
  result = api_instance.get_roles(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_roles: #{e}"
end
```

#### Using the get_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserRoleResponse>, Integer, Hash)> get_roles_with_http_info(ids)

```ruby
begin
  # Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role
  data, status_code, headers = api_instance.get_roles_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserRoleResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a role. Find a role ID from &#x60;/customer/queries/roles/v1&#x60; or &#x60;/users/queries/roles/v1&#x60;. |  |

### Return type

[**ApiUserRoleResponse**](ApiUserRoleResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_role_ids

> <MsaQueryResponse> get_user_role_ids(user_uuid)

Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | ID of a user. Find a user's ID from `/users/entities/user/v1`.

begin
  # Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.
  result = api_instance.get_user_role_ids(user_uuid)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_user_role_ids: #{e}"
end
```

#### Using the get_user_role_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> get_user_role_ids_with_http_info(user_uuid)

```ruby
begin
  # Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.
  data, status_code, headers = api_instance.get_user_role_ids_with_http_info(user_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->get_user_role_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## grant_user_role_ids

> <ApiUserRoleIDsResponse> grant_user_role_ids(user_uuid, body)

Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | ID of a user. Find a user's ID from `/users/entities/user/v1`.
body = Falcon::DomainRoleIDs.new({role_ids: ['role_ids_example']}) # DomainRoleIDs | Role ID(s) of the role you want to assign

begin
  # Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user
  result = api_instance.grant_user_role_ids(user_uuid, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->grant_user_role_ids: #{e}"
end
```

#### Using the grant_user_role_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserRoleIDsResponse>, Integer, Hash)> grant_user_role_ids_with_http_info(user_uuid, body)

```ruby
begin
  # Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user
  data, status_code, headers = api_instance.grant_user_role_ids_with_http_info(user_uuid, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserRoleIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->grant_user_role_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |
| **body** | [**DomainRoleIDs**](DomainRoleIDs.md) | Role ID(s) of the role you want to assign |  |

### Return type

[**ApiUserRoleIDsResponse**](ApiUserRoleIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## queries_roles_v1

> <MsaspecQueryResponse> queries_roles_v1(opts)

Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/user-management/entities/roles/v1`.

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

api_instance = Falcon::UserManagement.new
opts = {
  cid: 'cid_example', # String | Customer ID to get available roles for. Empty CID would result in Role IDs for current CID in view.
  user_uuid: 'user_uuid_example', # String | User UUID to get available roles for. Empty User UUID would returns all roles IDs available for customer.
  action: 'action_example' # String | Actionable purpose of the query
}

begin
  # Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/user-management/entities/roles/v1`.
  result = api_instance.queries_roles_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->queries_roles_v1: #{e}"
end
```

#### Using the queries_roles_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> queries_roles_v1_with_http_info(opts)

```ruby
begin
  # Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/user-management/entities/roles/v1`.
  data, status_code, headers = api_instance.queries_roles_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->queries_roles_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | Customer ID to get available roles for. Empty CID would result in Role IDs for current CID in view. | [optional] |
| **user_uuid** | **String** | User UUID to get available roles for. Empty User UUID would returns all roles IDs available for customer. | [optional] |
| **action** | **String** | Actionable purpose of the query | [optional][default to &#39;grant&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_user_v1

> <MsaspecQueryResponse> query_user_v1(opts)

List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/user-management/entities/users/GET/v1`.

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

api_instance = Falcon::UserManagement.new
opts = {
  filter: 'filter_example', # String | Filter using a query in Falcon Query Language (FQL). Supported filters: assigned_cids, cid, direct_assigned_cids, factors, first_name, has_temporary_roles, last_name, name, status, temporarily_assigned_cids, uid
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'cid_name|asc' # String | The property to sort by
}

begin
  # List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/user-management/entities/users/GET/v1`.
  result = api_instance.query_user_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->query_user_v1: #{e}"
end
```

#### Using the query_user_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_user_v1_with_http_info(opts)

```ruby
begin
  # List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/user-management/entities/users/GET/v1`.
  data, status_code, headers = api_instance.query_user_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->query_user_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter using a query in Falcon Query Language (FQL). Supported filters: assigned_cids, cid, direct_assigned_cids, factors, first_name, has_temporary_roles, last_name, name, status, temporarily_assigned_cids, uid | [optional] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional][default to 0] |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional][default to 100] |
| **sort** | **String** | The property to sort by | [optional][default to &#39;uid|asc&#39;] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_emails_by_cid

> <MsaQueryResponse> retrieve_emails_by_cid

Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account

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

api_instance = Falcon::UserManagement.new

begin
  # Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account
  result = api_instance.retrieve_emails_by_cid
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_emails_by_cid: #{e}"
end
```

#### Using the retrieve_emails_by_cid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> retrieve_emails_by_cid_with_http_info

```ruby
begin
  # Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account
  data, status_code, headers = api_instance.retrieve_emails_by_cid_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_emails_by_cid_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_user

> <ApiUserMetadataResponse> retrieve_user(ids)

Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user

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

api_instance = Falcon::UserManagement.new
ids = ['inner_example'] # Array<String> | ID of a user. Find a user's ID from `/users/entities/user/v1`.

begin
  # Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user
  result = api_instance.retrieve_user(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user: #{e}"
end
```

#### Using the retrieve_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserMetadataResponse>, Integer, Hash)> retrieve_user_with_http_info(ids)

```ruby
begin
  # Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user
  data, status_code, headers = api_instance.retrieve_user_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |

### Return type

[**ApiUserMetadataResponse**](ApiUserMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_user_uuid

> <MsaQueryResponse> retrieve_user_uuid(uid)

Deprecated : Please use GET /user-management/queries/users/v1. Get a user's ID by providing a username (usually an email address)

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

api_instance = Falcon::UserManagement.new
uid = ['inner_example'] # Array<String> | A username. This is usually the user's email address, but may vary based on your configuration.

begin
  # Deprecated : Please use GET /user-management/queries/users/v1. Get a user's ID by providing a username (usually an email address)
  result = api_instance.retrieve_user_uuid(uid)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user_uuid: #{e}"
end
```

#### Using the retrieve_user_uuid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> retrieve_user_uuid_with_http_info(uid)

```ruby
begin
  # Deprecated : Please use GET /user-management/queries/users/v1. Get a user's ID by providing a username (usually an email address)
  data, status_code, headers = api_instance.retrieve_user_uuid_with_http_info(uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user_uuid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uid** | [**Array&lt;String&gt;**](String.md) | A username. This is usually the user&#39;s email address, but may vary based on your configuration. |  |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_user_uuids_by_cid

> <MsaQueryResponse> retrieve_user_uuids_by_cid

Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/users/entities/user/v1`.

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

api_instance = Falcon::UserManagement.new

begin
  # Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/users/entities/user/v1`.
  result = api_instance.retrieve_user_uuids_by_cid
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user_uuids_by_cid: #{e}"
end
```

#### Using the retrieve_user_uuids_by_cid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> retrieve_user_uuids_by_cid_with_http_info

```ruby
begin
  # Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/users/entities/user/v1`.
  data, status_code, headers = api_instance.retrieve_user_uuids_by_cid_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_user_uuids_by_cid_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_users_getv1

> <FlightcontrolapiUserResponse> retrieve_users_getv1(body)

Get info about users including their name, UID and CID by providing user UUIDs

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

api_instance = Falcon::UserManagement.new
body = Falcon::MsaspecIdsRequest.new({ids: ['ids_example']}) # MsaspecIdsRequest | Maximum of 5000 User UUIDs can be specified per request.

begin
  # Get info about users including their name, UID and CID by providing user UUIDs
  result = api_instance.retrieve_users_getv1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_users_getv1: #{e}"
end
```

#### Using the retrieve_users_getv1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiUserResponse>, Integer, Hash)> retrieve_users_getv1_with_http_info(body)

```ruby
begin
  # Get info about users including their name, UID and CID by providing user UUIDs
  data, status_code, headers = api_instance.retrieve_users_getv1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiUserResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->retrieve_users_getv1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaspecIdsRequest**](MsaspecIdsRequest.md) | Maximum of 5000 User UUIDs can be specified per request. |  |

### Return type

[**FlightcontrolapiUserResponse**](FlightcontrolapiUserResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_user_role_ids

> <ApiUserRoleIDsResponse> revoke_user_role_ids(user_uuid, ids)

Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | ID of a user. Find a user's ID from `/users/entities/user/v1`.
ids = ['inner_example'] # Array<String> | One or more role IDs to revoke. Find a role's ID from `/users/queries/roles/v1`.

begin
  # Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user
  result = api_instance.revoke_user_role_ids(user_uuid, ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->revoke_user_role_ids: #{e}"
end
```

#### Using the revoke_user_role_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserRoleIDsResponse>, Integer, Hash)> revoke_user_role_ids_with_http_info(user_uuid, ids)

```ruby
begin
  # Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user
  data, status_code, headers = api_instance.revoke_user_role_ids_with_http_info(user_uuid, ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserRoleIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->revoke_user_role_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more role IDs to revoke. Find a role&#39;s ID from &#x60;/users/queries/roles/v1&#x60;. |  |

### Return type

[**ApiUserRoleIDsResponse**](ApiUserRoleIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <ApiUserMetadataResponse> update_user(user_uuid, body)

Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user's first or last name

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | ID of a user. Find a user's ID from `/users/entities/user/v1`.
body = Falcon::DomainUpdateUserFields.new # DomainUpdateUserFields | Attributes for this user. All attributes (shown below) are optional.

begin
  # Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user's first or last name
  result = api_instance.update_user(user_uuid, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserMetadataResponse>, Integer, Hash)> update_user_with_http_info(user_uuid, body)

```ruby
begin
  # Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user's first or last name
  data, status_code, headers = api_instance.update_user_with_http_info(user_uuid, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | ID of a user. Find a user&#39;s ID from &#x60;/users/entities/user/v1&#x60;. |  |
| **body** | [**DomainUpdateUserFields**](DomainUpdateUserFields.md) | Attributes for this user. All attributes (shown below) are optional. |  |

### Return type

[**ApiUserMetadataResponse**](ApiUserMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_v1

> <FlightcontrolapiUserResponse> update_user_v1(user_uuid, body)

Modify an existing user's first or last name.

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

api_instance = Falcon::UserManagement.new
user_uuid = 'user_uuid_example' # String | user uuid
body = Falcon::DomainUpdateUserRequest.new # DomainUpdateUserRequest | Both firstName and lastName have to specified.

begin
  # Modify an existing user's first or last name.
  result = api_instance.update_user_v1(user_uuid, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->update_user_v1: #{e}"
end
```

#### Using the update_user_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightcontrolapiUserResponse>, Integer, Hash)> update_user_v1_with_http_info(user_uuid, body)

```ruby
begin
  # Modify an existing user's first or last name.
  data, status_code, headers = api_instance.update_user_v1_with_http_info(user_uuid, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightcontrolapiUserResponse>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->update_user_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | user uuid |  |
| **body** | [**DomainUpdateUserRequest**](DomainUpdateUserRequest.md) | Both firstName and lastName have to specified. |  |

### Return type

[**FlightcontrolapiUserResponse**](FlightcontrolapiUserResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## user_action_v1

> <MsaspecResponseFields> user_action_v1(body)

Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in `ids` param as part of request payload.

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

api_instance = Falcon::UserManagement.new
body = Falcon::DomainUserActionRequest.new({action: Falcon::DomainUserAction.new({action_name: 'reset_password'}), ids: ['ids_example']}) # DomainUserActionRequest | User UUIDs and Action Name params are required. Allowed values for Action Name param includes 'reset_2fa' and 'reset_password'

begin
  # Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in `ids` param as part of request payload.
  result = api_instance.user_action_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->user_action_v1: #{e}"
end
```

#### Using the user_action_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> user_action_v1_with_http_info(body)

```ruby
begin
  # Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in `ids` param as part of request payload.
  data, status_code, headers = api_instance.user_action_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->user_action_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserActionRequest**](DomainUserActionRequest.md) | User UUIDs and Action Name params are required. Allowed values for Action Name param includes &#39;reset_2fa&#39; and &#39;reset_password&#39; |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## user_roles_action_v1

> <MsaspecResponseFields> user_roles_action_v1(body)

Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke

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

api_instance = Falcon::UserManagement.new
body = Falcon::FlightcontrolapiGrantInput.new # FlightcontrolapiGrantInput | All fields including CID, RoleID(s), User UUID and Action are required. Allowed values for Action param include 'grant' and 'revoke'.

begin
  # Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke
  result = api_instance.user_roles_action_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->user_roles_action_v1: #{e}"
end
```

#### Using the user_roles_action_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> user_roles_action_v1_with_http_info(body)

```ruby
begin
  # Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke
  data, status_code, headers = api_instance.user_roles_action_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling UserManagement->user_roles_action_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FlightcontrolapiGrantInput**](FlightcontrolapiGrantInput.md) | All fields including CID, RoleID(s), User UUID and Action are required. Allowed values for Action param include &#39;grant&#39; and &#39;revoke&#39;. |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

