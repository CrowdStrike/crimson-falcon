# Falcon::RequestsSetPolicyPrecedenceReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | The ids of all current prevention policies for the platform specified. The precedence will be set in the order the ids are specified |  |
| **platform_name** | **String** | The name of the platform for which to set precedence |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsSetPolicyPrecedenceReqV1.new(
  ids: null,
  platform_name: null
)
```

