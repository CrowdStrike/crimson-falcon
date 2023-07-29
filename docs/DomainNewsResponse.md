# Falcon::DomainNewsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainNewsDocument&gt;**](DomainNewsDocument.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainNewsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

