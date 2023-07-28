# Falcon::MsspApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_cid_group_members**](MsspApi.md#add_cid_group_members) | **POST** /mssp/entities/cid-group-members/v1 | Add new CID group member. |
| [**add_role**](MsspApi.md#add_role) | **POST** /mssp/entities/mssp-roles/v1 | Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request.  |
| [**add_user_group_members**](MsspApi.md#add_user_group_members) | **POST** /mssp/entities/user-group-members/v1 | Add new user group member. Maximum 500 members allowed per user group. |
| [**create_cid_groups**](MsspApi.md#create_cid_groups) | **POST** /mssp/entities/cid-groups/v1 | Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed. |
| [**create_user_groups**](MsspApi.md#create_user_groups) | **POST** /mssp/entities/user-groups/v1 | Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer. |
| [**delete_cid_group_members**](MsspApi.md#delete_cid_group_members) | **DELETE** /mssp/entities/cid-group-members/v1 | Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members. |
| [**delete_cid_group_members_v2**](MsspApi.md#delete_cid_group_members_v2) | **DELETE** /mssp/entities/cid-group-members/v2 | Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group. |
| [**delete_cid_groups**](MsspApi.md#delete_cid_groups) | **DELETE** /mssp/entities/cid-groups/v1 | Delete CID groups by ID. |
| [**delete_user_group_members**](MsspApi.md#delete_user_group_members) | **DELETE** /mssp/entities/user-group-members/v1 | Delete user group members entry. |
| [**delete_user_groups**](MsspApi.md#delete_user_groups) | **DELETE** /mssp/entities/user-groups/v1 | Delete user groups by ID. |
| [**deleted_roles**](MsspApi.md#deleted_roles) | **DELETE** /mssp/entities/mssp-roles/v1 | Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified). |
| [**get_children**](MsspApi.md#get_children) | **GET** /mssp/entities/children/v1 | Get link to child customer by child CID(s) |
| [**get_children_v2**](MsspApi.md#get_children_v2) | **POST** /mssp/entities/children/GET/v2 | Get link to child customer by child CID(s) |
| [**get_cid_group_by_id**](MsspApi.md#get_cid_group_by_id) | **GET** /mssp/entities/cid-groups/v1 | Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID. |
| [**get_cid_group_by_id_v2**](MsspApi.md#get_cid_group_by_id_v2) | **GET** /mssp/entities/cid-groups/v2 | Get CID Groups by ID. |
| [**get_cid_group_members_by**](MsspApi.md#get_cid_group_members_by) | **GET** /mssp/entities/cid-group-members/v1 | Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID. |
| [**get_cid_group_members_by_v2**](MsspApi.md#get_cid_group_members_by_v2) | **GET** /mssp/entities/cid-group-members/v2 | Get CID group members by CID Group ID. |
| [**get_roles_by_id**](MsspApi.md#get_roles_by_id) | **GET** /mssp/entities/mssp-roles/v1 | Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque. |
| [**get_user_group_members_by_id**](MsspApi.md#get_user_group_members_by_id) | **GET** /mssp/entities/user-group-members/v1 | Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID. |
| [**get_user_group_members_by_idv2**](MsspApi.md#get_user_group_members_by_idv2) | **GET** /mssp/entities/user-group-members/v2 | Get user group members by user group ID. |
| [**get_user_groups_by_id**](MsspApi.md#get_user_groups_by_id) | **GET** /mssp/entities/user-groups/v1 | Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID. |
| [**get_user_groups_by_idv2**](MsspApi.md#get_user_groups_by_idv2) | **GET** /mssp/entities/user-groups/v2 | Get user groups by ID. |
| [**query_children**](MsspApi.md#query_children) | **GET** /mssp/queries/children/v1 | Query for customers linked as children |
| [**query_cid_group_members**](MsspApi.md#query_cid_group_members) | **GET** /mssp/queries/cid-group-members/v1 | Query a CID groups members by associated CID. |
| [**query_cid_groups**](MsspApi.md#query_cid_groups) | **GET** /mssp/queries/cid-groups/v1 | Query CID groups. |
| [**query_roles**](MsspApi.md#query_roles) | **GET** /mssp/queries/mssp-roles/v1 | Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional. |
| [**query_user_group_members**](MsspApi.md#query_user_group_members) | **GET** /mssp/queries/user-group-members/v1 | Query user group member by user UUID. |
| [**query_user_groups**](MsspApi.md#query_user_groups) | **GET** /mssp/queries/user-groups/v1 | Query user groups. |
| [**update_cid_groups**](MsspApi.md#update_cid_groups) | **PATCH** /mssp/entities/cid-groups/v1 | Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected. |
| [**update_user_groups**](MsspApi.md#update_user_groups) | **PATCH** /mssp/entities/user-groups/v1 | Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected. |


## add_cid_group_members

> <DomainCIDGroupMembersResponseV1> add_cid_group_members(body)

Add new CID group member.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainCIDGroupMembersRequestV1.new({resources: [Falcon::DomainCIDGroupMembers.new({cid_group_id: 'cid_group_id_example', cids: ['cids_example']})]}) # DomainCIDGroupMembersRequestV1 | Both 'cid_group_id' and 'cids' fields are required.

begin
  # Add new CID group member.
  result = api_instance.add_cid_group_members(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_cid_group_members: #{e}"
end
```

#### Using the add_cid_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupMembersResponseV1>, Integer, Hash)> add_cid_group_members_with_http_info(body)

```ruby
begin
  # Add new CID group member.
  data, status_code, headers = api_instance.add_cid_group_members_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_cid_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCIDGroupMembersRequestV1**](DomainCIDGroupMembersRequestV1.md) | Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required. |  |

### Return type

[**DomainCIDGroupMembersResponseV1**](DomainCIDGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_role

> <DomainMSSPRoleResponseV1> add_role(body)

Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. 

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainMSSPRoleRequestV1.new({resources: [Falcon::DomainMSSPRoles.new({cid_group_id: 'cid_group_id_example', id: 'id_example', role_ids: ['role_ids_example'], user_group_id: 'user_group_id_example'})]}) # DomainMSSPRoleRequestV1 | 'user_group_id', 'cid_group_id' and 'role_ids' fields are required. Remaining are populated by system.

begin
  # Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. 
  result = api_instance.add_role(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_role: #{e}"
end
```

#### Using the add_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMSSPRoleResponseV1>, Integer, Hash)> add_role_with_http_info(body)

```ruby
begin
  # Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. 
  data, status_code, headers = api_instance.add_role_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMSSPRoleResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainMSSPRoleRequestV1**](DomainMSSPRoleRequestV1.md) | &#39;user_group_id&#39;, &#39;cid_group_id&#39; and &#39;role_ids&#39; fields are required. Remaining are populated by system. |  |

### Return type

[**DomainMSSPRoleResponseV1**](DomainMSSPRoleResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_user_group_members

> <DomainUserGroupMembersResponseV1> add_user_group_members(body)

Add new user group member. Maximum 500 members allowed per user group.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainUserGroupMembersRequestV1.new({resources: [Falcon::DomainUserGroupMembers.new({user_group_id: 'user_group_id_example', user_uuids: ['user_uuids_example']})]}) # DomainUserGroupMembersRequestV1 | Both 'user_group_id' and 'user_uuids' fields are required.

begin
  # Add new user group member. Maximum 500 members allowed per user group.
  result = api_instance.add_user_group_members(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_user_group_members: #{e}"
end
```

#### Using the add_user_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupMembersResponseV1>, Integer, Hash)> add_user_group_members_with_http_info(body)

```ruby
begin
  # Add new user group member. Maximum 500 members allowed per user group.
  data, status_code, headers = api_instance.add_user_group_members_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->add_user_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserGroupMembersRequestV1**](DomainUserGroupMembersRequestV1.md) | Both &#39;user_group_id&#39; and &#39;user_uuids&#39; fields are required. |  |

### Return type

[**DomainUserGroupMembersResponseV1**](DomainUserGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cid_groups

> <DomainCIDGroupsResponseV1> create_cid_groups(body)

Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainCIDGroupsRequestV1.new({resources: [Falcon::DomainCIDGroup.new({description: 'description_example', name: 'name_example'})]}) # DomainCIDGroupsRequestV1 | Only 'name' and/or 'description' fields are required. Remaining are assigned by the system.

begin
  # Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.
  result = api_instance.create_cid_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->create_cid_groups: #{e}"
end
```

#### Using the create_cid_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupsResponseV1>, Integer, Hash)> create_cid_groups_with_http_info(body)

```ruby
begin
  # Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.
  data, status_code, headers = api_instance.create_cid_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->create_cid_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCIDGroupsRequestV1**](DomainCIDGroupsRequestV1.md) | Only &#39;name&#39; and/or &#39;description&#39; fields are required. Remaining are assigned by the system. |  |

### Return type

[**DomainCIDGroupsResponseV1**](DomainCIDGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_groups

> <DomainUserGroupsResponseV1> create_user_groups(body)

Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainUserGroupsRequestV1.new({resources: [Falcon::DomainUserGroup.new({description: 'description_example', name: 'name_example'})]}) # DomainUserGroupsRequestV1 | Only 'name' and/or 'description' fields are required. Remaining are assigned by the system.

begin
  # Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.
  result = api_instance.create_user_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->create_user_groups: #{e}"
end
```

#### Using the create_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupsResponseV1>, Integer, Hash)> create_user_groups_with_http_info(body)

```ruby
begin
  # Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.
  data, status_code, headers = api_instance.create_user_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->create_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserGroupsRequestV1**](DomainUserGroupsRequestV1.md) | Only &#39;name&#39; and/or &#39;description&#39; fields are required. Remaining are assigned by the system. |  |

### Return type

[**DomainUserGroupsResponseV1**](DomainUserGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cid_group_members

> <DomainCIDGroupMembersResponseV1> delete_cid_group_members(body)

Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainCIDGroupMembersRequestV1.new({resources: [Falcon::DomainCIDGroupMembers.new({cid_group_id: 'cid_group_id_example', cids: ['cids_example']})]}) # DomainCIDGroupMembersRequestV1 | Both 'cid_group_id' and 'cids' fields are required.

begin
  # Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.
  result = api_instance.delete_cid_group_members(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_group_members: #{e}"
end
```

#### Using the delete_cid_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupMembersResponseV1>, Integer, Hash)> delete_cid_group_members_with_http_info(body)

```ruby
begin
  # Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.
  data, status_code, headers = api_instance.delete_cid_group_members_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCIDGroupMembersRequestV1**](DomainCIDGroupMembersRequestV1.md) | Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required. |  |

### Return type

[**DomainCIDGroupMembersResponseV1**](DomainCIDGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cid_group_members_v2

> <DomainCIDGroupMembersResponseV1> delete_cid_group_members_v2(body)

Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainCIDGroupMembersRequestV1.new({resources: [Falcon::DomainCIDGroupMembers.new({cid_group_id: 'cid_group_id_example', cids: ['cids_example']})]}) # DomainCIDGroupMembersRequestV1 | Both 'cid_group_id' and 'cids' fields are required.

begin
  # Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.
  result = api_instance.delete_cid_group_members_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_group_members_v2: #{e}"
end
```

#### Using the delete_cid_group_members_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupMembersResponseV1>, Integer, Hash)> delete_cid_group_members_v2_with_http_info(body)

```ruby
begin
  # Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.
  data, status_code, headers = api_instance.delete_cid_group_members_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_group_members_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCIDGroupMembersRequestV1**](DomainCIDGroupMembersRequestV1.md) | Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required. |  |

### Return type

[**DomainCIDGroupMembersResponseV1**](DomainCIDGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cid_groups

> <MsaEntitiesResponse> delete_cid_groups(cid_group_ids)

Delete CID groups by ID.

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

api_instance = Falcon::MsspApi.new
cid_group_ids = ['inner_example'] # Array<String> | CID group ids to delete

begin
  # Delete CID groups by ID.
  result = api_instance.delete_cid_groups(cid_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_groups: #{e}"
end
```

#### Using the delete_cid_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaEntitiesResponse>, Integer, Hash)> delete_cid_groups_with_http_info(cid_group_ids)

```ruby
begin
  # Delete CID groups by ID.
  data, status_code, headers = api_instance.delete_cid_groups_with_http_info(cid_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_cid_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid_group_ids** | [**Array&lt;String&gt;**](String.md) | CID group ids to delete |  |

### Return type

[**MsaEntitiesResponse**](MsaEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_group_members

> <DomainUserGroupMembersResponseV1> delete_user_group_members(body)

Delete user group members entry.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainUserGroupMembersRequestV1.new({resources: [Falcon::DomainUserGroupMembers.new({user_group_id: 'user_group_id_example', user_uuids: ['user_uuids_example']})]}) # DomainUserGroupMembersRequestV1 | Both 'user_group_id' and 'user_uuids' fields are required.

begin
  # Delete user group members entry.
  result = api_instance.delete_user_group_members(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_user_group_members: #{e}"
end
```

#### Using the delete_user_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupMembersResponseV1>, Integer, Hash)> delete_user_group_members_with_http_info(body)

```ruby
begin
  # Delete user group members entry.
  data, status_code, headers = api_instance.delete_user_group_members_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_user_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserGroupMembersRequestV1**](DomainUserGroupMembersRequestV1.md) | Both &#39;user_group_id&#39; and &#39;user_uuids&#39; fields are required. |  |

### Return type

[**DomainUserGroupMembersResponseV1**](DomainUserGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_groups

> <MsaEntitiesResponse> delete_user_groups(user_group_ids)

Delete user groups by ID.

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

api_instance = Falcon::MsspApi.new
user_group_ids = ['inner_example'] # Array<String> | User group IDs to delete

begin
  # Delete user groups by ID.
  result = api_instance.delete_user_groups(user_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_user_groups: #{e}"
end
```

#### Using the delete_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaEntitiesResponse>, Integer, Hash)> delete_user_groups_with_http_info(user_group_ids)

```ruby
begin
  # Delete user groups by ID.
  data, status_code, headers = api_instance.delete_user_groups_with_http_info(user_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->delete_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_ids** | [**Array&lt;String&gt;**](String.md) | User group IDs to delete |  |

### Return type

[**MsaEntitiesResponse**](MsaEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deleted_roles

> <DomainMSSPRoleResponseV1> deleted_roles(body)

Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainMSSPRoleRequestV1.new({resources: [Falcon::DomainMSSPRoles.new({cid_group_id: 'cid_group_id_example', id: 'id_example', role_ids: ['role_ids_example'], user_group_id: 'user_group_id_example'})]}) # DomainMSSPRoleRequestV1 | 'user_group_id' and 'cid_group_id' fields are required. 'role_ids' field is optional. Remaining fields are ignored.

begin
  # Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).
  result = api_instance.deleted_roles(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->deleted_roles: #{e}"
end
```

#### Using the deleted_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMSSPRoleResponseV1>, Integer, Hash)> deleted_roles_with_http_info(body)

```ruby
begin
  # Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).
  data, status_code, headers = api_instance.deleted_roles_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMSSPRoleResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->deleted_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainMSSPRoleRequestV1**](DomainMSSPRoleRequestV1.md) | &#39;user_group_id&#39; and &#39;cid_group_id&#39; fields are required. &#39;role_ids&#39; field is optional. Remaining fields are ignored. |  |

### Return type

[**DomainMSSPRoleResponseV1**](DomainMSSPRoleResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_children

> <DomainChildrenResponseV1> get_children(ids)

Get link to child customer by child CID(s)

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | CID of a child customer

begin
  # Get link to child customer by child CID(s)
  result = api_instance.get_children(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_children: #{e}"
end
```

#### Using the get_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainChildrenResponseV1>, Integer, Hash)> get_children_with_http_info(ids)

```ruby
begin
  # Get link to child customer by child CID(s)
  data, status_code, headers = api_instance.get_children_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainChildrenResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | CID of a child customer |  |

### Return type

[**DomainChildrenResponseV1**](DomainChildrenResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_children_v2

> <DomainChildrenResponseV1> get_children_v2(body)

Get link to child customer by child CID(s)

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

api_instance = Falcon::MsspApi.new
body = Falcon::MsaspecIdsRequest.new({ids: ['ids_example']}) # MsaspecIdsRequest | 

begin
  # Get link to child customer by child CID(s)
  result = api_instance.get_children_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_children_v2: #{e}"
end
```

#### Using the get_children_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainChildrenResponseV1>, Integer, Hash)> get_children_v2_with_http_info(body)

```ruby
begin
  # Get link to child customer by child CID(s)
  data, status_code, headers = api_instance.get_children_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainChildrenResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_children_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaspecIdsRequest**](MsaspecIdsRequest.md) |  |  |

### Return type

[**DomainChildrenResponseV1**](DomainChildrenResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cid_group_by_id

> <DomainCIDGroupsResponseV1> get_cid_group_by_id(cid_group_ids)

Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.

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

api_instance = Falcon::MsspApi.new
cid_group_ids = ['inner_example'] # Array<String> | CID group IDs to be searched on

begin
  # Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.
  result = api_instance.get_cid_group_by_id(cid_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_by_id: #{e}"
end
```

#### Using the get_cid_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupsResponseV1>, Integer, Hash)> get_cid_group_by_id_with_http_info(cid_group_ids)

```ruby
begin
  # Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.
  data, status_code, headers = api_instance.get_cid_group_by_id_with_http_info(cid_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid_group_ids** | [**Array&lt;String&gt;**](String.md) | CID group IDs to be searched on |  |

### Return type

[**DomainCIDGroupsResponseV1**](DomainCIDGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cid_group_by_id_v2

> <DomainCIDGroupsResponseV1> get_cid_group_by_id_v2(ids)

Get CID Groups by ID.

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | CID group IDs to search for

begin
  # Get CID Groups by ID.
  result = api_instance.get_cid_group_by_id_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_by_id_v2: #{e}"
end
```

#### Using the get_cid_group_by_id_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupsResponseV1>, Integer, Hash)> get_cid_group_by_id_v2_with_http_info(ids)

```ruby
begin
  # Get CID Groups by ID.
  data, status_code, headers = api_instance.get_cid_group_by_id_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_by_id_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | CID group IDs to search for |  |

### Return type

[**DomainCIDGroupsResponseV1**](DomainCIDGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cid_group_members_by

> <DomainCIDGroupMembersResponseV1> get_cid_group_members_by(cid_group_ids)

Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.

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

api_instance = Falcon::MsspApi.new
cid_group_ids = ['inner_example'] # Array<String> | CID group IDs to search for

begin
  # Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.
  result = api_instance.get_cid_group_members_by(cid_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_members_by: #{e}"
end
```

#### Using the get_cid_group_members_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupMembersResponseV1>, Integer, Hash)> get_cid_group_members_by_with_http_info(cid_group_ids)

```ruby
begin
  # Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.
  data, status_code, headers = api_instance.get_cid_group_members_by_with_http_info(cid_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_members_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid_group_ids** | [**Array&lt;String&gt;**](String.md) | CID group IDs to search for |  |

### Return type

[**DomainCIDGroupMembersResponseV1**](DomainCIDGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cid_group_members_by_v2

> <DomainCIDGroupMembersResponseV1> get_cid_group_members_by_v2(ids)

Get CID group members by CID Group ID.

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | CID group IDs search for

begin
  # Get CID group members by CID Group ID.
  result = api_instance.get_cid_group_members_by_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_members_by_v2: #{e}"
end
```

#### Using the get_cid_group_members_by_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupMembersResponseV1>, Integer, Hash)> get_cid_group_members_by_v2_with_http_info(ids)

```ruby
begin
  # Get CID group members by CID Group ID.
  data, status_code, headers = api_instance.get_cid_group_members_by_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_cid_group_members_by_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | CID group IDs search for |  |

### Return type

[**DomainCIDGroupMembersResponseV1**](DomainCIDGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_roles_by_id

> <DomainMSSPRoleResponseV1> get_roles_by_id(ids)

Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | Link ID is a string consisting of multiple components, but should be treated as opaque.

begin
  # Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.
  result = api_instance.get_roles_by_id(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_roles_by_id: #{e}"
end
```

#### Using the get_roles_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMSSPRoleResponseV1>, Integer, Hash)> get_roles_by_id_with_http_info(ids)

```ruby
begin
  # Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.
  data, status_code, headers = api_instance.get_roles_by_id_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMSSPRoleResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_roles_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | Link ID is a string consisting of multiple components, but should be treated as opaque. |  |

### Return type

[**DomainMSSPRoleResponseV1**](DomainMSSPRoleResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_group_members_by_id

> <DomainUserGroupMembersResponseV1> get_user_group_members_by_id(user_group_ids)

Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.

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

api_instance = Falcon::MsspApi.new
user_group_ids = ['inner_example'] # Array<String> | User group IDs to search for

begin
  # Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.
  result = api_instance.get_user_group_members_by_id(user_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_group_members_by_id: #{e}"
end
```

#### Using the get_user_group_members_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupMembersResponseV1>, Integer, Hash)> get_user_group_members_by_id_with_http_info(user_group_ids)

```ruby
begin
  # Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.
  data, status_code, headers = api_instance.get_user_group_members_by_id_with_http_info(user_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_group_members_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_ids** | [**Array&lt;String&gt;**](String.md) | User group IDs to search for |  |

### Return type

[**DomainUserGroupMembersResponseV1**](DomainUserGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_group_members_by_idv2

> <DomainUserGroupMembersResponseV1> get_user_group_members_by_idv2(ids)

Get user group members by user group ID.

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | User group IDs to search for

begin
  # Get user group members by user group ID.
  result = api_instance.get_user_group_members_by_idv2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_group_members_by_idv2: #{e}"
end
```

#### Using the get_user_group_members_by_idv2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupMembersResponseV1>, Integer, Hash)> get_user_group_members_by_idv2_with_http_info(ids)

```ruby
begin
  # Get user group members by user group ID.
  data, status_code, headers = api_instance.get_user_group_members_by_idv2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupMembersResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_group_members_by_idv2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | User group IDs to search for |  |

### Return type

[**DomainUserGroupMembersResponseV1**](DomainUserGroupMembersResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_groups_by_id

> <DomainUserGroupsResponseV1> get_user_groups_by_id(user_group_ids)

Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.

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

api_instance = Falcon::MsspApi.new
user_group_ids = ['inner_example'] # Array<String> | User Group IDs to search for

begin
  # Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.
  result = api_instance.get_user_groups_by_id(user_group_ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_groups_by_id: #{e}"
end
```

#### Using the get_user_groups_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupsResponseV1>, Integer, Hash)> get_user_groups_by_id_with_http_info(user_group_ids)

```ruby
begin
  # Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.
  data, status_code, headers = api_instance.get_user_groups_by_id_with_http_info(user_group_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_groups_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_ids** | [**Array&lt;String&gt;**](String.md) | User Group IDs to search for |  |

### Return type

[**DomainUserGroupsResponseV1**](DomainUserGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_groups_by_idv2

> <DomainUserGroupsResponseV1> get_user_groups_by_idv2(ids)

Get user groups by ID.

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

api_instance = Falcon::MsspApi.new
ids = ['inner_example'] # Array<String> | User group IDs to search for

begin
  # Get user groups by ID.
  result = api_instance.get_user_groups_by_idv2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_groups_by_idv2: #{e}"
end
```

#### Using the get_user_groups_by_idv2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupsResponseV1>, Integer, Hash)> get_user_groups_by_idv2_with_http_info(ids)

```ruby
begin
  # Get user groups by ID.
  data, status_code, headers = api_instance.get_user_groups_by_idv2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->get_user_groups_by_idv2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | User group IDs to search for |  |

### Return type

[**DomainUserGroupsResponseV1**](DomainUserGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_children

> <MsaspecQueryResponse> query_children(opts)

Query for customers linked as children

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

api_instance = Falcon::MsspApi.new
opts = {
  filter: 'filter_example', # String | Filter using a query in Falcon Query Language (FQL). Supported filters: cid
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return ids
  limit: 56 # Integer | Number of ids to return
}

begin
  # Query for customers linked as children
  result = api_instance.query_children(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_children: #{e}"
end
```

#### Using the query_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_children_with_http_info(opts)

```ruby
begin
  # Query for customers linked as children
  data, status_code, headers = api_instance.query_children_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter using a query in Falcon Query Language (FQL). Supported filters: cid | [optional] |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;last_modified_timestamp|desc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids | [optional][default to 0] |
| **limit** | **Integer** | Number of ids to return | [optional][default to 10] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_cid_group_members

> <MsaQueryResponse> query_cid_group_members(cid, opts)

Query a CID groups members by associated CID.

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

api_instance = Falcon::MsspApi.new
cid = 'cid_example' # String | CID to lookup associated CID group ID
opts = {
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return id
  limit: 56 # Integer | Maximum number of results to return
}

begin
  # Query a CID groups members by associated CID.
  result = api_instance.query_cid_group_members(cid, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_cid_group_members: #{e}"
end
```

#### Using the query_cid_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_cid_group_members_with_http_info(cid, opts)

```ruby
begin
  # Query a CID groups members by associated CID.
  data, status_code, headers = api_instance.query_cid_group_members_with_http_info(cid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_cid_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | CID to lookup associated CID group ID |  |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;last_modified_timestamp|desc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return id | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of results to return | [optional][default to 10] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_cid_groups

> <MsaQueryResponse> query_cid_groups(opts)

Query CID groups.

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

api_instance = Falcon::MsspApi.new
opts = {
  name: 'name_example', # String | Name to lookup groups for
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return ids
  limit: 56 # Integer | Maximum number of results to return
}

begin
  # Query CID groups.
  result = api_instance.query_cid_groups(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_cid_groups: #{e}"
end
```

#### Using the query_cid_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_cid_groups_with_http_info(opts)

```ruby
begin
  # Query CID groups.
  data, status_code, headers = api_instance.query_cid_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_cid_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name to lookup groups for | [optional] |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;name|asc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of results to return | [optional][default to 10] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_roles

> <MsaQueryResponse> query_roles(opts)

Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.

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

api_instance = Falcon::MsspApi.new
opts = {
  user_group_id: 'user_group_id_example', # String | User group ID to fetch MSSP role for
  cid_group_id: 'cid_group_id_example', # String | CID group ID to fetch MSSP role for
  role_id: 'role_id_example', # String | Role ID to fetch MSSP role for
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return ids
  limit: 56 # Integer | Maximum number of results to return
}

begin
  # Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.
  result = api_instance.query_roles(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_roles: #{e}"
end
```

#### Using the query_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_roles_with_http_info(opts)

```ruby
begin
  # Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.
  data, status_code, headers = api_instance.query_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | User group ID to fetch MSSP role for | [optional] |
| **cid_group_id** | **String** | CID group ID to fetch MSSP role for | [optional] |
| **role_id** | **String** | Role ID to fetch MSSP role for | [optional] |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;last_modified_timestamp|desc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of results to return | [optional][default to 10] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_user_group_members

> <MsaQueryResponse> query_user_group_members(user_uuid, opts)

Query user group member by user UUID.

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

api_instance = Falcon::MsspApi.new
user_uuid = 'user_uuid_example' # String | User UUID to lookup associated user group ID
opts = {
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return ids
  limit: 56 # Integer | Number of ids to return
}

begin
  # Query user group member by user UUID.
  result = api_instance.query_user_group_members(user_uuid, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_user_group_members: #{e}"
end
```

#### Using the query_user_group_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_user_group_members_with_http_info(user_uuid, opts)

```ruby
begin
  # Query user group member by user UUID.
  data, status_code, headers = api_instance.query_user_group_members_with_http_info(user_uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_user_group_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_uuid** | **String** | User UUID to lookup associated user group ID |  |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;last_modified_timestamp|desc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids | [optional][default to 0] |
| **limit** | **Integer** | Number of ids to return | [optional][default to 10] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_user_groups

> <MsaQueryResponse> query_user_groups(opts)

Query user groups.

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

api_instance = Falcon::MsspApi.new
opts = {
  name: 'name_example', # String | Name to lookup groups for
  sort: 'last_modified_timestamp|asc', # String | The sort expression used to sort the results
  offset: 56, # Integer | Starting index of overall result set from which to return ids
  limit: 56 # Integer | Maximum number of results to return
}

begin
  # Query user groups.
  result = api_instance.query_user_groups(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_user_groups: #{e}"
end
```

#### Using the query_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_user_groups_with_http_info(opts)

```ruby
begin
  # Query user groups.
  data, status_code, headers = api_instance.query_user_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->query_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name to lookup groups for | [optional] |
| **sort** | **String** | The sort expression used to sort the results | [optional][default to &#39;name|asc&#39;] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of results to return | [optional][default to 10] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cid_groups

> <DomainCIDGroupsResponseV1> update_cid_groups(body)

Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainCIDGroupsRequestV1.new({resources: [Falcon::DomainCIDGroup.new({description: 'description_example', name: 'name_example'})]}) # DomainCIDGroupsRequestV1 | 'cid_group_id' field is required to identify the CID group to update along with 'name' and/or 'description' fields to be updated.

begin
  # Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.
  result = api_instance.update_cid_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->update_cid_groups: #{e}"
end
```

#### Using the update_cid_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCIDGroupsResponseV1>, Integer, Hash)> update_cid_groups_with_http_info(body)

```ruby
begin
  # Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.
  data, status_code, headers = api_instance.update_cid_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCIDGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->update_cid_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCIDGroupsRequestV1**](DomainCIDGroupsRequestV1.md) | &#39;cid_group_id&#39; field is required to identify the CID group to update along with &#39;name&#39; and/or &#39;description&#39; fields to be updated. |  |

### Return type

[**DomainCIDGroupsResponseV1**](DomainCIDGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_groups

> <DomainUserGroupsResponseV1> update_user_groups(body)

Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.

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

api_instance = Falcon::MsspApi.new
body = Falcon::DomainUserGroupsRequestV1.new({resources: [Falcon::DomainUserGroup.new({description: 'description_example', name: 'name_example'})]}) # DomainUserGroupsRequestV1 | 'user_group_id' field is required to identify the user group to update along with 'name' and/or 'description' fields to be updated.

begin
  # Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.
  result = api_instance.update_user_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->update_user_groups: #{e}"
end
```

#### Using the update_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainUserGroupsResponseV1>, Integer, Hash)> update_user_groups_with_http_info(body)

```ruby
begin
  # Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.
  data, status_code, headers = api_instance.update_user_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainUserGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling MsspApi->update_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainUserGroupsRequestV1**](DomainUserGroupsRequestV1.md) | &#39;user_group_id&#39; field is required to identify the user group to update along with &#39;name&#39; and/or &#39;description&#39; fields to be updated. |  |

### Return type

[**DomainUserGroupsResponseV1**](DomainUserGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

