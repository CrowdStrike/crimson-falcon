# Falcon::MsaReplyMetaOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaReplyMetaOnly.new(
  errors: null,
  meta: null
)
```

