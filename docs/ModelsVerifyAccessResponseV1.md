# Falcon::ModelsVerifyAccessResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAccountAccessResult&gt;**](DomainAccountAccessResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsVerifyAccessResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

