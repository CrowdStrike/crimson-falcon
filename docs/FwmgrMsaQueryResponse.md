# Falcon::FwmgrMsaQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  |  |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrMsaQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

