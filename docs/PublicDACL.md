# Falcon::PublicDACL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changes_type** | **Integer** | Possible values: 0 - MODIFIED, 1 - NULL, 2 - EMPTY, 3 - SAME | [optional] |
| **entity_list** | [**Array&lt;PublicDACLEntity&gt;**](PublicDACLEntity.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicDACL.new(
  changes_type: null,
  entity_list: null
)
```

