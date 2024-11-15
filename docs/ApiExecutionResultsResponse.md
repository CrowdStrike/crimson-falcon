# Falcon::ApiExecutionResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ExecutionsExecutionResult&gt;**](ExecutionsExecutionResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExecutionResultsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

