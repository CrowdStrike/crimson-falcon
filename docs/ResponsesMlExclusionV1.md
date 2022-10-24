# Falcon::ResponsesMlExclusionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_globally** | **Boolean** |  |  |
| **created_by** | **String** |  |  |
| **created_on** | **Time** |  |  |
| **excluded_from** | **Array&lt;String&gt;** |  | [optional] |
| **groups** | [**Array&lt;ResponsesHostGroupV1&gt;**](ResponsesHostGroupV1.md) |  |  |
| **id** | **String** |  |  |
| **last_modified** | **Time** |  |  |
| **modified_by** | **String** |  |  |
| **regexp_value** | **String** |  |  |
| **value** | **String** |  |  |
| **value_hash** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesMlExclusionV1.new(
  applied_globally: null,
  created_by: null,
  created_on: null,
  excluded_from: null,
  groups: null,
  id: null,
  last_modified: null,
  modified_by: null,
  regexp_value: null,
  value: null,
  value_hash: null
)
```

