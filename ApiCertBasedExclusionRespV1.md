# Falcon::ApiCertBasedExclusionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiCertBasedExclusionV1&gt;**](ApiCertBasedExclusionV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCertBasedExclusionRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

