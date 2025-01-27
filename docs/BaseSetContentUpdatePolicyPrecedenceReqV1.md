# Falcon::BaseSetContentUpdatePolicyPrecedenceReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | The ids of all current content-update policies for the platform specified. The precedence will be set in the order the ids are specified |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::BaseSetContentUpdatePolicyPrecedenceReqV1.new(
  ids: null
)
```

