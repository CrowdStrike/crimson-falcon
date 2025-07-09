# Falcon::DomainDiscoverAPIMountStorageInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_space** | **Integer** | The available space of the mounted disk | [optional] |
| **mount_path** | **String** | The path of the mounted disk | [optional] |
| **used_space** | **Integer** | The used space of the mounted disk | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIMountStorageInfo.new(
  available_space: null,
  mount_path: null,
  used_space: null
)
```

