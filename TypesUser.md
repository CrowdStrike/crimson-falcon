# Falcon::TypesUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted_terms** | **Boolean** |  |  |
| **email** | **String** |  |  |
| **external** | **Boolean** |  |  |
| **fullname** | **String** |  |  |
| **groups** | [**Array&lt;TypesUserGroup&gt;**](TypesUserGroup.md) |  |  |
| **job_title** | **String** |  |  |
| **last_login** | **Time** |  |  |
| **role** | **String** |  |  |
| **status** | **String** |  |  |
| **user_id** | **Integer** |  |  |
| **username** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesUser.new(
  accepted_terms: null,
  email: null,
  external: null,
  fullname: null,
  groups: null,
  job_title: null,
  last_login: null,
  role: null,
  status: null,
  user_id: null,
  username: null
)
```

