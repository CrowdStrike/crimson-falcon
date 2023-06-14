# Falcon::FalconxStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **executed** | **Boolean** |  | [optional] |
| **file_name** | **String** |  | [optional] |
| **human_keywords** | **String** |  | [optional] |
| **instructions_artifact_id** | **String** |  | [optional] |
| **matched_signatures** | [**Array&lt;FalconxMatchedSignature&gt;**](FalconxMatchedSignature.md) |  | [optional] |
| **uid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxStream.new(
  executed: null,
  file_name: null,
  human_keywords: null,
  instructions_artifact_id: null,
  matched_signatures: null,
  uid: null
)
```

