# Falcon::FigapiThreat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family_name** | **String** | Indicates the malware/threat family the indicator has been associated with, name assigned internally by Crowdstrike | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiThreat.new(
  family_name: null
)
```

