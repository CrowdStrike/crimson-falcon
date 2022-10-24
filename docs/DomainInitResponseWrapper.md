# Falcon::DomainInitResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainInitResponse&gt;**](DomainInitResponse.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainInitResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```

