# Falcon::FalconxMalqueryReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FalconxMalqueryErrorV1&gt;**](FalconxMalqueryErrorV1.md) |  | [optional] |
| **input** | **String** |  | [optional] |
| **resources** | [**Array&lt;FalconxMalqueryResource&gt;**](FalconxMalqueryResource.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxMalqueryReportV1.new(
  errors: null,
  input: null,
  resources: null,
  type: null,
  verdict: null
)
```

