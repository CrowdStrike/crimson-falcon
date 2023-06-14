# Falcon::PublicPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dacl** | [**PublicDACL**](PublicDACL.md) |  | [optional] |
| **group** | [**PublicGroup**](PublicGroup.md) |  | [optional] |
| **owner** | [**PublicOwner**](PublicOwner.md) |  | [optional] |
| **security_info** | **Integer** | Possible values: 0 - OWNER, 1 - GROUP, 2 - DACL, 3 - SACL | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicPermissions.new(
  dacl: null,
  group: null,
  owner: null,
  security_info: null
)
```

