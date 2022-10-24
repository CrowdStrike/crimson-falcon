# Falcon::ExternalHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_version** | **String** |  | [optional] |
| **containment_status** | **String** |  | [optional] |
| **external_ip** | **String** |  | [optional] |
| **groups** | [**Array&lt;ExternalHostGroup&gt;**](ExternalHostGroup.md) |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ExternalHost.new(
  agent_version: null,
  containment_status: null,
  external_ip: null,
  groups: null,
  local_ip: null,
  name: null,
  os_version: null
)
```

