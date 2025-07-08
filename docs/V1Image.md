# Falcon::V1Image

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** |  |  |
| **author** | **String** |  | [optional] |
| **config** | [**V1ImageConfig**](V1ImageConfig.md) |  | [optional] |
| **created** | **Time** |  | [optional] |
| **history** | [**Array&lt;V1History&gt;**](V1History.md) |  | [optional] |
| **os** | **String** |  |  |
| **os_features** | **Array&lt;String&gt;** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **rootfs** | [**V1RootFS**](V1RootFS.md) |  |  |
| **variant** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V1Image.new(
  architecture: null,
  author: null,
  config: null,
  created: null,
  history: null,
  os: null,
  os_features: null,
  os_version: null,
  rootfs: null,
  variant: null
)
```

