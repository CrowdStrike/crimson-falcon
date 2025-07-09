# Falcon::ParameterTriggerFieldParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_value** | **Object** |  | [optional] |
| **properties** | **Object** | Values associated with trigger property received during provisioning call. | [optional] |
| **required** | **Boolean** | Indicates whether the field must be specified as a parameter at provision time. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterTriggerFieldParameter.new(
  default_value: null,
  properties: null,
  required: null
)
```

