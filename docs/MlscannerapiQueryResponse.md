# Falcon::MlscannerapiQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MlscannerapiMetaInfo**](MlscannerapiMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MlscannerapiQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

