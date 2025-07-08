# Falcon::GetDeviceInventory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ErrorF2e2dae6d0e945279a68e68afaee2d54&gt;**](ErrorF2e2dae6d0e945279a68e68afaee2d54.md) |  | [optional] |
| **meta** | [**MetaD43679bfb5f448afa0899baa948533d1**](MetaD43679bfb5f448afa0899baa948533d1.md) |  | [optional] |
| **resources** | [**Array&lt;Device3550eb212db1414995c297cdbfe5cc16&gt;**](Device3550eb212db1414995c297cdbfe5cc16.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetDeviceInventory.new(
  errors: null,
  meta: null,
  resources: null
)
```

