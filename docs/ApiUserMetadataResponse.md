# Falcon::ApiUserMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

