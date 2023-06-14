# Falcon::DomainUserGrants

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **cid_group_id** | **String** |  | [optional] |
| **cid_group_name** | **String** |  | [optional] |
| **grant_type** | **String** |  |  |
| **parent_cid** | **String** |  | [optional] |
| **role_id** | **String** |  |  |
| **role_name** | **String** |  |  |
| **user_group_id** | **String** |  | [optional] |
| **user_group_name** | **String** |  | [optional] |
| **uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUserGrants.new(
  cid: null,
  cid_group_id: null,
  cid_group_name: null,
  grant_type: null,
  parent_cid: null,
  role_id: null,
  role_name: null,
  user_group_id: null,
  user_group_name: null,
  uuid: null
)
```

