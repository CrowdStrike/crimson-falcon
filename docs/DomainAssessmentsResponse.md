# Falcon::DomainAssessmentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**DomainMetaInfo**](DomainMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainSignalProperties&gt;**](DomainSignalProperties.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAssessmentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

