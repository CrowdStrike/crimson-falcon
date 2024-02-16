# Falcon::ScheduledexclusionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ScheduledexclusionsScheduledExclusion&gt;**](ScheduledexclusionsScheduledExclusion.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ScheduledexclusionsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

