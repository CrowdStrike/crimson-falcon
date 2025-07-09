# Falcon::DistributionDescriptor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotations** | **Hash&lt;String, String&gt;** |  | [optional] |
| **digest** | **String** |  | [optional] |
| **media_type** | **String** |  | [optional] |
| **platform** | [**V1Platform**](V1Platform.md) |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **urls** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DistributionDescriptor.new(
  annotations: null,
  digest: null,
  media_type: null,
  platform: null,
  size: null,
  urls: null
)
```

