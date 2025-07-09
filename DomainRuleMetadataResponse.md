# Falcon::DomainRuleMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIRuleMetadata&gt;**](DomainAPIRuleMetadata.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainRuleMetadataResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

