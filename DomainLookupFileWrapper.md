# Falcon::DomainLookupFileWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainLookupFile&gt;**](DomainLookupFile.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainLookupFileWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```

