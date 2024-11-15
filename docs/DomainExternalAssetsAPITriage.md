# Falcon::DomainExternalAssetsAPITriage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The asset triage action. | [optional] |
| **assigned_to** | **String** | The asset assigned to triage the host. | [optional] |
| **description** | **String** | The asset triage description. | [optional] |
| **status** | **String** | The asset triage status. | [optional] |
| **updated_by** | **String** | The user who last triaged the asset.&#39; | [optional] |
| **updated_timestamp** | **String** | The time at which the asset was last triaged. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetsAPITriage.new(
  action: null,
  assigned_to: null,
  description: null,
  status: null,
  updated_by: null,
  updated_timestamp: null
)
```

