# Falcon::DomainChildLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checksum** | **String** |  |  |
| **child_cid** | **String** |  |  |
| **child_gcid** | **String** |  | [optional] |
| **child_of** | **String** |  |  |
| **domains** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainChildLink.new(
  checksum: null,
  child_cid: null,
  child_gcid: null,
  child_of: null,
  domains: null,
  name: null,
  status: null
)
```

