# Falcon::DomainUserCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **uid** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainUserCreateRequest.new(
  first_name: null,
  last_name: null,
  password: null,
  uid: null
)
```

