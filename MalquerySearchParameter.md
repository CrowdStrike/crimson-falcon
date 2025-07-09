# Falcon::MalquerySearchParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Pattern type. Accepted values: hex, ascii, wide |  |
| **value** | **String** | Pattern value |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalquerySearchParameter.new(
  type: null,
  value: null
)
```

