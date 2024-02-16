# Falcon::DefinitionsFlightControlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_cids** | **Boolean** | Flag to specify the workflow should apply to all child CIDs |  |
| **excluded_cids** | **Array&lt;String&gt;** | Child CIDs that are excluded from workflow propagation used in conjunction with the all_cids flag | [optional] |
| **include_parent_cid** | **Boolean** | Flag to specify whether the workflow should apply to the current (parent) CID, in addition to specified child CIDs |  |
| **selected_cids** | **Array&lt;String&gt;** | List of child CIDs that the workflow should apply to if not propagating to all CIDs | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsFlightControlRequest.new(
  all_cids: null,
  excluded_cids: null,
  include_parent_cid: null,
  selected_cids: null
)
```

