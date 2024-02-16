# Falcon::ModelsDefinitionUpdateRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition** | [**V2Definition**](V2Definition.md) |  |  |
| **change_log** | **String** | Optional user provided description to outline the changes made as part of the update. Maximum of 500 characters. | [optional] |
| **enabled** | **Boolean** | Specifies whether a new definition should be enabled when created, always set to false if it&#39;s imported&#39; |  |
| **flight_control** | [**DefinitionsFlightControlRequest**](DefinitionsFlightControlRequest.md) |  | [optional] |
| **id** | **String** | Used to identify documents across versions |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsDefinitionUpdateRequestV2.new(
  definition: null,
  change_log: null,
  enabled: null,
  flight_control: null,
  id: null
)
```

