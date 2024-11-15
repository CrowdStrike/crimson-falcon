# Falcon::DomainMsaExternalBehaviorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

