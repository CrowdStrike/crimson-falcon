# Falcon::DomainCloudCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature** | **String** |  |  |
| **is_visible** | **Boolean** |  |  |
| **last_transition** | **Time** |  |  |
| **message** | **String** |  | [optional] |
| **product** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCloudCondition.new(
  feature: null,
  is_visible: null,
  last_transition: null,
  message: null,
  product: null,
  reason: null,
  status: null,
  type: null
)
```

