# Falcon::ApiExecutionResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

