# Falcon::DomainMsaExternalBehaviorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainBehavior&gt;**](DomainBehavior.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaExternalBehaviorResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

