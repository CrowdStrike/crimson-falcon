# Falcon::RegistryassessmentExternalRegistryPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credential** | [**RegistryassessmentExternalCredPayload**](RegistryassessmentExternalCredPayload.md) |  |  |
| **type** | **String** |  |  |
| **url** | **String** |  |  |
| **url_uniqueness_key** | **String** |  | [optional] |
| **user_defined_alias** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistryassessmentExternalRegistryPayload.new(
  credential: null,
  type: null,
  url: null,
  url_uniqueness_key: null,
  user_defined_alias: null
)
```

