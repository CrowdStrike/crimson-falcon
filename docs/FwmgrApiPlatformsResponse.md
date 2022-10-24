# Falcon::FwmgrApiPlatformsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;FwmgrMsaAPIError&gt;**](FwmgrMsaAPIError.md) |  | [optional] |
| **meta** | [**FwmgrMsaMetaInfo**](FwmgrMsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FwmgrDomainPlatform&gt;**](FwmgrDomainPlatform.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiPlatformsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

