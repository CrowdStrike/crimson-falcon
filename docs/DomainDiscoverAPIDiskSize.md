# Falcon::DomainDiscoverAPIDiskSize

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_name** | **String** | The name of the disk on the host | [optional] |
| **disk_space** | **Integer** | The size of the disk on the host | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIDiskSize.new(
  disk_name: null,
  disk_space: null
)
```

