# Falcon::DomainPublicIndicatorsV3Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainPublicIndicatorV3&gt;**](DomainPublicIndicatorV3.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainPublicIndicatorsV3Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

