# Falcon::MsaEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | **Object** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

