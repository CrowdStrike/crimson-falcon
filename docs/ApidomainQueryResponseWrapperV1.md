# Falcon::ApidomainQueryResponseWrapperV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApidomainQueryResponseV1&gt;**](ApidomainQueryResponseV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApidomainQueryResponseWrapperV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

