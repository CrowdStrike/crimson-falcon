# Falcon::DomainQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | Array of API Errors |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** | Array of string IDs that matches the query request |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

