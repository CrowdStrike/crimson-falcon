# Falcon::ApiMsaIncidentQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;Object&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMsaIncidentQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

