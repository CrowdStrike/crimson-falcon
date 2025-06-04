# Falcon::DomainAPIResponseNodesFindingsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainMsaMetaInfoWithSearchAfter**](DomainMsaMetaInfoWithSearchAfter.md) |  |  |
| **resources** | [**Array&lt;DomainAPICombinedNodesFindings&gt;**](DomainAPICombinedNodesFindings.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIResponseNodesFindingsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

