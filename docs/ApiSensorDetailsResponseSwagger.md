# Falcon::ApiSensorDetailsResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;InternalSensorStatus&gt;**](InternalSensorStatus.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiSensorDetailsResponseSwagger.new(
  errors: null,
  meta: null,
  resources: null
)
```

