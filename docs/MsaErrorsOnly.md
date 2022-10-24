# Falcon::MsaErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaErrorsOnly.new(
  errors: null,
  meta: null
)
```

