# Falcon::SvExclusionsSVExclusionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_globally** | **Boolean** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **Time** |  |  |
| **groups** | [**Array&lt;HostGroupsHostGroupV1&gt;**](HostGroupsHostGroupV1.md) |  |  |
| **id** | **String** |  |  |
| **is_descendant_process** | **Boolean** |  | [optional] |
| **last_modified** | **Time** |  |  |
| **modified_by** | **String** |  |  |
| **regexp_value** | **String** |  |  |
| **value** | **String** |  |  |
| **value_hash** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SvExclusionsSVExclusionV1.new(
  applied_globally: null,
  created_by: null,
  created_on: null,
  groups: null,
  id: null,
  is_descendant_process: null,
  last_modified: null,
  modified_by: null,
  regexp_value: null,
  value: null,
  value_hash: null
)
```

