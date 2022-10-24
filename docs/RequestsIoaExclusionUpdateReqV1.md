# Falcon::RequestsIoaExclusionUpdateReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cl_regex** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **detection_json** | **String** |  |  |
| **groups** | **Array&lt;String&gt;** |  |  |
| **id** | **String** |  |  |
| **ifn_regex** | **String** |  |  |
| **name** | **String** |  |  |
| **pattern_id** | **String** |  |  |
| **pattern_name** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsIoaExclusionUpdateReqV1.new(
  cl_regex: null,
  comment: null,
  description: null,
  detection_json: null,
  groups: null,
  id: null,
  ifn_regex: null,
  name: null,
  pattern_id: null,
  pattern_name: null
)
```

