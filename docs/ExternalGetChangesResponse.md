# Falcon::ExternalGetChangesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ExternalChange&gt;**](ExternalChange.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ExternalGetChangesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

