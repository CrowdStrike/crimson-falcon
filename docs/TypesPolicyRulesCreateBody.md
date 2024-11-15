# Falcon::TypesPolicyRulesCreateBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **activity** | [**Activity**](Activity.md) |  | [optional] |
| **destination** | [**Destination**](Destination.md) |  | [optional] |
| **enabled** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **simulation_mode** | **Boolean** |  |  |
| **source_endpoint** | [**SourceEndpoint**](SourceEndpoint.md) |  | [optional] |
| **source_user** | [**SourceUser**](SourceUser.md) |  | [optional] |
| **trigger** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesPolicyRulesCreateBody.new(
  action: null,
  activity: null,
  destination: null,
  enabled: null,
  name: null,
  simulation_mode: null,
  source_endpoint: null,
  source_user: null,
  trigger: null
)
```

