# Falcon::DomainErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainErrorsOnly.new(
  errors: null,
  meta: null
)
```

