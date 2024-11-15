# Falcon::ApiUserMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserMetadata&gt;**](DomainUserMetadata.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiUserMetadataResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

