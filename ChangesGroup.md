# Falcon::ChangesGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | [**ChangesAfter**](ChangesAfter.md) |  | [optional] |
| **before** | [**ChangesBefore**](ChangesBefore.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesGroup.new(
  after: null,
  before: null
)
```

