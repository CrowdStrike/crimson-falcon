# Falcon::DomainAPIResponseImagesFindingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainMsaMetaInfoWithSearchAfter**](DomainMsaMetaInfoWithSearchAfter.md) |  |  |
| **resources** | [**Array&lt;DomainAPICombinedImagesFindings&gt;**](DomainAPICombinedImagesFindings.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIResponseImagesFindingsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

