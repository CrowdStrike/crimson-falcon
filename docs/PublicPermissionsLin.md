# Falcon::PublicPermissionsLin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | [**Array&lt;PublicACL&gt;**](PublicACL.md) |  | [optional] |
| **basic** | [**Array&lt;PublicBasic&gt;**](PublicBasic.md) |  | [optional] |
| **default_acl** | [**Array&lt;PublicACL&gt;**](PublicACL.md) |  | [optional] |
| **group** | [**PublicGroup**](PublicGroup.md) |  | [optional] |
| **owner** | [**PublicOwner**](PublicOwner.md) |  | [optional] |
| **security_info** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicPermissionsLin.new(
  acl: null,
  basic: null,
  default_acl: null,
  group: null,
  owner: null,
  security_info: null
)
```

