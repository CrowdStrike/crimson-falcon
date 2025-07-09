# Falcon::TypesK8SPodSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_address** | **String** |  | [optional] |
| **image_pull_secrets** | **Array&lt;String&gt;** |  | [optional] |
| **pod_labels** | [**Array&lt;TypesKeyValue&gt;**](TypesKeyValue.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesK8SPodSettings.new(
  image_address: null,
  image_pull_secrets: null,
  pod_labels: null
)
```

