# Falcon::DomainNewsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | Array of API Errors |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

