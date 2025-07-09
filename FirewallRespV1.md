# Falcon::FirewallRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FirewallPolicyV1&gt;**](FirewallPolicyV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FirewallRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

