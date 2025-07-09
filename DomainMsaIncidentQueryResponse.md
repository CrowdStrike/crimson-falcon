# Falcon::DomainMsaIncidentQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;Object&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaIncidentQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

