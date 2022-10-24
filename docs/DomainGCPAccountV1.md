# Falcon::DomainGCPAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **parent_id** | **String** | GCP ParentID. |  |
| **status** | **String** | Account registration status. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainGCPAccountV1.new(
  cid: null,
  parent_id: null,
  status: null
)
```

