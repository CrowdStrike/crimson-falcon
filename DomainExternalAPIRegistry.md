# Falcon::DomainExternalAPIRegistry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **credential** | [**DomainExternalCredentialResponse**](DomainExternalCredentialResponse.md) |  | [optional] |
| **id** | **String** |  |  |
| **last_refreshed_at** | **String** |  |  |
| **next_refresh_at** | **String** |  |  |
| **refresh_interval** | **Integer** |  |  |
| **state** | **String** |  |  |
| **state_changed_at** | **String** |  |  |
| **type** | **String** |  |  |
| **updated_at** | **String** |  |  |
| **url** | **String** |  |  |
| **url_uniqueness_alias** | **String** |  |  |
| **user_defined_alias** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAPIRegistry.new(
  created_at: null,
  credential: null,
  id: null,
  last_refreshed_at: null,
  next_refresh_at: null,
  refresh_interval: null,
  state: null,
  state_changed_at: null,
  type: null,
  updated_at: null,
  url: null,
  url_uniqueness_alias: null,
  user_defined_alias: null
)
```

