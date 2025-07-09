# Falcon::ContentUpdateCreatePolicyReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The description to use when creating the policy | [optional] |
| **name** | **String** | The name to use when creating the policy |  |
| **settings** | [**ContentUpdateContentUpdateSettingsReqV1**](ContentUpdateContentUpdateSettingsReqV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ContentUpdateCreatePolicyReqV1.new(
  description: null,
  name: null,
  settings: null
)
```

