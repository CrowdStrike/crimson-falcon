# Falcon::DomainBatchGetCmdStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Hash&lt;String, ModelFile&gt;**](ModelFile.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchGetCmdStatusResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

