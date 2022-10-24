# Falcon::DetectsParentDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_cmdline** | **String** |  |  |
| **parent_md5** | **String** |  |  |
| **parent_process_graph_id** | **String** |  |  |
| **parent_sha256** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectsParentDetails.new(
  parent_cmdline: null,
  parent_md5: null,
  parent_process_graph_id: null,
  parent_sha256: null
)
```

