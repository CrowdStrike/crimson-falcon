# Falcon::Schema2Manifest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**DistributionDescriptor**](DistributionDescriptor.md) |  |  |
| **layers** | [**Array&lt;DistributionDescriptor&gt;**](DistributionDescriptor.md) |  |  |
| **media_type** | **String** |  | [optional] |
| **schema_version** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Schema2Manifest.new(
  config: null,
  layers: null,
  media_type: null,
  schema_version: null
)
```

