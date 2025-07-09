# Falcon::GetAffected

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error20dfebe4526641bd81749e954da7890e&gt;**](Error20dfebe4526641bd81749e954da7890e.md) |  | [optional] |
| **meta** | [**Meta17335150dd1a4934a3a031a7b41e650b**](Meta17335150dd1a4934a3a031a7b41e650b.md) |  | [optional] |
| **resources** | [**Array&lt;AffectedEntity9f6cb0be3b91460090c751db2c883b7c&gt;**](AffectedEntity9f6cb0be3b91460090c751db2c883b7c.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetAffected.new(
  errors: null,
  meta: null,
  resources: null
)
```

