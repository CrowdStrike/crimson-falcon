# Falcon::DomainDiscoverAPIHostTriage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The host triage action. | [optional] |
| **assigned_to** | **String** | The user assigned to triage the host. | [optional] |
| **description** | **String** | The host triage description. | [optional] |
| **status** | **String** | The host triage status. | [optional] |
| **updated_by** | **String** | The user who last triaged the host.&#39; | [optional] |
| **updated_timestamp** | **String** | The time at which the host was last triaged. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIHostTriage.new(
  action: null,
  assigned_to: null,
  description: null,
  status: null,
  updated_by: null,
  updated_timestamp: null
)
```

