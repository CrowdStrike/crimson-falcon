# Falcon::ModelsDefinitionCreateRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **definition** | [**V2Definition**](V2Definition.md) |  |  |
| **enabled** | **Boolean** | Specifies whether a new definition should be enabled when created, always set to false if it&#39;s imported&#39; |  |
| **flight_control** | [**DefinitionsFlightControlRequest**](DefinitionsFlightControlRequest.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsDefinitionCreateRequestV2.new(
  definition: null,
  enabled: null,
  flight_control: null
)
```

