# Falcon::ChangesPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dacl** | [**ChangesDACL**](ChangesDACL.md) |  | [optional] |
| **group** | [**ChangesGroup**](ChangesGroup.md) |  | [optional] |
| **owner** | [**ChangesOwner**](ChangesOwner.md) |  | [optional] |
| **security_info** | **Integer** | Possible values: 0 - OWNER, 1 - GROUP, 2 - DACL, 3 - SACL | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesPermissions.new(
  dacl: null,
  group: null,
  owner: null,
  security_info: null
)
```

