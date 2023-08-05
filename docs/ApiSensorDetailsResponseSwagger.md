# Falcon::ApiSensorDetailsResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

