# Falcon::ScheduledexclusionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

