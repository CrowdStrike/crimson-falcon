# Falcon::DomainCreateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **uid** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainCreateUserRequest.new(
  cid: null,
  first_name: null,
  last_name: null,
  password: null,
  uid: null
)
```

