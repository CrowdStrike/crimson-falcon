# Falcon::ChangesPermissionsLin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | [**Array&lt;ChangesACL&gt;**](ChangesACL.md) |  | [optional] |
| **basic** | [**Array&lt;ChangesBasic&gt;**](ChangesBasic.md) |  | [optional] |
| **default_acl** | [**Array&lt;ChangesACL&gt;**](ChangesACL.md) |  | [optional] |
| **group** | [**ChangesGroup**](ChangesGroup.md) |  | [optional] |
| **owner** | [**ChangesOwner**](ChangesOwner.md) |  | [optional] |
| **security_info** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesPermissionsLin.new(
  acl: null,
  basic: null,
  default_acl: null,
  group: null,
  owner: null,
  security_info: null
)
```

