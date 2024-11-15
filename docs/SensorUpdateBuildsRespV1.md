# Falcon::SensorUpdateBuildsRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;SensorUpdateBuildRespV1&gt;**](SensorUpdateBuildRespV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateBuildsRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

