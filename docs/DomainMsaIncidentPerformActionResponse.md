# Falcon::DomainMsaIncidentPerformActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUpdateResults&gt;**](DomainUpdateResults.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMsaIncidentPerformActionResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

