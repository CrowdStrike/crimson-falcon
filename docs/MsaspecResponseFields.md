# Falcon::MsaspecResponseFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaspecResponseFields.new(
  errors: null,
  meta: null
)
```

