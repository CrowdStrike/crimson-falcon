# Falcon::ApiWeeklyAverageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;EntitiesRollingAverage&gt;**](EntitiesRollingAverage.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiWeeklyAverageResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

