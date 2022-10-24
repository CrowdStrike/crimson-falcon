# Falcon::DomainAssessmentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainSignalProperties&gt;**](DomainSignalProperties.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAssessmentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

