# Falcon::BaseSetPolicyPrecedenceReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | The ids of all current prevention policies for the platform specified. The precedence will be set in the order the ids are specified |  |
| **platform_name** | **String** | The name of the platform for which to set precedence |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::BaseSetPolicyPrecedenceReqV1.new(
  ids: null,
  platform_name: null
)
```

