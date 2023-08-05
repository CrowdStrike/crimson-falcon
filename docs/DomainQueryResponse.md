# Falcon::DomainQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**DomainMsaMetaInfo**](DomainMsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

