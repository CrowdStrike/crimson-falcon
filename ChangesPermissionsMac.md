# Falcon::ChangesPermissionsMac

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | **Boolean** |  | [optional] |
| **basic** | [**Array&lt;ChangesBasic&gt;**](ChangesBasic.md) |  | [optional] |
| **common_attributes** | **Array&lt;String&gt;** |  | [optional] |
| **group** | [**ChangesGroup**](ChangesGroup.md) |  | [optional] |
| **owner** | [**ChangesOwner**](ChangesOwner.md) |  | [optional] |
| **security_info** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesPermissionsMac.new(
  acl: null,
  basic: null,
  common_attributes: null,
  group: null,
  owner: null,
  security_info: null
)
```

