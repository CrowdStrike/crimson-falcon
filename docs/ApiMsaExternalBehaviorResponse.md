# Falcon::ApiMsaExternalBehaviorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainBehavior&gt;**](DomainBehavior.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMsaExternalBehaviorResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

