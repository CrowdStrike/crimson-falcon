# Falcon::DomainExternalAssetsAPITriagePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The asset triage action. | [optional] |
| **assigned_to** | **String** | The user assigned to triage the asset. | [optional] |
| **description** | **String** | The asset triage description. | [optional] |
| **status** | **String** | The asset triage status. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetsAPITriagePatch.new(
  action: null,
  assigned_to: null,
  description: null,
  status: null
)
```

