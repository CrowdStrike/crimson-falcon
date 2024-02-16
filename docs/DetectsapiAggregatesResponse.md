# Falcon::DetectsapiAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DetectsapiAggregationResult&gt;**](DetectsapiAggregationResult.md) | collection of aggregate query results |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

