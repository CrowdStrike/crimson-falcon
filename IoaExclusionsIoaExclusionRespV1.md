# Falcon::IoaExclusionsIoaExclusionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_globally** | **Boolean** |  |  |
| **cl_regex** | **String** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **Time** |  |  |
| **description** | **String** |  |  |
| **detection_json** | **String** |  |  |
| **groups** | [**Array&lt;HostGroupsHostGroupV1&gt;**](HostGroupsHostGroupV1.md) |  |  |
| **id** | **String** |  |  |
| **ifn_regex** | **String** |  |  |
| **last_modified** | **Time** |  |  |
| **modified_by** | **String** |  |  |
| **name** | **String** |  |  |
| **pattern_id** | **String** |  |  |
| **pattern_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IoaExclusionsIoaExclusionRespV1.new(
  applied_globally: null,
  cl_regex: null,
  created_by: null,
  created_on: null,
  description: null,
  detection_json: null,
  groups: null,
  id: null,
  ifn_regex: null,
  last_modified: null,
  modified_by: null,
  name: null,
  pattern_id: null,
  pattern_name: null
)
```

