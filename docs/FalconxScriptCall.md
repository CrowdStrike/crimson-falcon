# Falcon::FalconxScriptCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cls_id** | **String** |  | [optional] |
| **dispatch_id** | **String** |  | [optional] |
| **matched_malicious_signatures** | **Array&lt;String&gt;** |  | [optional] |
| **parameters** | [**Array&lt;FalconxParameter&gt;**](FalconxParameter.md) |  | [optional] |
| **result** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxScriptCall.new(
  cls_id: null,
  dispatch_id: null,
  matched_malicious_signatures: null,
  parameters: null,
  result: null,
  status: null
)
```

